import Foundation

// 프로토콜을 선언해서 공통된 작업을 수행하도록 구성
public protocol AbstractOperation {
    func calculate (a: Double, b: Double) -> Double
}

// claulator 함수를 정의
// 다른 파일(디렉토리)에서 접근할 수 있도록 public을 사용해 접근 가능하게 변경
public class Calculator {
    
    // 입력 받을 값의 변수를 선언
    let value1: Double
    let value2: Double
    let operatorValue: String
    
    // init을 통해 값을 입력받아서 사용
    public init(value1: Double, value2: Double, operatorValue: String) {
        self.value1 = value1
        self.value2 = value2
        self.operatorValue = operatorValue
    }
    
    // 연산자에 맞는 함수 호출
    public func distingishOperator() -> Double {
    
        // 입력 받은 연산자에 맞는 클래스내의 함수를 호출해 값을 반환한다.
        switch operatorValue {
        case "+" :
            return  AddOperation().calculate(a: value1, b: value2)
        case "-" :
            return  SubtractOperation().calculate(a: value1, b: value2)
        case "*" :
            return  MultiplyOperation().calculate(a: value1, b: value2)
        case "/" :
            return  DivideOperation().calculate(a: value1, b: value2)
        default :
            print("잘못된 연산자입니다.")
            return 0
            
        }
    }
}

