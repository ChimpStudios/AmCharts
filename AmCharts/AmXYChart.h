// 
//  AmXYChart.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmRectangularChart.h"


@interface AmXYChart : AmRectangularChart

/**
 Specifies if Scrollbar of X axis (horizontal) should be hidden.
 @version 3.4.8
 */
@property(assign) BOOL hideXScrollbar;

/**
 Specifies if Scrollbar of Y axis (vertical) should be hidden.
 @version 3.4.8
 */
@property(assign) BOOL hideYScrollbar;

/**
 Maximum zoom factor of the chart.
 @version 3.4.8
 */
@property(strong) NSNumber * maxZoomFactor;

@end