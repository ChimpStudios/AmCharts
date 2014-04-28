// 
//  AmStockLegend.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmLegend.h"


@interface AmStockLegend : AmLegend

/**
 The text which will be displayed in the value portion of the legend when user is not hovering above any data point and the data sets are compared. The tags should be made out of two parts - the name of a field (value / open / close / high / low) and the value of the period you want to be show - open / close / high / low / sum / average / count. For example: [[value.sum]] means that  sum of all data points of value field in the selected period will be displayed. In case you want to display percent values, you should add "percent" string in front of a tag, for example: [[percents.value.close]] means that last percent value of a period will be displayed.<br>

 @version 3.4.8
 */
@property(strong) NSString * periodValueTextComparing;

/**
 The text which will be displayed in the value portion of the legend when user is not hovering above any data point. The tags should be made out of two parts - the name of a field (value / open / close / high / low) and the value of the period you want to be show - open / close / high / low / sum / average / count. For example: [[value.sum]] means that  sum of all data points of value field in the selected period will be displayed.
 @version 3.4.8
 */
@property(strong) NSString * periodValueTextRegular;

/**
 The text which will be displayed in the value portion of the legend when graph is comparable and at least one dataSet is selected for comparing. You can use tags like [[value]], [[open]], [[high]], [[low]], [[close]], [[percents.value/open/close/low/high]], [[description]].
 @version 3.4.8
 */
@property(strong) NSString * valueTextComparing;

/**
 The text which will be displayed in the value portion of the legend. You can use tags like [[value]], [[open]], [[high]], [[low]], [[close]], [[percents]], [[description]].
 @version 3.4.8
 */
@property(strong) NSString * valueTextRegular;

@end