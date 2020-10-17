//
//  ViewController.m
//  DataDetectorIOS
//
//  Created by lip on 10/17/20.
//  Copyright © 2020 Andrew Lippman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //  Modified 10/11 to add UIWebView and set project for IOS 9.2 where UIWebView
    //  is valid and works.  Note that no code is needed in the app for
    //  data detectors.  They are a property of the UIWebView and are enabled in
    //  IB for the view.
    //
    //  Later work:  Update for WKWebView.  Does not work now because of project
    //  setup conflict.  Change development target.
    //
    //  Note that the View is where one specifies what detectors will run
    //  Can't seem to override this in the code
    
    //  The following line is not necessary, see above, done in IB
    
    /**************************************************
     *
     *  In this version, both DD and Editable are set in IB for the View.
     *  You have to look at the storyboard to see this
     *  Also, note there is a compiler warning that the above is conflict
     *  Look at the warnings!
     **************************************************/
    
    //    [_testView setDataDetectorTypes:UIDataDetectorTypeAll];  //  Linkfies URLs, otherwise phone only
    [_testView setText:@"This it the initial text, 6179011065."];
    [self makeNotEditable:self];
    [_behindView setText:@"Old Web View here"];
}

- (IBAction)makeEditable:(id)sender {
    //    [_testView setEditable:TRUE];  // either this or method call below works
    _testView.editable = YES;
    if ([_testView isEditable])  //  Just test to be sure it actually responded to the command
    {printf("It is editable...\n");}
    else {printf("It is NOT editable...\n");}
    [_testView setBackgroundColor:[UIColor colorWithRed:0. green:(CGFloat)1. blue:0. alpha:.5]];
}

- (IBAction)makeNotEditable:(id)sender {
    //   [_testView setEditable:FALSE];  // either this or method call below works
    _testView.editable = NO;
    if ([_testView isEditable])  //  Just test to be sure it actually responded to the command
    {printf("It is editable...\n");}
    else {printf("It is NOT editable...\n");}
    [_testView setBackgroundColor:[UIColor colorWithRed:1. green:(CGFloat)0. blue:0. alpha:.5]];
    
}

- (IBAction)loadLocal:(id)sender {
    NSString *localFile = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"html"];
    NSLog(@"Local filename is:  %@",localFile);
    NSURL *localURL = [NSURL fileURLWithPath:localFile];
    [self.wkView loadRequest:[NSURLRequest requestWithURL:localURL]];
    
}

- (IBAction)loadML:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://media.mit.edu/"];
    [self.wkView loadRequest:[NSURLRequest requestWithURL:url]];
    
}

@end
