//
//  PSMTabBarInspector.m
//  PSMTabBar
//
//  Created by Daniel Parnell on 29/12/07.
//  Copyright 2007 Automagic Software Pty Ltd.. All rights reserved.
//

#import "PSMTabBarInspector.h"
#import "PSMTabBarControl.h"

#define kPSMStyleTag 0
#define kPSMCanCloseOnlyTabTag 1
#define kPSMHideForSingleTabTag 2
#define kPSMShowAddTabTag 3
#define kPSMMinWidthTag 4
#define kPSMMaxWidthTag 5
#define kPSMOptimumWidthTag 6
#define kPSMSizeToFitTag 7
#define kPSMAutomaticallyAnimates 8
#define kPSMDisableTabClose 9
#define kPSMUseOverflowMenu 10
#define kPSMSelectTabsOnMouseDown 11
#define kPSMAllowsBackgroundTabClosing 12
#define kPSMCanDragTabs 13

@implementation PSMTabBarInspector

+ (BOOL)supportsMultipleObjectInspection {
	return YES;
}

- (NSString *)viewNibName {
	return @"PSMTabBarInspector";
}

- (void)refresh {
	PSMTabBarControl* tabBar = [[self inspectedObjects] objectAtIndex: 0];
	
    [_stylePopUp selectItemWithTitle:[tabBar styleName]];
    [_canCloseOnlyTab setState:[tabBar canCloseOnlyTab]];
	[_disableTabClose setState:[tabBar disableTabClose]];
    [_hideForSingleTab setState:[tabBar hideForSingleTab]];
    [_showAddTab setState:[tabBar showAddTabButton]];
    [_cellMinWidth setIntValue:[tabBar cellMinWidth]];
    [_cellMaxWidth setIntValue:[tabBar cellMaxWidth]];
    [_cellOptimumWidth setIntValue:[tabBar cellOptimumWidth]];
    [_sizeToFit setState:[tabBar sizeCellsToFit]];
	[_useOverflowMenu setState:[tabBar useOverflowMenu]];
    [_automaticallyAnimates setState:[tabBar automaticallyAnimates]];
	[_selectsTabsOnMouseDown setState:[tabBar selectsTabsOnMouseDown]];
	[_allowsBackgroundTabClosing setState:[tabBar allowsBackgroundTabClosing]];
	[_canDragTabs setState: [tabBar canDragTabs]];
	
	[super refresh];
}

- (IBAction) ok:(id)sender {
	for(PSMTabBarControl* tabBar in [self inspectedObjects]) {
		if ([sender tag] == kPSMStyleTag) {
			[tabBar setStyleNamed:[sender titleOfSelectedItem]];
		} else if ([sender tag] == kPSMCanCloseOnlyTabTag) {
			[tabBar setCanCloseOnlyTab:[sender state]];
		} else if ([sender tag] == kPSMHideForSingleTabTag) {
			[tabBar setHideForSingleTab:[sender state]];
		} else if ([sender tag] == kPSMShowAddTabTag) {
			[tabBar setShowAddTabButton:[sender state]];
		} else if ([sender tag] == kPSMMinWidthTag) {
			if ([tabBar cellOptimumWidth] < [sender intValue]) {
				[tabBar setCellMinWidth:[tabBar cellOptimumWidth]];
				[sender setIntValue:[tabBar cellOptimumWidth]];
			} else {
				[tabBar setCellMinWidth:[sender intValue]];
			}
		} else if ([sender tag] == kPSMMaxWidthTag) {
			if ([tabBar cellOptimumWidth] > [sender intValue]) {
				[tabBar setCellMaxWidth:[tabBar cellOptimumWidth]];
				[sender setIntValue:[tabBar cellOptimumWidth]];
			} else {
				[tabBar setCellMaxWidth:[sender intValue]];
			}
		} else if ([sender tag] == kPSMOptimumWidthTag) {
			if ([tabBar cellMaxWidth] < [sender intValue]) {
				[tabBar setCellOptimumWidth:[tabBar cellMaxWidth]];
				[sender setIntValue:[tabBar cellMaxWidth]];
			} else if ([tabBar cellMinWidth] > [sender intValue]) {
				[tabBar setCellOptimumWidth:[tabBar cellMinWidth]];
				[sender setIntValue:[tabBar cellMinWidth]];
			} else {
				[tabBar setCellOptimumWidth:[sender intValue]];
			}
		} else if ([sender tag] == kPSMSizeToFitTag) {
			[tabBar setSizeCellsToFit:[sender state]];
		} else if ([sender tag] == kPSMDisableTabClose) {
			[tabBar setDisableTabClose:[sender state]];
		} else if ([sender tag] == kPSMUseOverflowMenu) {
			[tabBar setUseOverflowMenu:[sender state]];
		} else if ([sender tag] == kPSMAutomaticallyAnimates) {
			[tabBar setAutomaticallyAnimates:[sender state]];
		} else if ([sender tag] == kPSMSelectTabsOnMouseDown) {
			[tabBar setSelectsTabsOnMouseDown:[sender state]];
		} else if ([sender tag] == kPSMAllowsBackgroundTabClosing) {
			[tabBar setAllowsBackgroundTabClosing:[sender state]];
		} else if ([sender tag] == kPSMCanDragTabs) {
			[tabBar setCanDragTabs:[sender state]];
		}
	}
}

@end
