//
//  TableViewViewController.h
//  MemoryNote
//
//  Created by macOS on 11/12/18.
//  Copyright © 2018 macOS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIApplicationDelegate>
@property (weak, nonatomic) IBOutlet UITableView *TableViewOutlet;
@property(strong,nonatomic) NSMutableArray *dates;
@property(strong,nonatomic) NSMutableArray *notes;
@property(weak,nonatomic) NSString *dateString;
@property(weak,nonatomic) NSString *noteString;

@end

NS_ASSUME_NONNULL_END
