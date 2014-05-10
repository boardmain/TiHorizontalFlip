/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "ItScsoftImagemirrorModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "UIImage+Flip.h"

@implementation ItScsoftImagemirrorModule

@synthesize image;

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"742a2f55-75a9-43a3-b23b-87ab2b37b5eb";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"it.scsoft.imagemirror";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
	
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}



#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

-(TiBlob *)horizontalFlip:(id)source
{
    ENSURE_SINGLE_ARG(source, NSDictionary);

    TiBlob *blob = [source objectForKey:@"image"];
    NSLog(@"[INFO] blobimg; %@",blob);
    
    image = [[UIImage alloc] initWithData:[blob data]];
    UIImage *newImage = [image horizontalFlip];
    return [[TiBlob alloc] initWithImage:newImage];
}

@end
