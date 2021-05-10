//
//  InputViewController.h
//  MemoryNote
//
//  Created by macOS on 11/12/18.
//  Copyright © 2018 macOS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *DateInputOutlet;
@property (weak, nonatomic) IBOutlet UITextView *NoteInputOutlet;
- (IBAction)saveButtonPressed:(id)sender;
@property(strong,nonatomic)NSString *dateString;
@property(strong,nonatomic)NSString *noteString;
@property(strong,nonatomic)NSMutableArray *dates;
@property(strong,nonatomic)NSMutableArray *notes;

@end

NS_ASSUME_NONNULL_END
