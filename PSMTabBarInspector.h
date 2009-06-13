//
//  PSMTabBarInspector.h
//  PSMTabBar
//
//  Created by Daniel Parnell on 29/12/07.
//  Copyright 2007 Automagic Software Pty Ltd.. All rights reserved.
//

#import <InterfaceBuilderKit/InterfaceBuilderKit.h>

@interface PSMTabBarInspector : IBInspector {
    IBOutlet NSPopUpButton      *_stylePopUp;
	IBOutlet NSButton			*_allowsBackgroundTabClosing;
	IBOutlet NSButton			*_automaticallyAnimates;
    IBOutlet NSButton           *_canCloseOnlyTab;
	IBOutlet NSButton			*_disableTabClose;
    IBOutlet NSButton           *_hideForSingleTab;
    IBOutlet NSButton           *_showAddTab;
    IBOutlet NSTextField        *_cellMinWidth;
    IBOutlet NSTextField        *_cellMaxWidth;
    IBOutlet NSTextField        *_cellOptimumWidth;
	IBOutlet NSButton			*_selectsTabsOnMouseDown;
    IBOutlet NSButton           *_sizeToFit;
	IBOutlet NSButton			*_useOverflowMenu;
	IBOutlet NSButton			*_canDragTabs;
}

- (IBAction) ok:(id)sender;

@end
