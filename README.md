## 스파르타코딩 2주차 개인과제
playground를 활용한 swift로 계산기 구현

### 개발 환경 
- 언어 : swift
- IDE : Xcode 16.0

### 프로젝트 구성
- UI를 만들지 않고 계산기의 로직에 대해서 생각해볼 수 있는 프로젝트입니다.
- 계산기의 기본 기능인 덧셈, 뺄셈, 곱셈, 나눗셈 기능을 지원하는 계산기를 구현하였습니다. 

### 주요 구성 요소
- `AbstractOperation` : 프로토콜을 활용한 추상화
- `AddOperation` : 덧셈 연산을 수행하는 클래스이다.
- `SubtractOperation` : 뺄셈 연산을 수행하는 클래스이다.
- `MultiplyOperation` : 곱셈 연산을 수행하는 클래스이다.
- `DivideOperation` : 나눗셈 연산을 수행하는 클래스이고, 0으로 나누는 경우 0을 반환하고 오류 메시지를 출력한다.

### 고민한 점
- 클래스간의 결합도를 낮추고 유지보수를 어떻게 용이하게 할 수 있는지? -> 단일 책임 원칙 활용
- 의존도를 낮추기 위해 어떻게 할 것인지? -> 의존성 역전 원칙 활용
