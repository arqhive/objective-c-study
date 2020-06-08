#import "Fraction.h"

// Fraction을 구현한다.
@implementation Fraction

@synthesize numerator, denominator; // @synthesize 키워드를 이용하면 getter와 setter가 자동으로 생성된다. (생략해도 생긴다.)

- (void) print {
  NSLog(@"%i/%i", numerator, denominator); // @로 시작하면 NSString 타입이다.
}

- (double) convertToNum {
  if (denominator != 0) {
    return (double) numerator / denominator;
  }
  else {
    return NAN;
  }
}

- (void) setTo:(int)n over:(int)d {
  numerator = n;
  denominator = d;
}

// 수신자에 분수를 더한다.
- (Fraction *) add: (Fraction *) f {
  Fraction *result = [[Fraction alloc] init];
  result.numerator = numerator * f.denominator + denominator * f.numerator;
  result.denominator = denominator * f.denominator;
  
  [result reduce];
  
  return result; // 새로운 인스턴스를 반환한다.
}

- (void) reduce {
  int u = numerator;
  int v = denominator;
  int temp;
  
  while (v != 0) {
    temp = u % v;
    u = v;
    v = temp;
  }
  
  numerator /= u;
  denominator /= u;
}

@end
