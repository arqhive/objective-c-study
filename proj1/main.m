// 첫 번째 예제프로그램

// 컴파일러에게 Foundation.h를 찾아 처리하도록 함
// #import는 이 파일에 잇는 정보를 마치 프로그램의 그 위치에 그대로 입력된 것처럼 가져오거나 포함시리카는 의미이다.
// Foundation.h에는 프로그램에서 사용할 다른 클래스와 함수에 대한 정보가 들어있다.
#import <Foundation/Foundation.h>

// main은 프로그램 실행시 시작되는 위치를 나타내는 특별한 이름이다.
// int는 반환값이 정수임을 나타낸다.
int main (int argc, const char * argv[])
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
