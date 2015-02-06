//
//  AppDelegate.h
//  AmChartsLibrary
//
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class AmChartView;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet AmChartView *chartView, *chartVw2, *chartVw3, *chartVw4;
@end
