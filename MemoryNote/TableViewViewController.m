//
//  TableViewViewController.m
//  MemoryNote
//
//  Created by macOS on 11/12/18.
//  Copyright © 2018 macOS. All rights reserved.
//

#import "TableViewViewController.h"
#import "InputViewController.h"
#import "DisplayViewController.h"

@interface TableViewViewController ()

@end

@implementation TableViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
   
    return [_dates count] ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newCellIdentifier"];
    cell.textLabel.text = _dates[indexPath.row];
    cell.detailTextLabel.text=_notes[indexPath.row];
    return cell;
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier
        isEqualToString:@"cellNewidentifier"]){
        InputViewController *table = segue.destinationViewController;
        //        table.dateString= _dateString;
        //        table.noteString = _noteString;
        table.dates = _dates;
        table.notes = _notes;
        
        NSLog(@"Going to tableview with string : %@",_dateString);
        
        
    }
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //_indexNumber = (int)indexPath.row;
    
    
    UIStoryboard *mainstoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
     DisplayViewController *displayViewController = [mainstoryboard instantiateViewControllerWithIdentifier:@"DisplayStoryBoard"];
    NSLog(@"The string is: %@",_dates[indexPath.row]);
    
    displayViewController.dateText = _dates[indexPath.row];
    displayViewController.noteText = _notes[indexPath.row];
    displayViewController.dates = _dates;
    displayViewController.notes = _notes;
    displayViewController.indexss = (int) indexPath.row ;
    
    
    [self.navigationController pushViewController:displayViewController animated:YES];
    
   /* UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Deleting note?" message:@"Are you sure?" delegate:self cancelButtonTitle:@"Close" otherButtonTitles:@"Yes", nil];
    
    UITextView *someTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 35, 250, 100)];
    someTextView.backgroundColor = [UIColor clearColor];
    someTextView.textColor = [UIColor whiteColor];
    someTextView.editable = NO;
    someTextView.font = [UIFont systemFontOfSize:15];
    someTextView.text = @"Are u sure?";
    [alert addSubview:someTextView];
    [alert show];*/
    
}

/*-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (buttonIndex == 1) {// 1st Other Button
        NSLog(@"DELETED");
        if([_dates count] > 0){
            [_dates removeObjectAtIndex:_TableViewOutlet.indexPathForSelectedRow.row];
            [_notes removeObjectAtIndex:_TableViewOutlet.indexPathForSelectedRow.row];
            [_TableViewOutlet reloadData];
    
        }
    
    }
}*/



@end
