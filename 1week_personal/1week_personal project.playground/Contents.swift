import Foundation

// claulator 함수를 정의
class Calculator {
    
    // 입력 받을 값의 변수를 선언
    let value1: Double
    let value2: Double
    let operatorValue: String
    
    // init을 통해 값을 입력받아서 사용
    init(value1: Double, value2: Double, operatorValue: String) {
        self.value1 = value1
        self.value2 = value2
        self.operatorValue = operatorValue
    }
    
    // 연산자에 맞는 함수 호출
    @MainActor func distingishOperator() -> Double {
     
        var result: Double = 0              // 계산된 결과값을 대입해 반환하기 위해
        
        switch operatorValue {
        case "+" :
            result = AddOperation().calculate(a: value1, b: value2)
        case "-" :
            result = SubtractOperation().calculate(a: value1, b: value2)
        case "*" :
            result = MultiplyOperation().calculate(a: value1, b: value2)
        case "/" :
            result = DivideOperation().calculate(a: value1, b: value2)
        default : fatalError
            
        }
        return result
    }
    
}

// 연산자별 클래스를 생성해 단일 책임의 원칙에 부합하게 생성
class AddOperation {
    func calculate(a: Double, b: Double) -> Double {
        return a + b
    }
}
class SubtractOperation {
    func calculate(a: Double, b: Double) -> Double {
        return a - b
    }
}

class MultiplyOperation {
    func calculate(a: Double, b: Double) -> Double {
        return a * b
    }
}

class DivideOperation {
    func calculate(a: Double, b: Double) -> Double {
        guard a != 0 && b != 0 else {
            return 0
        }
        return a / b
    }
}

// 인스턴스 생성 후 값을 입력
let calculator = Calculator(value1: 10, value2: 20, operatorValue: "*")
print(calculator.distingishOperator())

let a = A()  
