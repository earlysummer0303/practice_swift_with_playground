import UIKit

// ------- array---------

var evennumbers :[Int] = [2,4,6]
var oddnumbers :Array<Int> = [1,3,5]

// 어레이에 새로운 요소를 추가 (append) 해주는 두가지 방법
evennumbers.append(8) // 요소를 하나만 추가해주는 메소드 수행하기
oddnumbers += [7,9] // 요소를 여러개 직접 플러스 해주기
evennumbers.append(contentsOf: [10,12]) // contentsof로 묶은 요소를 추가해주는 메소드 수행하기

let arayyy:[Int] = []
let isEmpty = arayyy.isEmpty

//-------- 배열의 요소----------

var newar:[Int] = [1,2,3,4,5]
let first = newar[0]
let second = newar[1]
let third = newar[2]

// ---------- 배열의 특정 range의 요소들을 슬라이싱 해 가져오기 ------------
var rangearr = newar[1...3]

// ---- 배열의 특정 위치에 새로운 데이터 삽입하기
newar.insert(0, at: 0)

newar[0...3] = [6,7,8,9]
newar
newar.swapAt(0,5)

// -- 배열의 모든 요소 프린트 하기---

for allElements in newar {
    print (allElements)
}

//--- 배열의 첫 일부 요소들 드랍하기

newar
let dropnewar = newar.dropFirst(3)
dropnewar
let savenewar = newar.suffix(3)
savenewar



// ------------ dictionary 딕셔너리 -----------
// 딕셔너리의 요소는 key와 value로 짝지어져 있다
// key는 고유하다
// key끼리는 모두 같은 자료형, value끼리도 모두 같은 자료형

let height:[String: Int] = ["jiwoo": 164, "Geunhun":181, "jiwon":167]
height["jiwoo"]



if let heightexist = height["hyunchae"] {
    
    print(heightexist)
}
else {
    print("dosen't exist")
}

// ----- 쎈세의 도전과제

//1. 이름,직업,도시에 대한 본인의 딕셔너리 만들기

var jiwinfo : [String:String] = ["이름":"jiwoo","직업":"ios개발자","도시":"광주"]

//2. 도시를 부산으로 업데이트 하기

jiwinfo["도시"] = "부산"

//3. 딕셔너리를 받아서 이름과 도시 프린트 하는 함수 만들기

func printnc (dic: [String:String]) {
    
    for (kind,val) in dic where kind != "직업" {
      
            print ("\(kind):\(val)")
        
    }
     
}

printnc (dic:jiwinfo)

//-----------집합 set -----------

var somearray :Array<Int> = [1,2,3,5]
var someset : Set<Int> = [1,2,3,5]

// 이처럼 array와 set은 선언하는 방법이 같다.

someset.count
someset.contains(4)
someset.isEmpty
someset.remove(1)


//
