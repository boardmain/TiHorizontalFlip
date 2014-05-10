/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "TiModule.h"
#import "UIImage+Flip.h"

@interface ItScsoftImagemirrorModule : TiModule 
{
    UIImage *image;
}

-(TiBlob *)horizontalFlip:(id)source;

@property (nonatomic, readwrite) UIImage *image;

@end
