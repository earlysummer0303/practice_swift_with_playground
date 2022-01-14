import UIKit

var greeting = "Hello, playground"


// 파라미터를 받아서 총 액수를 프린트 하기 //

func howmuchtotal (_ price:Int,_ num:Int) {
    
    print ("총 가격은 : \(price*num) 원 입니다")
    
}

howmuchtotal(5000,15)

// 만약 파라미터 값 중 하나가 디폴트라면?

func defhowmuch (price:Int = 1500,_ num:Int) {
    print ("총 가격은 : \(price*num)원 입니다.")
}

defhowmuch(70)
defhowmuch(price:6000, 70)

// ----- 반환값을 갖는 함수 -------//

func vomit (a:Int, b:Int) -> Int {
    
    let sum = a+b
    return sum
    
}

vomit (a:5, b:6)

// 센세의 도전과제
// 1. 성과 이름을 받아서 fullname을 출력하는 함수 만들기

func fullname(fam:String, nam:String){
    
    print ("fullname : \(fam+nam)")
    
}

fullname(fam:"Hwang", nam: "Jiwoo")

// 2. 1번에서 만든 함수의 파라미터 이름을 제거하고 나타내기

func fullname2(_ fam:String,_ nam:String){
    
    print ("fullname : \(fam+nam)")
    
}

fullname2("Hwang","Jiwoo")

// 3. 성, 이름을 받아ㅑ서 full name을 return 하는 함수 만들기

func retfullname(fam:String, nam:String)-> String{
    
    return fam + nam
}

retfullname(fam: "Park", nam: "Geunhun")

print (retfullname(fam: "Park", nam: "Geunhun"))

/// in-out parameter - increment

var value = 3

func increment(_ value : inout Int){
    value+=1
    print (value)
}

increment(&value)

///------- function as a parameter----------


func mynameis (a:String, b:String) -> String{
    return a+b+"my name is jiwoo"
}


func sentence (function: (String,String) -> String, a: String = "hello_", b:String = "thankyou_") {
    
    print (function (a,b))
    
}

sentence (function : mynameis)





