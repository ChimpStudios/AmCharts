// 
//  AmMapObject.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import <Foundation/Foundation.h>

@class AmMapObject;

@interface AmMapObject : NSObject

/**
 Opacity of map object.
 */
@property(strong) NSNumber * alpha;

/**
 Text which is displayed in a roll-over balloon. You can use the following tags: [[title]], [[description]], [[value]] and [[percent]].
 */
@property(strong) NSString * balloonText;

/**
 Color of MapObject
 */
@property(strong) NSString * color;

/**
 A custom data holder.
 */
@property(strong) NSString * customData;

/**
 Description of MapObject. Description is displayed in DescriptionWindow (when user clicks on an object). It can also be displayed in a roll-over balloon. DescriptionWindow can display HTML formatted code.
 */
@property(strong) NSString * amDescription;

/**
 Height of description window.
 */
@property(strong) NSNumber * descriptionWindowHeight;

/**
 Width of description window.
 */
@property(strong) NSNumber * descriptionWindowWidth;

/**
 X position of description window. In case it is not set, window will be placed near the mouse pointer.
 */
@property(strong) NSNumber * descriptionWindowX;

/**
 X position of description window. In case it is not set, window will be placed near the mouse pointer.
 */
@property(strong) NSNumber * descriptionWindowY;

/**
 Specifies if the object should change the size together with the map or keep fixed size. This applies for objects with lat and long properties set, as they move together with the map.
 */
@property(assign) BOOL fixedSize;

/**
 Id of a group. You can group MapObjects to groups. Grouped objects will change color together with this object when you roll-over it or click it. You can show/hide them using showGroup(groupId) and hideGroup(groupId) methods of AmMap class. You can also use map.zoomToGroup(groupId) methot to zoom-in the map so that all grouped objects are visible.
 */
@property(strong) NSString * groupId;

/**
 Unique id of the object. In case it's area, id should match svg path id from SVG file. <br>
    Id can be used with linkToObject property of MapObject - you can link one object to another using it.
 */
@property(strong) NSString * uid;

/**
 Array of MapImage objects.
 */
@property(strong) NSMutableArray * images;

/**
 Array of MapLine objects.
 */
@property(strong) NSMutableArray * lines;

/**
 linkToObject can be a reference or id of some other MapObject - MapArea, MapImage or MapLine. It can also be a reference to another DataSet (but not an id). Then user clicks on this object the application would zoom-in to this objects' zoom position (if it is set) and then act as if the linkToObject  was clicked. This can also be used for selecting the object you want to be selected right after the map is initialized, as DataSet extends MapObject class, you can specify linkToObject for your DataSet. When you link to another DataSet, you can build drill-down maps.
 */
@property(strong) AmMapObject * linkToObject;

/**
 Set this to false to make the object be irresponsive to any interactions like hover or click events.
 */
@property(assign) BOOL mouseEnabled;

/**
 Read-only, type of the Object. Possible values are: "DataSet", "MapImage", "MapLine" and "MapArea".
 */
@property(strong) NSString * objectType;

/**
 Specifies if current zoom values should be passed to target MapObject. Useful when building drill down maps.
 */
@property(assign) BOOL passZoomValuesToTarget;

/**
 Specifies if the MapObject and other objects of the same level should remain visible if it was clicked and it has children MapObjects.
 */
@property(assign) BOOL remainVisible;

/**
 Roll over color of of the object.
 */
@property(strong) NSString * rollOverColor;

/**
 Specifies if the object can be selected even if it is not clickable. Map object is clickable if zoom properties are set or it has description or has children objects. Sometimes even non of the listed conditions is met you might need it to be clickable. You should set this property to true in this case.
 */
@property(assign) BOOL selectable;

/**
 Color of an object when it is selected (somebody clicked on it).
 */
@property(strong) NSString * selectedColor;

/**
 Specifies if selectedColor should be applied to the object. AmMap can have only one selected item at a time, however there might be situations when multiple objects (areas, movies, lines) have to look like they are selected. By setting this property to true, you will be able to produce this result.
 */
@property(assign) BOOL showAsSelected;

/**
 Specifies if this object must be displayed in ObjectsList Title should be defined in order the object to appear there.
 */
@property(assign) BOOL showInList;

/**
 Title of a MapObject. It can be displayed in the roll-over balloon and in the header of description window. All areas in SVG maps distributed with amMap has country names (titles) hard coded in the SVG file.
 */
@property(strong) NSString * title;

/**
 Url of an object. The application will go to this url when you click on the object. 
 */
@property(strong) NSString * url;

/**
 Target of an URL, if URL is a string, for example: "_blank", "_top".
 */
@property(strong) NSString * urlTarget;

/**
 Specifies if MapObject's, specified in the url zoom values should be used. Useful when building drill down maps.
 */
@property(assign) BOOL useTargetsZoomValues;

/**
 Specifies latitude to which map should be moved when this object is clicked
 */
@property(strong) NSNumber * zoomLatitude;

/**
 Specifies map scale to which map should be rescaled when this object is clicked.
 */
@property(strong) NSNumber * zoomLevel;

/**
 Specifies longitude to which map should be moved when this object is clicked.
 */
@property(strong) NSNumber * zoomLongitude;

/**
 Specifies x position (in percents of stage width) to which map should be moved when this object is clicked. You can also use zoomLat and zoomLong instead of zoomY and zoomY.
 */
@property(strong) NSNumber * zoomX;

/**
 Specifies y position (in percents of stage height) to which map should be moved when this object is clicked. You can also use zoomLat and zoomLong instead of zoomY and zoomY.
 */
@property(strong) NSNumber * zoomY;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end