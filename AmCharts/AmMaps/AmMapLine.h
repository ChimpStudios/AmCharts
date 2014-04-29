// 
//  AmMapLine.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmMapObject.h"


@interface AmMapLine : AmMapObject

/**
 Arrow position. Allowed values are: start, end, middle, both, none.
 */
@property(strong) NSString * arrow;

/**
 Opacity of an arrow.
 */
@property(strong) NSNumber * arrowAlpha;

/**
 Color of an arrow.
 */
@property(strong) NSString * arrowColor;

/**
 Size of an arrow.
 */
@property(strong) NSNumber * arrowSize;

/**
 Dash length.
 */
@property(strong) NSNumber * dashLength;

/**
 Array of latitudes. If you set array of latitudes and longitudes, line move with the map. In case you want the line to be in a fixed position, set x and y arrays instead.
 */
@property(strong) NSMutableArray * latitudes;

/**
 Array of longitudes. If you set array of latitudes and longitudes, line move with the map. In case you want the line to be in a fixed position, set x and y arrays instead.
 */
@property(strong) NSMutableArray * longitudes;

/**
 Line thickness.
 */
@property(strong) NSNumber * thickness;

/**
 Array of x coordinates. If you set array of x and y coordinates, line will not move with the map. In case you want the line to be bounded to the map, set latitudes and longitudes instead.
 */
@property(strong) NSMutableArray * x;

/**
 Array of y coordinates. If you set array of x and y coordinates, line will not move with the map. In case you want the line to be bounded to the map, set latitudes and longitudes instead.
 */
@property(strong) NSMutableArray * y;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end