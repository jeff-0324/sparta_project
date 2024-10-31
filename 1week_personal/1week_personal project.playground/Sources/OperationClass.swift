import Foundation

// 연산자별 클래스를 생성해 단일 책임의 원칙에 부합하게 생성
// 공통된 코드를 추상화한 프로토콜을 채택해서 사용 (public으로 다른파일에서 접근허용)
public class AddOperation: AbstractOperation {
    public init() {}
    public func calculate(a: Double, b: Double) -> Double {
        return a + b
    }
}
public class SubtractOperation: AbstractOperation {
    public init() {}
    public func calculate(a: Double, b: Double) -> Double {
        return a - b
    }
}

public class MultiplyOperation: AbstractOperation {
    public init() {}
    public func calculate(a: Double, b: Double) -> Double {
        return a * b
    }
}

public class DivideOperation: AbstractOperation {
    public init() {}
    public func calculate(a: Double, b: Double) -> Double {
        guard a != 0 && b != 0 else {
            return 0
        }
        return a / b
    }
}

/*
 init()을 각 클래스에 사용해줘야하는 이유
 클래스가 모든 저장 프로퍼티에 대한 초기값을 가지고 있지 않을때, 직접 초기화해줘야함
 그래서 현재 클래스 안에 저장프로퍼티가 없기에 직접 초기화 메서드를 선언해줘야함
 */
