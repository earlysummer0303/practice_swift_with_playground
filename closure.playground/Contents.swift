import UIKit

// ----------  Closure --------------

// 함수 선언하는 방식 복습

func multi (_ a:Int,_ b:Int) -> Int {
    
    return a*b
    
}

multi (1,2)

// 같은 기능을 하는 클로저는 어떻게 선언할까요

var closmulti :(Int,Int)->Int = {(a:Int ,b:Int) in return a*b}

closmulti(1,2)

// 클로저는 왜 좋고 왜 사용해야 하는가?

func newfunc (a: Int,b:Int, clo: (Int,Int)->Int)-> Int {
 
    let result = clo(a,b)
    return result
    
}

newfunc(a:1,b:2,clo: multi)
newfunc(a:1,b:2,clo: closmulti)

// 클로저의 필요성을 체감해보자

// 직접 함수를 수정해주기 힘들지만, 꼭 필요한 'critical'이라는 기능이 있다.
// critical은 원래 두 수를 더해주는 기능이지만, 곱해주는 기능으로 바꾸려고 함
// 만약 critical을 함수로 작성해준다고 할때

func f_critical (a:Int,b:Int) -> Int{
    return a+b
}

func system (_ a:Int,_ b:Int,crt:(Int,Int)->Int) ->Void {
    print (crt(a,b))
}

system(1,2,crt:f_critical)
/*
func f_critical (a:Int,b:Int) -> Int{
    return a*b
}

*/
// 만약 함수로 정의된 critical 함수의 기능을 곱하기로 바꾸려면 일단 주석된 코드처럼 re declaration을 해줘야 하는데, 다시 선언하는것이 귀찮기도 하거니와 redclaration을 할 수도 없다.

// 그러면 클로저로 사용해보자
var c_critical:(Int,Int)->Int = {a,b in return a+b}
// 클로저의 표현: 클로저가 취하는 함수형태를 자료형으로 보여주고 = {파라미터, in return 리턴값}

system(1,2,crt:c_critical)

// 만약 나중에 계획이 변동되어서, 크리티컬 함수를 바꾸고 싶다면, 클로저를 변수로 할당했기 때문에, 그냥 변수 값을 바꿔주면 되는것이다.

c_critical = {a,b in return a*b}

system(1,2,crt:c_critical)

system (1,2,crt:{a,b in return b/a})
// 이렇게 즉석해서 함수의 매개변수로 선언하지 않은 클로저를 넣어줄 수 있음
system (3,6){a,b in return b/a}
// 이렇게 crt: 에 들어갈 클로저값을 밖으로 빼주는것도 가능하다.

// ---------- closure의 value capture -----------

var printClosure: () -> Void



if true {
    let 이름 = "jade"
    printClosure = {
        
        print(이름)
        
    }
    
}

//--- closure는 파라미터를 받아오지 않더라도 같은 스코프에 있는 외부 요소를 참조 가능

var count = 0

let increment = {
    
    count += 1
    
}

increment()
increment()
increment()

// -------- closure 실습 -------

var newcl = {(a:Int , b:Int) -> Int in
    
    return a+b
    
}

newcl(1,5)

// --------- trailing closure --------

func afunc (mes:String,clo:()->Void){
    print (mes)
    clo()
}

// clo 안에 들어갈 클로저를 미리 선언 안해주고 즉석 해서 넣는다고 할때

afunc(mes: "지우지우", clo:{print ("그뉸그뉸어쩌고 저쩌고 라ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ")})
// 이렇게 표현하면 짜증 날때가 있어서, closure가 맨 마지막에 위치한 파라미터인 경우에 한해서ㅡ

afunc(mes:"지우지우"){print("그뉸그뉸어쩌고 저쩌고 라ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ") }
// 이렇게 trailing closure 형식으로 빼줄 수 있음
