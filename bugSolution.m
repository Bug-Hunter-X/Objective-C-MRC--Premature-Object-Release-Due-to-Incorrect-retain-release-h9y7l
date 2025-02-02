@interface MyClass : NSObject
@property (nonatomic, retain) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    NSString *tempString = [[NSString alloc] initWithString:@"Hello"];
    self.myString = tempString; // This retains tempString; No need to release explicitly.
    //[tempString release]; // Removed this line - incorrect and causes premature release.
}
@end