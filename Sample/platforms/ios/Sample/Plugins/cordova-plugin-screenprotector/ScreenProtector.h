//
//  ScreenProtector.h
//  Sample
//
//  Created by Mihui on 16/5/6.
//
//

#import <Cordova/CDVPlugin.h>
#define ENABLE_PRINT
#define VIEW_TAG 20160518

static inline void PRINT(NSString *format, ...);
static inline void PRINT(NSString *format, ...)  {
#ifdef ENABLE_PRINT
    __block va_list arg_list;
    va_start (arg_list, format);
    
    NSString *formattedString = [[NSString alloc] initWithFormat:format arguments:arg_list];
    
    va_end(arg_list);
    
    NSLog(@"[SP] %@", formattedString);
#endif
}

@interface ScreenProtector : CDVPlugin

@end
