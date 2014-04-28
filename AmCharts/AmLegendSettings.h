// 
//  AmLegendSettings.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>


@interface AmLegendSettings : NSObject

/**
 Alignment of legend entries. Possible values are: "left", "right" and "center".
 @version 3.4.8
 */
@property(strong) NSString * align;

/**
 Specifies if each legend entry should take the same space as the longest legend entry. 
 @version 3.4.8
 */
@property(assign) BOOL equalWidths;

/**
 Horizontal space between legend item and left/right border.
 @version 3.4.8
 */
@property(strong) NSNumber * horizontalGap;

/**
 The text which will be displayed in the legend. Tag [[title]] will be replaced with the title of the graph.
 @version 3.4.8
 */
@property(strong) NSString * labelText;

/**
 Space below the last row of the legend, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * marginBottom;

/**
 Space above the first row of the legend, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * marginTop;

/**
 Opacity of marker border.
 @version 3.4.8
 */
@property(strong) NSNumber * markerBorderAlpha;

/**
 Marker border color.
 @version 3.4.8
 */
@property(strong) NSString * markerBorderColor;

/**
 Thickness of the legend border.
 @version 3.4.8
 */
@property(strong) NSNumber * markerBorderThickness;

/**
 The color of the disabled marker (when the graph is hidden).
 @version 3.4.8
 */
@property(strong) NSString * markerDisabledColor;

/**
 Space between legend marker and legend text, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * markerLabelGap;

/**
 Size of the legend marker (key).
 @version 3.4.8
 */
@property(strong) NSNumber * markerSize;

/**
 Shape of the legend marker (key). Possible values are: square, circle, diamond, triangleUp, triangleDown, triangleLeft, triangleDown, bubble, none
 @version 3.4.8
 */
@property(strong) NSString * markerType;

/**
 Specifies whether legend entries should be placed in reversed order.
 @version 3.4.8
 */
@property(assign) BOOL reversedOrder;

/**
 Legend item text color on roll-over.
 @version 3.4.8
 */
@property(strong) NSString * rollOverColor;

/**
 When you roll-over the legend entry, all other graphs can reduce their opacity, so that the graph you rolled-over would be distinguished. This property specifies the opacity of the graphs.
 @version 3.4.8
 */
@property(strong) NSNumber * rollOverGraphAlpha;

/**
 Whether showing/hiding of graphs by clicking on the legend marker is enabled or not.
 @version 3.4.8
 */
@property(assign) BOOL switchable;

/**
 Legend switch color.
 @version 3.4.8
 */
@property(strong) NSString * switchColor;

/**
 Legend switch type (in case the legend is switchable). Possible values are: "x" and "v".
 @version 3.4.8
 */
@property(strong) NSString * switchType;

/**
 Specifies whether the legend text is clickable or not. Clicking on legend text can show/hide value balloons if they are enabled.
 @version 3.4.8
 */
@property(assign) BOOL textClickEnabled;

/**
 Specifies if legend labels should be use same color as corresponding markers.
 @version 3.4.8
 */
@property(assign) BOOL useMarkerColorForLabels;

/**
 The text which will be displayed in the value portion of the legend when graph is comparable and at least one dataSet is selected for comparing. You can use tags like [[value]], [[open]], [[high]], [[low]], [[close]], [[percents]], [[description]].
 @version 3.4.8
 */
@property(strong) NSString * valueTextComparing;

/**
 The text which will be displayed in the value portion of the legend. You can use tags like [[value]], [[open]], [[high]], [[low]], [[close]], [[percents]], [[description]].
 @version 3.4.8
 */
@property(strong) NSString * valueTextRegular;

/**
 Width of the value text. Increase this value if your values do not fit in the allocated space.
 @version 3.4.8
 */
@property(strong) NSNumber * valueWidth;

/**
 Vertical space between legend items, in pixels.
 @version 3.4.8
 */
@property(strong) NSNumber * verticalGap;

@end