//
//  ZAPlayer.m
//  ZAMediaPlayer
//
//  Created by CPU11996 on 8/6/19.
//  Copyright © 2019 vng. All rights reserved.
//

#import "ZAPlayer.h"
#import "ZADecoder.h"

@interface ZAPlayer()

@property (nonatomic) ZADecoder *decoder;

@end

@implementation ZAPlayer


- (instancetype)init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void) setup {
    _decoder = [[ZADecoder alloc] init];
}

# pragma mark - Public methods:
- (void) open:(NSString *)urlString {
    [_decoder open:urlString];
}

- (void) play {
    
}

@end
