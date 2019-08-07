//
//  ZADecoder.h
//  ZAMediaPlayer
//
//  Created by CPU11996 on 8/6/19.
//  Copyright © 2019 vng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZADecoder : NSObject

// properties:

// methods:
- (BOOL) open:(NSString *)url;
- (NSArray*) readFrames;

@end
