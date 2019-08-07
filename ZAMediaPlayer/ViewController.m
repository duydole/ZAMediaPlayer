//
//  ViewController.m
//  ZAMediaPlayer
//
//  Created by CPU11996 on 8/6/19.
//  Copyright © 2019 vng. All rights reserved.
//

#import "ViewController.h"
#import "ZAPlayer/ZAPlayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSError *error = nil;
    NSURL *localUrlFile = [NSFileManager.defaultManager URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:false error:&error];
    localUrlFile = [localUrlFile URLByAppendingPathComponent:@"sample.mp4"];
    

    ZAPlayer *player = [[ZAPlayer alloc] init];
    [player open:localUrlFile.absoluteString];
}


@end
