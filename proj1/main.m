#import "Fraction.h" // 헤더를 불러온다.

int main(int argc, char * argv[]) {
  @autoreleasepool {
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
    
    Fraction *resultFraction;
    
    [aFraction setTo: 1 over: 4];
    [bFraction setTo: 1 over: 2];
    
    [aFraction print];
    NSLog(@"+");
    [bFraction print];
    NSLog(@"=");
    
    resultFraction = [aFraction add: bFraction];
    [resultFraction print];
  }
  return 0;
}
