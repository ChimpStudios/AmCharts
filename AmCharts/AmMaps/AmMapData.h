// 
//  AmMapData.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmMapObject.h"


@interface AmMapData : AmMapObject

/**
 Array of MapArea objects.
 @version 3.4.8
 */
@property(strong) NSMutableArray * areas;

/**
 Latitude of bottom-most point of a map. All maps in amMap package have this information hardcoded in SVG file.
 @version 3.4.8
 */
@property(strong) NSNumber * bottomLatitude;

/**
 If you set this to true, all areas available in SVG map will be created automatically.
 @version 3.4.8
 */
@property(assign) BOOL getAreasFromMap;

/**
 Longitude of left-most point of a map. All maps in amMap package have this information hardcoded in SVG file.
 @version 3.4.8
 */
@property(strong) NSNumber * leftLongitude;

/**
 Name of a map. Instead of using mapURL or mapVar you can use name of the map, usualy the same as file name of the map, for example: map = "worldLow".
 @version 3.4.8
 */
@property(strong) NSString * map;

/**
 Path to map SVG file. Use it if you don't include map as .js file. Loading SVG is a bit risky, as some browsers might not do this correctly - it depends on server configuration. We recommend to include maps as .js files. Application won't load svg files from hard drive, so you can test this only on web server.
 @version 3.4.8
 */
@property(strong) NSString * mapURL;

/**
 In case you included map as js file, you should specify variable name of a map. Open your map.js file and copy variable name, for example: AmCharts.maps.worldLow
 @version 3.4.8
 */
@property(strong) NSString * mapVar;

/**
 Projection of the map. Projection can be also set in SVG map - all svg maps which are distributed with amMap have projection set in SVG. AmMap supports Mercator projection and simple XY projection.
 @version 3.4.8
 */
@property(strong) NSString * projection;

/**
 Longitude of right-most point of a map. All maps in amMap package have this information hardcoded in SVG file.
 @version 3.4.8
 */
@property(strong) NSNumber * rightLongitude;

/**
 Latitude of top-most point of a map. All maps in amMap package have this information hardcoded in SVG file.
 @version 3.4.8
 */
@property(strong) NSNumber * topLatitude;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end