// 
//  AmMap.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmChart.h"

@class AmAreasSettings;
@class AmFunction;
@class AmMapData;
@class AmImagesSettings;
@class AmLinesSettings;
@class AmMapObject;
@class AmSmallMap;
@class AmValueLegend;
@class AmZoomControl;

@interface AmMap : AmChart

/**
 Specifies if user can repeatedly click on already selected object.
 @version 3.4.8
 */
@property(assign) BOOL allowClickOnSelectedObject;

/**
 Specifies if multiple description windows at a time are allowed. When set to false, previously opened window is closed when opening a new one.
 @version 3.4.8
 */
@property(assign) BOOL allowMultipleDescriptionWindows;

/**
 You can create multiple AreasSettings objects and then set them using this property. For example, <br>
        map.areasClasses["rivers"] = riversSettings; The class "rivers" should be set for your svg areas which should use the riversSettings object.
 @version 3.4.8
 */
@property(strong) NSString * areasClasses;

/**
 Common settings of areas.
 @version 3.4.8
 */
@property(strong) AmAreasSettings * areasSettings;

/**
 Specifies if clicking on the "water" zooms to the "top"
 @version 3.4.8
 */
@property(assign) BOOL backgroundZoomsToTop;

/**
 Method which will be called by the map when a balloon with some text is displayed. You can use it to change the default text of a balloon.When this function is called, mapObject and map references are passed to it:<br>
            <br>
            balloonLabelFunction(mapObject, ammap);<br>
            <br>
            You can extract any data from mapObject and return new balloon text.
 @version 3.4.8
 */
@property(strong) AmFunction * balloonLabelFunction;

/**
 Specifies if the map should be centered.
 @version 3.4.8
 */
@property(assign) BOOL centerMap;

/**
 If you set values for MapAreas, they are filled with colors between color and colorSolid (both set in AreasSettings). colorSteps property specifies how many different colors should be used. Set this to some big number like 100 if you want each area to be filled with a different shade of color (according to it's value).
 @version 3.4.8
 */
@property(strong) NSNumber * colorSteps;

/**
 Data provider of the map.
 @version 3.4.8
 */
@property(strong) AmMapData * dataProvider;

/**
 When developer mode is set to true, you can click anywhere on the map while SHIFT key is pressed to trigger a writeDevInfo event. All the information about current map position/zoom will be transferred to the event handler.
 @version 3.4.8
 */
@property(assign) BOOL developerMode;

/**
 Specifies if the map is draggable.
 @version 3.4.8
 */
@property(assign) BOOL dragMap;

/**
 Specifies if the map should be resized to fit to the stage.
 @version 3.4.8
 */
@property(assign) BOOL fitMapToContainer;

/**
 Common settings of images.
 @version 3.4.8
 */
@property(strong) AmImagesSettings * imagesSettings;

/**
 You can specify whether lines should be above or below images.
 @version 3.4.8
 */
@property(assign) BOOL linesAboveImages;

/**
 Common settings of lines.
 @version 3.4.8
 */
@property(strong) AmLinesSettings * linesSettings;

/**
 
 @version 3.4.8
 */
@property(strong) NSString * mapVar;

/**
 Use this property in case you set values for your areas and wish to set a different maxValue. These values are used when choosing a color for an area.
 @version 3.4.8
 */
@property(strong) NSNumber * maxValue;

/**
 Use this property in case you set values for your areas and wish<br>
                to set a different minValue (it's 0 by default). These values are used when choosing a color for an area.
 @version 3.4.8
 */
@property(strong) NSNumber * minValue;

/**
 Specifies if zooming with mouse wheel is enabled.
 @version 3.4.8
 */
@property(assign) BOOL mouseWheelZoomEnabled;

/**
 Read-only. Returns currently selected map object. Use map.selectObject(mapObject) method to change it.
 @version 3.4.8
 */
@property(strong) AmMapObject * selectedObject;

/**
 Specifies if MapAreas should be displayed in the ObjectList.
 @version 3.4.8
 */
@property(assign) BOOL showAreasInList;

/**
 Specifies if balloon should be displayed when hovering currently seleced object.
 @version 3.4.8
 */
@property(assign) BOOL showBalloonOnSelectedObject;

/**
 Specifies if description window should be shown when user hovers over the object.
 @version 3.4.8
 */
@property(assign) BOOL showDescriptionOnHover;

/**
 Specifies if MapImages should be displayed in the ObjectList.
 @version 3.4.8
 */
@property(assign) BOOL showImagesInList ;

/**
 Specifies if MapLines should be displayed in the ObjectList.
 @version 3.4.8
 */
@property(assign) BOOL showLinesInList;

/**
 Specifies if child objects should be added to stage only after the map zoomed to the final position.
 @version 3.4.8
 */
@property(assign) BOOL showObjectsAfterZoom;

/**
 Small map displays a small map indicating zoom level and position.
 @version 3.4.8
 */
@property(strong) AmSmallMap * smallMap;

/**
 pecifies if hand cursor should be displayed when mouse moves over a clickable object.
 @version 3.4.8
 */
@property(assign) BOOL useHandCursorOnClickableOjects;

/**
 Specifies if balloon should use color of currenlty hovered object.
 @version 3.4.8
 */
@property(assign) BOOL useObjectColorForBalloon;

/**
 Value legend displays a color range used by areas (in case you set values for your areas).
 @version 3.4.8
 */
@property(strong) AmValueLegend * valueLegend;

/**
 Zoom control of the map.
 @version 3.4.8
 */
@property(strong) AmZoomControl * zoomControl;

/**
 Duration of zoom animation, in seconds.
 @version 3.4.8
 */
@property(strong) NSNumber * zoomDuration;

/**
 Specifies if the map should be zoomed-in when user double clicks anywhere on the map (except objects which are clickable).
 @version 3.4.8
 */
@property(assign) BOOL zoomOnDoubleClick;

@end