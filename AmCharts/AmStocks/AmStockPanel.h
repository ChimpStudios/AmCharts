// 
//  AmStockPanel.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmSerialChart.h"

@class AmValueAxis;
@class AmStockLegend;

@interface AmStockPanel : AmSerialChart

/**
 Specifies whether x button will be displayed near the panel. This button allows turning panel off.
 */
@property(assign) NSNumber * allowTurningOff;

/**
 If true, drawing icons will be displayed in top-right corner.
 */
@property(assign) NSNumber * drawingIconsEnabled;

/**
 Specifies on which value axis user can draw trend lines. Set drawingIconsEnabled to true if you want drawing icons to be visible. First value axis will be used if not set here. You can use a reference to the value axis object or id of value axis.
 */
@property(strong) AmValueAxis * drawOnAxis;

/**
 Specifies if all trend lines should be erased when erase button is clicked. If false, trend lines can be erased one by one.
 */
@property(assign) NSNumber * eraseAll;

/**
 Custom property that does not work with Vanilla AmCharts library.  Use instead of percentHeight to assign a panel a fixed height in pixels.
 */
@property(assign) NSNumber * fixedHeight;

/**
 Size of trend line drawing icons. If you change this size, you should update icon images if you want them to look properly.
 */
@property(strong) NSNumber * iconSize;

/**
 Relative height of panel. Possible values 0 - 100.
 */
@property(strong) NSNumber * percentHeight;

/**
 Specifies when values should be recalculated to percents. Possible values are: "never", "always", "whenComparing".
 */
@property(strong) NSString * recalculateToPercents;

/**
 Specifies whether this panel will show category axis.
 */
@property(assign) NSNumber * showCategoryAxis;

/**
 Specifies if compared graphs should be shown above or behind the main graph.
 */
@property(assign) NSNumber * showComparedOnTop;

/**
 Array of stock graphs.
 */
@property(strong) NSMutableArray * stockGraphs;

/**
 Stock chart legend.
 */
@property(strong) AmStockLegend * stockLegend;

/**
 A title of a panel. Note, StockLegend should be added in order title to be displayed.
 */
@property(strong) NSString * title;

/**
 Trend line opacity.
 */
@property(strong) NSNumber * trendLineAlpha;

/**
 Trend line color.
 */
@property(strong) NSString * trendLineColor;

/**
 Trend line dash length.
 */
@property(strong) NSNumber * trendLineDashLength;

/**
 Trend line thickness.
 */
@property(strong) NSNumber * trendLineThickness;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end