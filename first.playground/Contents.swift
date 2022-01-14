import UIKit

var greeting = "Hello, playground"

let ranNum = arc4random_uniform(1000)+1

print(ranNum/4)

//------ 여기서부터 튜플공부------//
let coordinate : (Int,Int) = (4,7)
let equalcoordinate = (4,7)
//위아래 같은말이죵~참쉽죵~
let x = coordinate.0
let y = coordinate.1
// 또다른 튜플 표현 알아보기
let another_tuple = (x:1, y:2)
// 이렇게 튜플의 각 0번, 1번 요소에 이름을 라벨링 해줘요
let x_coordinate = another_tuple.x
let y_coordinate = another_tuple.y

let (x3,y3) = another_tuple
x3
y3

//-------Boolean-------//
let tRue = true
let fAlse = false

let igoright = 4>5
// 갑분 이프문
if igoright {
    print ("이거 참인겨")
}
else {
    print ("거짓")
}

//-------- !플젝! : 에그밋 잔여 성장 포인트가 특정 유저의 성장비용보다 적으면 알럿하기 ---------//

let g_point = arc4random_uniform(10)
let g_cost = arc4random_uniform(10)

let compare = g_point > g_cost

if compare {
    print ("멘토신청을 보냈어요")
}
else {
    print ("잔여포인트가 부족합니다ㅠㅠ 충전하러 갈까요?")
}

//----------- 논리연산자 테스팅 -------------//

let jiwoo = (nation : "Kor",career : "Developer" )

let isjiwoo = jiwoo.nation == "Kor" && jiwoo.career == "Developer"

if isjiwoo {
    print ("대한민국의 씩씩한 개발자군요")
}
else {
    print ("대한민국의 개발자가 아닙니다.")
}

let isjade = true

let jiwooandjade = isjiwoo&&isjade
let jiwooorjade = isjiwoo||isjade

//------------- !플젝! 그리팅 메세지 : 내가 올때랑 남이 올때 다른 그리팅 메세지-------------//

let greetingMessage : String // 값이 없는 문자열 하나 선언해주기
let username = "asong"
let itisjade = username == "jade"

if itisjade {
    greetingMessage = "hello jade"
}
else{
    greetingMessage = "hello stranger"
}

print (greetingMessage)
//------------ 삼항연산자 ---------------//

let newgreetingmessage : String = itisjade ? "hello jade" : "hello stranger"

// ------------ while 문------------------//

// 0 ~ 9 까지의 숫자를 출력해보자

var i=0

while i<10 {
    
    print(i)
    i+=1
}

/*

// break 연습하기 : 0~9 사이의 짝수만을 출력해보자
var j = 0

while j<10 {
    
    if j%2==0 {
        print (j)
    }
    
    j += 1
}

*/

