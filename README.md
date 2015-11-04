# VoiceConv
ios arm wav converter to adapt android and ios.

pod

pod 'VoiceConv',:git => "https://github.com/dungeonsnd/VoiceConv.git"

引入

import "VoiceConverter.h"

方法

/**
 *  转换wav到amr
 *
 *  @param aWavPath  wav文件路径
 *  @param aSavePath amr保存路径
 *
 *  @return 0失败 1成功
 */
+ (int)ConvertWavToAmr:(NSString *)aWavPath amrSavePath:(NSString *)aSavePath;

/**
 *  转换amr到wav
 *
 *  @param aAmrPath  amr文件路径
 *  @param aSavePath wav保存路径
 *
 *  @return 0失败 1成功
 */
+ (int)ConvertAmrToWav:(NSString *)aAmrPath wavSavePath:(NSString *)aSavePath;

@end



参考资料:

http://blog.csdn.net/justinjing0612/article/details/9633121
http://www.oschina.net/code/snippet_562429_12400
http://my.oschina.net/jeans/blog/69937
http://blog.csdn.net/devday/article/details/6804553
http://blog.sina.com.cn/s/blog_a3059cda0102vauc.html

