//
//  VoiceConverter.m
//  Jeans
//
//  Created by Jeans Huang on 12-7-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VoiceConverter.h"
//#import "interf_dec.h"
//#import "dec_if.h"
//#import "interf_enc.h"
#import "amrwapper/amrFileCodec.h"

@implementation VoiceConverter

//转换amr到wav
+ (int)ConvertAmrToWav:(NSString *)aAmrPath wavSavePath:(NSString *)aSavePath{
    
    if (! DecodeAMRFileToWAVEFile([aAmrPath cStringUsingEncoding:NSASCIIStringEncoding], [aSavePath cStringUsingEncoding:NSASCIIStringEncoding]))
        return 0;
    
    return 1;
}

//转换wav到amr
+ (int)ConvertWavToAmr:(NSString *)aWavPath amrSavePath:(NSString *)aSavePath{
    
    if (! EncodeWAVEFileToAMRFile([aWavPath cStringUsingEncoding:NSASCIIStringEncoding], [aSavePath cStringUsingEncoding:NSASCIIStringEncoding], 1, 16))
        return 0;
    
    return 1;
}

    
@end
