//
//  DisplayViewController.m
//  MemoryNote
//
//  Created by macOS on 11/12/18.
//  Copyright © 2018 macOS. All rights reserved.
//

#import "DisplayViewController.h"
#import "TableViewViewController.h"

@interface DisplayViewController ()

@end

@implementation DisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _dateLabelOutlet.text = _dateText;
    _NoteTextViewOutlet.text = _noteText;
}

/*
#pragma mark - Navigation

 In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)favButtonPressed:(id)sender {
    _favLabelOutlet.text = @"Favourited";
}

- (void)deleteButtonPressed:(id)sender{
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Deleting note?" message:@"Are you sure?" delegate:self cancelButtonTitle:@"Close" otherButtonTitles:@"Yes", nil];
    
    UITextView *someTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 35, 250, 100)];
    someTextView.backgroundColor = [UIColor clearColor];
    someTextView.textColor = [UIColor whiteColor];
    someTextView.editable = NO;
    someTextView.font = [UIFont systemFontOfSize:15];
    someTextView.text = @"Are u sure?";
    [alert addSubview:someTextView];
    [alert show];
    
   /* [_dates removeObjectAtIndex: _indexss];
    [_notes removeObjectAtIndex:_indexss];
    _dateLabelOutlet.text = @" ";
    _NoteTextViewOutlet.text = @" ";
    
    UIStoryboard *mainstoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    TableViewViewController *tableViewController = [mainstoryboard instantiateViewControllerWithIdentifier:@"TableViewStoryBoard"];
    
    tableViewController.dates = _dates;
    tableViewController.notes = _notes;
    [tableViewController.TableViewOutlet reloadData];
    [self.navigationController pushViewController:tableViewController animated:YES];*/
  
}
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (buttonIndex == 1) {// 1st Other Button
        [_dates removeObjectAtIndex: _indexss];
        [_notes removeObjectAtIndex:_indexss];
        _dateLabelOutlet.text = @" ";
        _NoteTextViewOutlet.text = @" ";
        
        UIStoryboard *mainstoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        TableViewViewController *tableViewController = [mainstoryboard instantiateViewControllerWithIdentifier:@"TableViewStoryBoard"];
        
        tableViewController.dates = _dates;
        tableViewController.notes = _notes;
        [tableViewController.TableViewOutlet reloadData];
        [self.navigationController pushViewController:tableViewController animated:YES];
        
    }
}

- (IBAction)shareButtonPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"SHARE" message:@"Do you want to share?" delegate:self cancelButtonTitle:@"Close" otherButtonTitles:@"Yes", nil];
    UITextView *someTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 35, 250, 100)];
    someTextView.backgroundColor = [UIColor clearColor];
    someTextView.textColor = [UIColor whiteColor];
    someTextView.editable = NO;
    someTextView.font = [UIFont systemFontOfSize:15];
    someTextView.text = @"Are u sure?";
    [alert addSubview:someTextView];
    [alert show];
}
@end
