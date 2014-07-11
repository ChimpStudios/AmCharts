// 
//  AmExport.h
//  AmCharts
// 
//  Created by Andrew on 7/10/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmExport : NSObject

/**
 Bottom position of export button. You might need to set top to undefined for this to work.
 */
@property(strong) NSString * bottom;

/**
 Opacity of a button.
 */
@property(strong) NSNumber * buttonAlpha;

/**
 Name of export button image.
 */
@property(strong) NSString * buttonIcon;

/**
 Roll-over color of button background.
 */
@property(strong) NSString * buttonRollOverColor;

/**
 Text, displayed in a tool-tip.
 */
@property(strong) NSString * buttonTitle;

/**
 Specifies if export of JPG should be enabled.
 */
@property(assign) BOOL exportJPG;

/**
 Specifies if export of PDF should be enabled.
 */
@property(assign) BOOL exportPDF;

/**
 Specifies if export of PNG should be enabled.
 */
@property(assign) BOOL exportPNG;

/**
 Specifies if export of SVG should be enabled.
 */
@property(assign) BOOL exportSVG;

/**
 Background color of a saved image
 */
@property(strong) NSString * imageBackgroundColor;

/**
 File name of a saved image.
 */
@property(strong) NSString * imageFileName;

/**
 Left position of export button. You might need to set right to undefined for this to work.
 */
@property(strong) NSString * left;

/**
 Right position of export button. You might need to set left to undefined for this to work.
 */
@property(strong) NSString * right;

/**
 Text roll-over color.
 */
@property(strong) NSString * textRollOverColor;

/**
 Top position of export button. You might need to set bottom to undefined for this to work.
 */
@property(strong) NSString * top;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end