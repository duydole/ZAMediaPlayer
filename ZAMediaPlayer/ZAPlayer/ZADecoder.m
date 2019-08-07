//
//  ZADecoder.m
//  ZAMediaPlayer
//
//  Created by CPU11996 on 8/6/19.
//  Copyright © 2019 vng. All rights reserved.
//

#import "ZADecoder.h"
#import <libavformat/avformat.h>
#import <libavutil/imgutils.h>
#import <libavutil/display.h>
#import <libavutil/eval.h>
#import <libswscale/swscale.h>
#import <libswresample/swresample.h>
#import <Accelerate/Accelerate.h>

@interface ZADecoder()

@end

@implementation ZADecoder

- (BOOL) open:(NSString *)url {
    
    // 1.init
    avformat_network_init();

    // 2. Open Input
    AVFormatContext *formatContext = NULL;
    int ret = avformat_open_input(&formatContext, [url UTF8String], NULL, NULL);

    // 3. Analyze Stream Info
    ret = avformat_find_stream_info(formatContext, NULL);
    
    return true;
}


- (NSArray*) readFrames {
    return nil;
}



@end
