//
//  PSMTabBarInspector.m
//  PSMTabBar
//
//  Created by Daniel Parnell on 29/12/07.
//  Copyright 2007 Automagic Software Pty Ltd.. All rights reserved.
//

#import "PSMTabBarInspector.h"

@implementation PSMTabBarInspector

- (NSString *)viewNibName {
	return @"PSMTabBarInspector";
}

- (void)refresh {
	// Synchronize your inspector's content view with the currently selected objects.
	[super refresh];
}

@end
