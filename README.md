# CardGame 카드게임
---
### 객체 한줄요약
- `Card` : `Suit - 마크 ,Rank - 등급 숫자` 를 표현하며 **비교연산** 대상
- `CardHand`: `[Card]` 프로퍼티를 소유
  - `Score` - 카드의 조합을 표현하는 `enum`
  - `ScoreFactory` - `Score`의 팩토리객체
    - `FactoryMethod` : `[Card]`로 조합의 가능성 검증 및 생성 하는 `init`들의 `enum` 반환형은 -> `Score?`
- `CardDeck`: 초기 카드 52장을 지니고 게임에서 이용되는 객체
- `MyPlayer` : `CardHand`를 소유한 게임 진행의 중심객체
- `MyDealer` :  `MyPlayer`를 서브클래싱한 특수화 객체, 추가적으로 `draw()`동작 수행
- `PlayerEntry`: `[MyPlayer]`를 추상화한 객체, 게임에서는 각개인의 `MyPlayer`가 아닌 전체를 대상으로 진행하여 추상화하여 구성
- `InputView` : 초기 게임 설정을 위한 입력을 받는 뷰 객체
- `Setting`: 게임의 종류와 인원수의 입력을 추상화한 **DTO**
   - `Mode`: 게임의 종류를 표현하는 `enum`
   - `Entry`: 게임의 인원수를 표현하는 `enum`
- `OutputView` : 게임의 상태와 결과, 에러메세지의 출력 방법을 알고 있는 뷰 객체 
- `Game`: 게임의 구성원과 흐름을 알고 있는 객체




### 프로젝트를 진행하며 느낀점 
객체에게서 데이터를 가져오는 것 보다는
**객체가 직접 데이터로 연산을 하게끔** 외부에서 입력을 넣어준 뒤 결과값을 반환 받게하였다.
객체의 데이터의 출력에 대해서는, `OutputView`가 **클로저의 형태로 로직을 넘겨**, 데이터를 공개하지 않고 출력을 할 수 있었다.

```
ex)
비교연산을 할 때 데이터를 가져오기 보다는 해당 인스턴스와
다른 인스턴스와의 비교를 내부에서 하고 비교연산의 결과만 반환하게 하였다.
```
---

### 실행 영상


![ezgif com-video-to-gif](https://user-images.githubusercontent.com/39197978/60882500-003e2900-a283-11e9-8ea0-ed439e56f6c6.gif)

