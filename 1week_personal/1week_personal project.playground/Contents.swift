import Foundation


// 인스턴스 생성 후 값을 입력 (같은 프로토콜을 채택한 클래스를 이용)
let calculator = Calculator(value1: 45, value2: 2, operation: AddOperation())
print(calculator.operating(a: calculator.value1, b: calculator.value2))
