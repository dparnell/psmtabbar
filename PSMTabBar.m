//
//  PSMTabBar.m
//  PSMTabBar
//
//  Created by Daniel Parnell on 29/12/07.
//  Copyright 2007 Automagic Software Pty Ltd.. All rights reserved.
//

#import "PSMTabBar.h"

@implementation PSMTabBar

- (NSArray *)libraryNibNames {
	NSBundle* frameworkBundle;
	NSString* path;
	
	NSLog(@"Loading the PSMTabBar framework");
	path = [[NSBundle bundleForClass: [PSMTabBar class]] bundlePath];
	frameworkBundle = [[NSBundle alloc] initWithPath: [[path stringByDeletingLastPathComponent] stringByDeletingLastPathComponent]];
	[frameworkBundle load];
	
    return [NSArray arrayWithObject:@"PSMTabBarLibrary"];
}

@end
