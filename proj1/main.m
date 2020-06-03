// 컴파일러에게 Foundation.h를 찾아 처리하도록 함
// #import는 이 파일에 잇는 정보를 마치 프로그램의 그 위치에 그대로 입력된 것처럼 가져오거나 포함시리카는 의미이다.
// Foundation.h에는 프로그램에서 사용할 다른 클래스와 함수에 대한 정보가 들어있다.
#import <Foundation/Foundation.h>

// 첫 번째 예제프로그램
// main은 프로그램 실행시 시작되는 위치를 나타내는 특별한 이름이다.
// int는 반환값이 정수임을 나타낸다.
int firstProgram (int argc, const char * argv[])
{
    // 여는 중괄호와 닫는 중괄호 사이에 나타나는 프로그램 명령문슨 모두 오토릴리스 풀이라는 컨텍스느 내에서 실행되어야 한다.
    // 오토릴리스 풀은 애플리케이션이 객체를 생성하며 사용하는 메모리를 시스템이 효과적으로 관리하도록 하는 기법이다.
    @autoreleasepool {
        // @"Programming is fun!" 은 NSString 객체이다.
        // @가 없으면 C스타일의 스트링 상수를 작성하는 것이고 @을 쓰면 NSString 객체를 작성하는 것이다.
        // NSLog는 간단히 인수를 표시하거나 로깅하는 Objective-C 라이브러리 함수다.
        NSLog(@"Programming is fun!");
        NSLog(@"Programming in Objective-C is even more fun!");
        NSLog(@"Testing...\n..1\n...2\n....3");
        
        int sum; // 소수점이 없는 정수 값만 저장할 수 있다.
        
        sum = 50 + 25;
        
        // NSLog의 첫 인수는 화면에 드러날 문자열이다.
        // %문자 바로 뒤에 나오는 문자는 그 지점에 표시될 값의 데이터 형을 지정한다.
        NSLog(@"The sum of 50 and 25 is %i", sum);
        
        int value1, value2, otherSum;
        
        value1 = 50;
        value2 = 25;
        
        otherSum = value1 + value2;
        
        NSLog(@"The sum of %i and %i is %i", value1, value2, otherSum);
    }
    // 프로그램이 정상 종료되었다는 의미.
    return 0;
}

// 분수를 다루는 프로그램

// ---- @interface 부분 ----
// 부모클래스를 알려준다.
// 이 클래스의 객체를 다룰 때 사용할 작업 혹은 메서드를 정의한다.
// 클래스 이름은 대문자로 시작하는것이 관례다.
@interface Fraction: NSObject // NSObject클래스는 Foundation.h를 임포트하면 자동으로 프로그램에 포함된다.

- (void)    print; // - 부호는 컴파일러에게 이 메서드가 인스턴스 메서드라고 알려준다. (type)은 반환하는 값의 종류를 말한다. return문을 작성하지 않거나 return; 이렇게 써도 무방.
- (void)    setNumerator: (int) n;   // Fraction 객체 내의 값에 직접 접근할 수 없으므로 set 메서드를 작성해야 한다.
- (void)    setDenominator: (int) d; // :은 컴파일러에게 이 메서드가 파라미터를 받는 다는 것을 알림.
- (int)     numerator; // getter
- (int)     denominator; // getter

@end

// ---- @implementation 부분 ----
// interface에 맞춰 실제로 구현하는 부분
@implementation Fraction
// 인스턴스 변수를 선언한다.
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}

-(void) setDenominator:(int) d
{
    denominator = d;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

@end

int main (int argc, char * argv[])
{
    @autoreleasepool {
        // *는 포인터를 의미. 메모리 위치를 가르킴.
        Fraction *myFraction; // myFraction이 Fraction형 객체라는 의미
        Fraction *myFraction2;
        
        // Fraction 인스턴스를 하나 생성하고 초기화한다.
        myFraction = [Fraction alloc]; // alloc은 메모리공간 할당을 말한다. 부모에게 상속 받음 (NSObject) 모든 인스턴스 변수를 0으로 초기화한다. 메모리 공간 예약
        myFraction = [myFraction init]; //  클래스의 인스턴스를 초기화 한다. 클래스가 아니라 특정 객체를 초기화 한다.(myFraction)
        
        // 한줄로 쓰기
        myFraction2 = [[Fraction alloc] init]; // 안쪽의 메시지 표현이 먼저 실행된다.
        
        // 더 줄여 쓰기
        // Fraction *myFraction3 = [[Fraction alloc] init]; // 선언과 동시에 생성과 초기화
        
        // alloc과 init을 한번에
        // Fraction *myFraction4 = [Fraction new];
        
        // 1/3로 분스의 값을 설정한다.
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        NSLog (@"The value of myFraction is: %i/%i", [myFraction numerator], [myFraction denominator]);
        
        // print메서드로 분수의 값을 표시한다.
        NSLog (@"The value of myFraction is:");
        [myFraction print];
    }
    return 0;
}
