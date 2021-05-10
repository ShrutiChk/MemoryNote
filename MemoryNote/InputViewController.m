//
//  InputViewController.m
//  MemoryNote
//
//  Created by macOS on 11/12/18.
//  Copyright © 2018 macOS. All rights reserved.
//

#import "InputViewController.h"
#import "TableViewViewController.h"

@interface InputViewController ()
@end

@implementation InputViewController

static int count = -1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if(count < 0)
    {
        _dates =[[NSMutableArray alloc]init];
        _notes = [[NSMutableArray alloc]init];
        NSLog(@"%d",count);
        count = 10;
    }
    
   
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier
        isEqualToString:@"TableViewStoryBoard"]){
        TableViewViewController *table = segue.destinationViewController;
//        table.dateString= _dateString;
//        table.noteString = _noteString;
        [_dates addObject:_DateInputOutlet.text];
        [_notes addObject:_NoteInputOutlet.text];
        table.dates = _dates;
        table.notes = _notes;
        
        NSLog(@"Going to tableview with string : %@",_dateString);
        //[table.TableViewOutlet reloadData];
        
    }
}


- (IBAction)saveButtonPressed:(id)sender {
//    _dateString = _DateInputOutlet.text;
//    _noteString = _NoteInputOutlet.text;
//    NSLog(@"Saving string: %@ ",_dateString);
    
   
    
}
@end
