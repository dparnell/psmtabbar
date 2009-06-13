//
//  PSMTabDragView.h
//  PSMTabBarControl
//
//  Created by Kent Sutherland on 6/17/07.
//  Copyright 2007 Kent Sutherland. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PSMTabDragView : NSView {
	NSImage *_image, *_alternateImage;
	float _alpha;
}
- (void)setFadeValue:(float)value;
- (NSImage *)image;
- (void)setImage:(NSImage *)image;
- (NSImage *)alternateImage;
- (void)setAlternateImage:(NSImage *)image;
@end
