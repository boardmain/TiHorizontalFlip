//
//  UIImage+Flip.m
//  ImageMirror
//
//  Created by Samuele Coppedè on 10/05/14.
//
//

#import "UIImage+Flip.h"

@implementation UIImage (Flip)

- (UIImage*)horizontalFlip {
    UIGraphicsBeginImageContext(self.size);
    CGContextRef current_context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(current_context, self.size.width, 0);
    CGContextScaleCTM(current_context, -1.0, 1.0);
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    UIImage *flipped_img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return flipped_img;
}

@end
