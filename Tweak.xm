
BOOL allowAccess(NSString *filename) {
   NSArray *NotAllowedPathPrefixes =
   @[
   //  @"/bin",
   @"/usr/bin",
   @"/usr/sbin",
   //  @"/etc/apt",
   @"/usr/libexec/sftp-server",
   @"/private/var/lib",
   @"/private/var/stash",
   @"/private/var/mobile/Library/SBSettings",
   @"/private/var/tmp/cydia.log",
   @"/Applications/",
   @"/Library/MobileSubstrate",
   @"/System/Library/LaunchDaemons"
   ];

   if (filename.length == 0) {
     return YES;
   }
   for (NSString *prefix in NotAllowedPathPrefixes) {
     if ([filename hasPrefix:prefix]) {
       return NO;
     }
   }
   return YES;
}

%hook NSFileManager
- (BOOL)fileExistsAtPath:(NSString *)path {
  if(!allowAccess(path)){
    return NO;
  }
  return %orig;
}
%end
