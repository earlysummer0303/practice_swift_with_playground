import UIKit

var carName :String?

if let unwrapcarname = carName {
    // unwrap한 옵셔널의 값이 있을 경우
    print (unwrapcarname)
}
else {
    // carName 옵셔널 안에 값이 없을 경우 (nill)
    print ("아무것도 없음")
}

// 옵셔널 바인딩 1. if let
/// -- 프로젝트- 입력된 string 데이터가 int형으로 컨버팅이 될까요 안될까요

func convertResult (convertthis: String) {
    
    let converted = Int(convertthis)
    if let unwrapstring = converted{
        print ("컨버트 성공, 컨버트 결과 = \(unwrapstring)")
    }
    else {
        print ("컨버트 실패")
    }
}

convertResult(convertthis: "10")
convertResult(convertthis: "냐-아-옹")

// 옵셔널 바인딩 2. guard let

func newconvertResult (newconvertthis:String) {
    guard let newconverted = Int(newconvertthis) else {
      print ("컨버트 실패")
      return // 따로 특정 값을 반환하지 않아도 스코프를 나가는(복귀) 것!
    }
    // 훗.. 관문을 통과했군 용사
    print ("컨버트 성공, 컨버트 결과 = \(newconverted)")
}

newconvertResult(newconvertthis: "멈멈!")
newconvertResult(newconvertthis: "777")

// Nil Coalescing

let catName : String? = nil
let myCat : String = catName ?? "요다"
print (myCat)


// ------- 센세의 도전과제
// 1. 최애 음식이름을 담는 변수를 작성하고, 옵셔널 바인딩을 이용해 값을 확인해보기
// 함수 이용, if-let 활용해보자
let favfood_예스 : String? = "마라탕"
let favfood_놉 : String? = nil

func isFavfoodExist (fav:String?){
    if let favfav = fav {
        print("최애음식이 있습니다 그거슨 바로 \(favfav)")
    }
    else {
        print ("아직 최애 음식이 없네용")
    }
    
}

isFavfoodExist(fav: favfood_예스)
isFavfoodExist(fav: favfood_놉)

// 2. 닉네임을 받아서 출력하는 함수 만들기
// guard-let을 이용해보자
let nickname : String? = "jade"
let noname : String? = nil

func printName (name:String?) {
    
    guard let yourname = name else{
        print ("당신의 이름은 없습니당")
        return
    }
    print ("당신의 이름은 :\(yourname)")
}
printName(name: nickname)
printName(name: noname)
