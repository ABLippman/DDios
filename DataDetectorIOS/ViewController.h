//
//  ViewController.h
//  DataDetectorIOS
//
//  Created by lip on 10/17/20.
//  Copyright © 2020 Andrew Lippman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//  @property (weak, nonatomic) IBOutlet UIWebView *wkView;  // IOS 11
@property (weak, nonatomic) IBOutlet UIWebView *wkView;
@property (unsafe_unretained) IBOutlet UITextView *testView;
@property (weak, nonatomic) IBOutlet UITextView *behindView;

- (IBAction)makeEditable:(id)sender;
- (IBAction)makeNotEditable:(id)sender;
- (IBAction)loadLocal:(id)sender;
- (IBAction)loadML:(id)sender;

@end

