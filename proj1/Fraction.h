#import <Foundation/Foundation.h>

// Fraction 클래스를 정의한다.

@class Fraction;

@interface Fraction : NSObject

/** 한줄짜리 주석이다. */
@property int numerator, denominator; // @property를 선언하면 getter와 setter가 자동으로 생성된다.

// 메서드를 정의한다.

- (void) print;
/**
 * 주석은 이렇게 작성한다.
 *
 * @param n 분자
 * @param d 분모
 */
- (void) setTo:(int)n over:(int)d; // 메세지를 읽기 쉽게 파라미터명을 지정하자.
- (double) convertToNum;
- (Fraction *) add:(Fraction *)f;
- (void) reduce;

@end

// Fraction 클래스를 정의를 마친다.
