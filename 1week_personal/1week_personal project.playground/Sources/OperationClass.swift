import Foundation

// 연산자별 클래스를 생성해 단일 책임의 원칙에 부합하게 생성
// 공통된 코드를 추상화한 프로토콜을 채택해서 사용 (public으로 다른파일에서 접근허용)
public class AddOperation: AbstractOperation {
    public func calculate(a: Double, b: Double) -> Double {
        return a + b
    }
}
public class SubtractOperation: AbstractOperation {
    public func calculate(a: Double, b: Double) -> Double {
        return a - b
    }
}

public class MultiplyOperation: AbstractOperation {
    public func calculate(a: Double, b: Double) -> Double {
        return a * b
    }
}

public class DivideOperation: AbstractOperation {
    public func calculate(a: Double, b: Double) -> Double {
        guard a != 0 && b != 0 else {
            return 0
        }
        return a / b
    }
}
