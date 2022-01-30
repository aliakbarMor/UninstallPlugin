#import "UninstalPlugin.h"
#if __has_include(<uninstal/uninstal-Swift.h>)
#import <uninstal/uninstal-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "uninstal-Swift.h"
#endif

@implementation UninstalPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftUninstalPlugin registerWithRegistrar:registrar];
}
@end
