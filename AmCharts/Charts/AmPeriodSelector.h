// 
//  AmPeriodSelector.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmPeriodSelector : NSObject

/**
 Date format of date input fields. Check this page for possible codes. Note, only numeric date formats are allowed, so don't use MMM or MMMM month format.
 */
@property(strong) NSString * dateFormat;

/**
 Text displayed next to "from" date input field.
 */
@property(strong) NSString * fromText;

/**
 Specifies if period buttons with date range bigger than available data should be hidden.
 */
@property(assign) BOOL hideOutOfScopePeriods;

/**
 Specifies whether period selector displays "from" and "to" date input fields.
 */
@property(assign) BOOL inputFieldsEnabled;

/**
 Width of date input fields, in pixels. Works only if period selector is horizontal.
 */
@property(strong) NSNumber * inputFieldWidth;

/**
 Array of predefined period objects. Period object has 4 properties - period, count, label and selected. Possible period values are: "ss" - seconds, "mm" - minutes, "hh" - hours, "DD" - days, "MM" - months and "YYYY" - years. property "count" specifies how many periods this button will select. "label" will be displayed on a button and "selected" is a boolean which specifies if this button is selected when chart is initialized or not. Example: {period:"DD", count:10, label:"10 days", selected:false}.
 */
@property(strong) NSMutableArray * periods;

/**
 Text displayed next to predefined period buttons.
 */
@property(strong) NSString * periodsText;

/**
 Possible values: "right", "left", "top", "bottom".
 */
@property(strong) NSString * position;

/**
 Specifies whether predefined period buttons should select a period from  the beginning or the end of the data.
 */
@property(assign) BOOL selectFromStart;

/**
 Text displayed next to "to" date input field.
 */
@property(strong) NSString * toText;

/**
 Width of a period selector, when position is "left" or "right".
 */
@property(strong) NSNumber * width;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end