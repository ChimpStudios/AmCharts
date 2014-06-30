// 
//  AmMap.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmMap.h"
#import "AmCategories.h"
#import "AmAreasSettings.h"
#import "AmMapData.h"
#import "AmImagesSettings.h"
#import "AmLinesSettings.h"
#import "AmMapObject.h"
#import "AmSmallMap.h"
#import "AmValueLegend.h"
#import "AmZoomControl.h"


@implementation AmMap

- (id)init {
	self = [super init];
	if (self) {
		self.allowClickOnSelectedObject = true;
//		self.allowMultipleDescriptionWindows = false;
		self.areasSettings = [[AmAreasSettings alloc] init];
//		self.backgroundZoomsToTop = false;
		self.centerMap = true;
//		self.colorSteps = @(5);
//		self.developerMode = false;
		self.dragMap = true;
		self.fitMapToContainer = true;
		self.imagesSettings = [[AmImagesSettings alloc] init];
		self.linesAboveImages = true;
		self.linesSettings = [[AmLinesSettings alloc] init];
//		self.minValue = @(0);
//		self.mouseWheelZoomEnabled = false;
		self.showAreasInList = true;
		self.showBalloonOnSelectedObject = true;
//		self.showDescriptionOnHover = false;
//		self.showImagesInList  = false;
//		self.showLinesInList = false;
//		self.showObjectsAfterZoom = false;
		self.useHandCursorOnClickableOjects = true;
		self.useObjectColorForBalloon = true;
		self.zoomControl = [[AmZoomControl alloc] init];
//		self.zoomDuration = @(1);
		self.zoomOnDoubleClick = true;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

	[dictRep setObject:@(self.allowClickOnSelectedObject) forKey:@"allowClickOnSelectedObject"];

	[dictRep setObject:@(self.allowMultipleDescriptionWindows) forKey:@"allowMultipleDescriptionWindows"];

	if (self.areasClasses) {
		[dictRep setObject:self.areasClasses forKey:@"areasClasses"];
	}

	if (self.areasSettings) {
		[dictRep setObject:[self.areasSettings dictionaryRepresentation] forKey:@"areasSettings"];
	}

	[dictRep setObject:@(self.backgroundZoomsToTop) forKey:@"backgroundZoomsToTop"];

	if (self.balloonLabelFunction) {
		[dictRep setObject:[self.balloonLabelFunction dictionaryRepresentation] forKey:@"balloonLabelFunction"];
	}

	[dictRep setObject:@(self.centerMap) forKey:@"centerMap"];

	if (self.colorSteps) {
		[dictRep setObject:self.colorSteps forKey:@"colorSteps"];
	}

    
	if (self.dataProvider) {
		//[dictRep setObject:self.dataProvider forKey:@"dataProvider"];
#ifdef DEBUG
        NSLog(@"Use mapDataProvider instead of dataProvider");
#endif
	}
    

	[dictRep setObject:@(self.developerMode) forKey:@"developerMode"];

	[dictRep setObject:@(self.dragMap) forKey:@"dragMap"];

	[dictRep setObject:@(self.fitMapToContainer) forKey:@"fitMapToContainer"];

	if (self.imagesSettings) {
		[dictRep setObject:[self.imagesSettings dictionaryRepresentation] forKey:@"imagesSettings"];
	}

	[dictRep setObject:@(self.linesAboveImages) forKey:@"linesAboveImages"];

	if (self.linesSettings) {
		[dictRep setObject:[self.linesSettings dictionaryRepresentation] forKey:@"linesSettings"];
	}

    if (self.mapDataProvider) {
		[dictRep setObject:[self.mapDataProvider dictionaryRepresentation] forKey:@"dataProvider"];
	}
    
	if (self.mapVar) {
		[dictRep setObject:self.mapVar forKey:@"mapVar"];
	}

	if (self.maxValue) {
		[dictRep setObject:self.maxValue forKey:@"maxValue"];
	}

	if (self.minValue) {
		[dictRep setObject:self.minValue forKey:@"minValue"];
	}

	[dictRep setObject:@(self.mouseWheelZoomEnabled) forKey:@"mouseWheelZoomEnabled"];

	if (self.selectedObject) {
		[dictRep setObject:[self.selectedObject dictionaryRepresentation] forKey:@"selectedObject"];
	}

	[dictRep setObject:@(self.showAreasInList) forKey:@"showAreasInList"];

	[dictRep setObject:@(self.showBalloonOnSelectedObject) forKey:@"showBalloonOnSelectedObject"];

	[dictRep setObject:@(self.showDescriptionOnHover) forKey:@"showDescriptionOnHover"];

	[dictRep setObject:@(self.showImagesInList ) forKey:@"showImagesInList "];

	[dictRep setObject:@(self.showLinesInList) forKey:@"showLinesInList"];

	[dictRep setObject:@(self.showObjectsAfterZoom) forKey:@"showObjectsAfterZoom"];

	if (self.smallMap) {
		[dictRep setObject:[self.smallMap dictionaryRepresentation] forKey:@"smallMap"];
	}

	[dictRep setObject:@(self.useHandCursorOnClickableOjects) forKey:@"useHandCursorOnClickableOjects"];

	[dictRep setObject:@(self.useObjectColorForBalloon) forKey:@"useObjectColorForBalloon"];

	if (self.valueLegend) {
		[dictRep setObject:[self.valueLegend dictionaryRepresentation] forKey:@"valueLegend"];
	}

	if (self.zoomControl) {
		[dictRep setObject:[self.zoomControl dictionaryRepresentation] forKey:@"zoomControl"];
	}

	if (self.zoomDuration) {
		[dictRep setObject:self.zoomDuration forKey:@"zoomDuration"];
	}

	[dictRep setObject:@(self.zoomOnDoubleClick) forKey:@"zoomOnDoubleClick"];

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"%@", [dictRep JSONString]];
	return jsonRep;
}

@end