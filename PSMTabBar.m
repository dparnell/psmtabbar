//
//  PSMTabBar.m
//  PSMTabBar
//
//  Created by Daniel Parnell on 29/12/07.
//  Copyright 2007 Automagic Software Pty Ltd.. All rights reserved.
//

#import "PSMTabBar.h"

@implementation PSMTabBar

- (NSArray*)requiredFrameworks {
	NSBundle* frameworkBundle = [NSBundle bundleWithIdentifier: @"com.automagicsoftware.PSMTabBar"];
	return [NSArray arrayWithObject: frameworkBundle];
}

- (NSArray *)libraryNibNames {	
    return [NSArray arrayWithObject:@"PSMTabBarLibrary"];
}

@end
