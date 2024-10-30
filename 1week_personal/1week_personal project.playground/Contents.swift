import Foundation

/*
 1. Lv1
 - [ ]  더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
 - [ ]  생성한 클래스를 이용하여 연산을 진행하고 출력
*/
 
/*
 
 2. Lv2
 - [ ]  Lv1에서 만든 Calculator 클래스에 “나머지 연산”이 가능하도록 코드를 추가하고, 연산 진행 후 출력
 */

// claulator 함수를 정의
class calculator {

    // 각각의 연산 메서드 정의
    func add (a : Double, b: Double) -> Double {
        return a + b
    }
    func substract (a : Double, b: Double) -> Double {
        return a - b
    }
    func multiply (a : Double, b: Double) -> Double {
        return a * b
    }
    func divide (a : Double, b: Double) -> Double {
        return a / b
    }
    // Lv2. 나머지 연산이 가능한 함수 추가
    func modulo (a: Double, b: Double) -> Double {
        return a.truncatingRemainder(dividingBy: b)     // double타입은 '%'을 사용할 수 없어 'truncatingRemainder(dividingBy:)' 사용
    }
}

// 입력 값 생성
let inputValue1: Double = 42
let inputValue2: Double = 12

// 인스턴스 생성 후 변수에 할당
let calculate = calculator()
print(calculate.add(a: inputValue1, b: inputValue2))
print(calculate.substract(a: inputValue1, b: inputValue2))
print(calculate.multiply(a: inputValue1, b: inputValue2))
print(calculate.divide(a: inputValue1, b: inputValue2))
print(calculate.modulo(a: inputValue1, b: inputValue2))


