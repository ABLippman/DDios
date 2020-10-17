//
//  AppDelegate.h
//  DataDetectorIOS
//
//  Created by lip on 10/17/20.
//  Copyright © 2020 Andrew Lippman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

