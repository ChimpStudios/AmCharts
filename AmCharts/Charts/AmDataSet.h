// 
//  AmDataSet.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmDataSet : NSObject

/**
 Category field name in your dataProvider.
 */
@property(strong) NSString * categoryField;

/**
 Color of the data set. One of colors from AmStockChart.colors array will be used if not set.
 */
@property(strong) NSString * color;

/**
 Whether this data set is selected for comparing. If you change this property, you should call stockChart.validateData() method in order the changes to be applied.
 */
@property(strong) NSNumber * compared;

/**
 Data provider of the data set.
 */
@property(strong) NSMutableArray * dataProvider;

/**
 Array of field mappings. Field mapping is an object with fromField and toField properties. fromField is a name of your value field in dataProvider. toField might be chosen freely, it will be used to set value/open/close/high/low fields for the StockGraph. Example: {fromField:"val1", toField:"value"}.
 */
@property(strong) NSMutableArray * fieldMappings;

/**
 Specifies whether this data set should be visible in "compare to" list.
 */
@property(strong) NSNumber * showInCompare;

/**
 Specifies whether this data set should be visible in "select" dropdown.
 */
@property(strong) NSNumber * showInSelect;

/**
 Array of StockEvent objects.
 */
@property(strong) NSMutableArray * stockEvents;

/**
 DataSet title.
 */
@property(strong) NSString * title;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end
