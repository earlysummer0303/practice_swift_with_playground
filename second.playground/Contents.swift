import UIKit
import Foundation

var greeting = "Hello, playground"

//------------- repeat과 while--------------//

print("-----------while --------")
var i=10
while i<10 {
    print (i)
    i+=1
}
print("-----------repeat --------")
var j=10
repeat{
    print (i)
    j+=1
} while j<10


//-------------- for loop 연습 : 0부터 10까지의 수를 모두 더한 sum을 구합니다 -----------

let closedrangee = 0..<10
var sum = 0

for k in closedrangee {
    print ("------->\(k)")
    sum += k
}
print (sum)

// ------ for i in range where---/////

let rangerange = 0...10

for i in rangerange where i%2==0 {
    
    print ("----->\(i)")
    
}

// ----- continue -------//
// 7만 빼고 0~10 수 세기

let range = 0...10

for i in range {

    if i == 7{
        continue
    }
    
    print ("-----> \(i) ")
    
}

// ---------- for문 중첩 - 구구단을 외자----------//

let gurange = 1...9

for i in gurange {
    for j in gurange {
        
        print ("\(i)단 외우기 : \(i)x\(j) = \(i*j)")
    }
}

// ----------- switch --------------//

let ranint = arc4random_uniform(10)
print ("------> \(ranint)")

switch ranint {

    case 0 :
        print ("0")
    case 1 :
        print ("1")
    default :
        print ("0도 1도 아님")
}

let chamtrue = true

switch chamtrue {

    case true:
        print ("참이다")
    case false:
        print ("거짓이다")
    
}

// 조건문을 활용한 switch ------ 0 ~ 3 사이의 수를 맞춰라----- ///

let randnum = arc4random_uniform(3) // 0 ~ 3 사이의 수 무작위 생성
print(randnum)

switch randnum {

case 0:
    print ("---> 0이당 ")

case _ where randnum % 3 == 1 :
    print ("---> 1이당 ")
case _ where randnum % 3 == 2 :
    print ("---> 2이당 ")

case _ where randnum % 3 == 0 :
    print ("---> 3이당 ")

default :
    print ("그럴일은 없어요")
    
    
}


