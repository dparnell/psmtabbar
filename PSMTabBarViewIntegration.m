//
//  PSMTabBarView.m
//  PSMTabBar
//
//  Created by Daniel Parnell on 29/12/07.
//  Copyright 2007 Automagic Software Pty Ltd.. All rights reserved.
//

#import <InterfaceBuilderKit/InterfaceBuilderKit.h>
#import <PSMTabBarFramework/PSMTabBarControl.h>
#import "PSMTabBarInspector.h"


@implementation PSMTabBarControl ( PSMTabBarControl )

- (void)ibPopulateKeyPaths:(NSMutableDictionary *)keyPaths {
    [super ibPopulateKeyPaths:keyPaths];
	
	// Remove the comments and replace "MyFirstProperty" and "MySecondProperty" 
	// in the following line with a list of your view's KVC-compliant properties.
    [[keyPaths objectForKey:IBAttributeKeyPaths] addObjectsFromArray:[NSArray arrayWithObjects:/* @"MyFirstProperty", @"MySecondProperty",*/ nil]];
}

- (void)ibPopulateAttributeInspectorClasses:(NSMutableArray *)classes {
    [super ibPopulateAttributeInspectorClasses:classes];
    [classes addObject:[PSMTabBarInspector class]];
}

@end
