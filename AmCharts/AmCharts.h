//
//  AmCharts.h
//  AmCharts
//
//  Created by Andrew on 4/29/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
//

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE
#import "AmMobileChartView.h"
#elif TARGET_SIMULATOR_IPHONE
#import "AmMobileChartView.h"
#else
#import "AmChartView.h"
#endif

#import "AmAngularGauge.h"
#import "AmBalloon.h"
#import "AmChart.h"
#import "AmCoordinateChart.h"
#import "AmFunnelChart.h"
#import "AmGraph.h"
#import "AmLegend.h"
#import "AmPieChart.h"
#import "AmRadarChart.h"
#import "AmRectangularChart.h"
#import "AmSerialChart.h"
#import "AmSlicedChart.h"
#import "AmXYChart.h"
#import "AmAxisBase.h"
#import "AmCategoryAxesSettings.h"
#import "AmCategoryAxis.h"
#import "AmChartCursor.h"
#import "AmChartCursorSettings.h"
#import "AmChartScrollbar.h"
#import "AmChartScrollbarSettings.h"
#import "AmDataSet.h"
#import "AmDataSetSelector.h"
#import "AmGaugeArrow.h"
#import "AmGaugeAxis.h"
#import "AmGaugeBand.h"
#import "AmGraphDataItem.h"
#import "AmGuide.h"
#import "AmLabel.h"
#import "AmLegendSettings.h"
#import "AmPanelSettings.h"
#import "AmPeriodSelector.h"
#import "AmSerialDataItem.h"
#import "AmSlice.h"
#import "AmTitle.h"
#import "AmTrendLine.h"
#import "AmValueAxesSettings.h"
#import "AmValueAxis.h"
#import "AmStockChart.h"
#import "AmStockEvent.h"
#import "AmStockEventSettings.h"
#import "AmStockGraph.h"
#import "AmStockLegend.h"
#import "AmStockPanel.h"
#import "AmMap.h"
#import "AmAreasSettings.h"
#import "AmImagesSettings.h"
#import "AmLinesSettings.h"
#import "AmMapArea.h"
#import "AmMapData.h"
#import "AmMapImage.h"
#import "AmMapLine.h"
#import "AmMapObject.h"
#import "AmObjectList.h"
#import "AmSmallMap.h"
#import "AmValueLegend.h"
#import "AmZoomControl.h"

