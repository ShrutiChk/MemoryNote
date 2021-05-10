//
//  DisplayViewController.h
//  MemoryNote
//
//  Created by macOS on 11/12/18.
//  Copyright © 2018 macOS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DisplayViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *dateLabelOutlet;
@property (weak, nonatomic) IBOutlet UITextView *NoteTextViewOutlet;
@property(weak,nonatomic)NSString *dateText;
@property(weak,nonatomic)NSString *noteText;
@property(strong,nonatomic) NSMutableArray *dates;
@property(strong,nonatomic) NSMutableArray *notes;
@property int indexss;

- (IBAction)deleteButtonPressed:(id)sender;
- (IBAction)favButtonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *favLabelOutlet;
- (IBAction)shareButtonPressed:(id)sender;


@end

NS_ASSUME_NONNULL_END
