// 
//  AmMapImage.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmMapObject.h"


@interface AmMapImage : AmMapObject

/**
 Distance from bottom of a map container to the image. If centered property is false, then the distance is measured to the bottom of the image, otherwise - to the center. If you set this property, value of top property is ignored. This property can be set as a number (of pixels) or as a percent value, like: image.bottom = "10%";. The image will not be bounded to the map if this property is set. Use latitude and longitude properties if you want the image to move with the map.
 */
@property(strong) NSNumber * bottom;

/**
 Specifies if the image's center should be placed in the provided coordinates. If false, top-left corner will be at provided coordinates. This property doesn't work with images set as svgPath.
 */
@property(assign) BOOL centered;

/**
 Height of an image. Works with predefined images (if type is set) and loaded images (imageURL is set). If svgPath is set, use scale property to change it's size.
 */
@property(strong) NSNumber * height;

/**
 Url of an image. Images can be svg, jpg, png or gif files. Note, you can't control color, outlineColor, outlineAlpha and outlineThickness of loaded images. Use svgPath property if you need to change these properties.
 */
@property(strong) NSString * imageURL;

/**
 Text which will be shown next to the image.
 */
@property(strong) NSString * label;

/**
 Opacity of label background alpha.
 */
@property(strong) NSNumber * labelBackgroundAlpha;

/**
 Color of label background.
 */
@property(strong) NSString * labelBackgroundColor;

/**
 Label color.
 */
@property(strong) NSString * labelColor;

/**
 Font size of a label.
 */
@property(strong) NSNumber * labelFontSize;

/**
 Position of the label. Allowed values are: left, right, top, bottom and middle.
 */
@property(strong) NSString * labelPosition;

/**
 Label roll-over color. 
 */
@property(strong) NSString * labelRollOverColor;

/**
 In some cases you might want to adjust label position a bit. Use this property to shift label horizontally.
 */
@property(strong) NSNumber * labelShiftX;

/**
 In some cases you might want to adjust label position a bit. Use this property to shift label vertically.
 */
@property(strong) NSNumber * labelShiftY;

/**
 Latitude of the image. of the image. Set this property if you want the image to be bounded to the map. Otherwise use left/right/top/bottom properties.
 */
@property(strong) NSNumber * latitude;

/**
 Distance from left of a map container to the image. If centered property is false, then the distance is measured to the left of the image, otherwise - to the center. The image will not be bounded to the map if this property is set. Use latitude and longitude properties if you want the image to move with the map. This property can be set as a number (of pixels) or as a percent value, like: image.left = "10%";
 */
@property(strong) NSString * left;

/**
 Longitude of the image. Set this property if you want the image to be bounded to the map. Otherwise use left/right/top/bottom properties.
 */
@property(strong) NSNumber * longitude;

/**
 Opacity of image outline. This will affect only predefined images (with "type" property set) and images with svgPath set. This property won't affect bitmap images and loaded SVG images.
 */
@property(strong) NSNumber * outlineAlpha;

/**
 Color of image outline. This will affect only predefined images (with "type" property set) and images with svgPath set. This property won't affect bitmap images and loaded SVG images.
 */
@property(strong) NSString * outlineColor;

/**
 Thickness of image outline. This will affect only predefined images (with "type" property set) and images with svgPath set. This property won't affect bitmap images and loaded SVG images.
 */
@property(strong) NSNumber * outlineThickness;

/**
 Height of an image, in percents of map container. Works with predefined images (if type is set) and loaded images (imageURL is set). If svgPath is set, use scale property to change it's size.
 */
@property(strong) NSNumber * percentHeight;

/**
 Width of an image, in percents of map container. Works with predefined images (if type is set) and loaded images (imageURL is set). If svgPath is set, use scale property to change it's size.
 */
@property(strong) NSNumber * percentWidth;

/**
 Distance from right of a map container to the image. If centered property is false, then the distance is measured to the right of the image, otherwise - to the center. If you set this property, value of left property is ignored. The image will not be bounded to the map if this property is set. This property can be set as a number (of pixels) or as a percent value, like: image.right= "10%"; Use latitude and longitude properties if you want the image to move with the map.
 */
@property(strong) NSNumber * right;

/**
 Scale of the image when hovered. Use value like 1.5 - 2 to enlarge image when user rolls-over it.
 */
@property(strong) NSNumber * rollOverScale;

/**
 Scale of the image. Works only with images created using svgPath. Use width/height properties for all other images.
 */
@property(strong) NSNumber * scale;

/**
 Color of a label when image is selected.
 */
@property(strong) NSString * selectedLabelColor;

/**
 Scale of the image if it is selected. Use value like 1.5 - 2 to enlarge selected image.
 */
@property(strong) NSNumber * selectedScale;

/**
 SVG path, for example: <br>
        <br>
        M9,0C4.029,0,0,4.029,0,9s4.029,9,9,9s9-4.029,9-9S13.971,0,9,0z M9,15.93 c-3.83,0-6.93-3.1-6.93-6.93S5.17,2.07,9,2.07s6.93,3.1,6.93,6.93S12.83,15.93,9,15.93 M12.5,9c0,1.933-1.567,3.5-3.5,3.5S5.5,10.933,5.5,9S7.067,5.5,9,5.5 S12.5,7.067,12.5,9z<br>
        <br>
        <br>
        The line above will create a target icon. For more icons we recommend visiting this page: http://raphaeljs.com/icons/<br>
        Simply click on an icon you like and you will get SVG path in the bottom. This is the recommended way to create icons/images in AmMap.
 */
@property(strong) NSString * svgPath;

/**
 Distance from top of a map container to the image. If centered property is false, then the distance is measured to the top bound of the image, otherwise - to the center. The image will not be bounded to the map if this property is set. This property can be set as a number (of pixels) or as a percent value, like: image.top = "10%"; Use latitude and longitude properties if you want the image to move with the map.
 */
@property(strong) NSNumber * top;

/**
 Type of a predefined image. Allowed values are: circle, rectangle and bubble.
 */
@property(strong) NSString * type;

/**
 Width of an image. Works with predefined images (if type is set) and loaded images (imageURL is set). If svgPath is set, use scale property to change it's size.
 */
@property(strong) NSNumber * width;

/**
 You can set miles or kilometers as a unit of width/height of an image. This works only with predefined movies (type is set).
 */
@property(strong) NSString * widthAndHeightUnits;

- (NSDictionary *)dictionaryRepresentation;
- (NSString *)javascriptRepresentation;

@end