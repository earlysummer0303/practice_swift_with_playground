import UIKit

// structure 와 class의 차이 바로알기

//1. class
// class는 Reference Type으로, Share(공유) 한다.
class info_c{
    var name:String
    var age:Int
    
    init (name:String, age:Int){
        
        self.name = name
        self.age = age
        // 이니셜라이즈 함수, 클래스는 반드시 이렇게 초기화 시켜줘야 한다.
    }
    
}

var info_c_1 = info_c(name: "jiwoo", age:24)
var info_c_2 = info_c_1
info_c_2.name = "geunhun"
info_c_1.name

//1. Structure
// Structure는 Value Type으로, Copy (복사) 한다.

struct info_s {
    var name: String
    var age: Int
    init (name:String, age:Int){
        self.name = name
        self.age = age
    }
}

var info_s_1 = info_s(name:"geunhun",age:24)
var info_s_2 = info_s_1
info_s_2.name = "jiwoo"
info_s_1.name






// 나로부터 가장 가까운 슈퍼마켓 구하기
// 위치 structure 만들기
// 가게 structure 만들기

// 위치 structure을 만들어보기

struct Location {
    // 스트럭쳐를 구성하는 프로퍼티 혹은 메소드 선언
    let x:Int
    let y:Int
    
}

// 위치 struct를 참조하는 store structure 만들기
// 즉, Location 이라는 structure는 store structure의 프로퍼티에 해당한다.
struct Store {
    
    let loc : Location// structure는 named type 이기 때문에, 선언과 동시에 그 이름의 새로운 타입이 된다.
    let name : String
}

// store 인스턴스들 선언하기

let myhome = Store(loc:Location(x:0,y:0),name:"내위치")
let st_1 = Store(loc:Location(x:5,y:4),name:"gs25")
let st_2 = Store(loc:Location(x:3,y:6),name:"seveneleven")
let st_3 = Store(loc:Location(x:5,y:8),name:"CU")


// 거리 구하는 함수
func distance(current:Location, target:Location ) -> Double {
    
    let x_distance = Double(target.x - current.x)
    let y_distance = Double(target.y - current.y)
    let final_distance = sqrt(x_distance * x_distance + y_distance * y_distance)
    return final_distance
    
}
/*
// 최단거리의 가게 이름을 print 해주는 함수

func print_nearest (current: Location, 가게: [Store])->Void {
    
    
}// [store] 이란 : store(값)으로 선언해준 store들의 array
*/

// 센세의 도전과제
//1. 강좌이름, 강사이름, 학생 수를 가지는 struct 생성 -> Lecture 이라는 이름으로

struct Lecture {
    let name:String
    let tutorname:String
    let snum:Int
    
    init (name:String,tutorname:String,snum:Int ){
        self.name = name
        self.tutorname = tutorname
        self.snum = snum
    }
    
}
//2. 강의 어레이와 강사 이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
//3. 강의 3개 만들고, 강사 이름으로 강의찾기

// 인스턴스 생성
let math = Lecture(name: "수학", tutorname:"오화정", snum:30)
let music = Lecture(name: "음악", tutorname:"김정숙", snum:0)
let english = Lecture(name: "영어", tutorname:"황지우", snum:100)

let list : [Lecture] = [math, music, english] //리스트는 자동 생성 되는것이 아니고, 만들어줘야 하는것이다.

func guesslecturename(list:[Lecture], tutor_name: String){
    
    for lecture in list{
        if tutor_name == lecture.tutorname{
            print("강사이름:\(tutor_name), 강의 이름:\(lecture.name)")
        }
        
    }
    
}

guesslecturename(list:list, tutor_name: "오화정")
guesslecturename(list:list, tutor_name: "김정숙")
guesslecturename(list:list, tutor_name: "황지우")


// 스트럭트 복습
// 스트럭트 선언하기
/*
struct student_info {
    let name:String
    let age:Int
    let grade:Double
}

let jiwoo = student_info(name:"jiwoo", age:24, grade:4.5)
let geunhun = student_info(name: "geunhun", age:24, grade:4.0)
let hyunji = student_info(name:"hyunji", age:25, grade:3.5)

let studentlist :[student_info] = [jiwoo ,geunhun ,hyunji]

func printgrade (list:[student_info], name:String)->Void {
    for student in list {
        if name == student.name{
            print ("\(student.name)의 학점은 : \(student.grade)")
        }
    }
}

for student in studentlist {
    printgrade(list:studentlist, name:student.name)
}
*/

// 프로토콜 알아보기
// structure에 프로토콜을 적용해보자
// 위의 student_info 구조체 다시 가져오기
// 구조체에 프로토콜 적용하기
struct student_info : CustomStringConvertible {
    
    var description: String {
        return "이름은 바로 \(name), 학점은 \(grade)"
    }
    // 주의 : customstringconvertible 이라는 것의 프로토콜은 description 이라는 이름의 변수명으로 confirminga 해줘야 한다.
    let name:String
    let age:Int
    let grade:Double
}
//student_info 라는 구조체가 CustomStringConvertible 이라는 프로토콜을 사용하고 싶을때,
// 그에 대한 컨퍼밍으로 디스크립션 값을 정해줘야 한다.

let jiwoo = student_info(name:"jiwoo", age:24, grade:4.5)
let geunhun = student_info(name: "geunhun", age:24, grade:4.0)
let hyunji = student_info(name:"hyunji", age:25, grade:3.5)

print (jiwoo)
print (geunhun)
print (hyunji)

// 값에 대한 디스크립션이 프로토콜의 내용대로 바뀐 것을 알 수 있다.

// property vs method

var deliveryrange:Double = 5


struct store : CustomStringConvertible {
    
    
    
    let x_coordinate:Double // Stored Property (인스턴스를 선언할 때 직접 할당해줘야 함)
    let y_coordinate:Double // Stored Property (인스턴스를 선언할 때 직접 할당해줘야 함)
    
    var howfar:Double {return sqrt(x_coordinate*x_coordinate + y_coordinate*y_coordinate)}
    // Computed Property: stored property의 값을 기반으로 계산된 결과인 프로퍼티 (stored property가 결정되면 자동 결정 되므로, 인스턴스를 선언할 때 직접 할당 해줄 필요가 없음)
                         
    func delivable() -> Bool {
        return howfar < deliveryrange
    }
    // Method (프로퍼티의 값에 의해 자동 결정 되므로 역시 인스턴스 선언시 직접 할당 해줄 필요 없음.)
    
    var description: String { // Confirming to Protocol, 얘도 computed property
        if delivable() == true {
            return "거리가 \(howfar)이어서 배달 쌉가능"
            
        }
        else {
            return "거리가 \(howfar)이어서 배달 불가능합니다."
        }
        
    }
    
    init (x_coordinate: Double, y_coordinate: Double) {
        self.x_coordinate = x_coordinate
        self.y_coordinate = y_coordinate
        // initializing
    }
    
}

let cu = store(x_coordinate: 4.0, y_coordinate: 4.0)
let seveneleven = store(x_coordinate: 5.0, y_coordinate: 5.0)
let supermarket = store(x_coordinate: 3.0, y_coordinate: 3.0)

print (cu)
print (seveneleven)
print (supermarket)


// property - get,set 실습
// 1. get only property

struct Person {
    var firstname: String
    var lastname: String
    var fullname:String{
        return "\(firstname + lastname)" //get
        // get only property
        // 오직 stored property를 통해 입력받는 값에 대한 대응만 있음.
    }
    
}

var hwangjiwoo = Person(firstname: "jiwoo", lastname: "hwang")
var parkgeunhun = Person(firstname: "geunhun", lastname: "park")

print(hwangjiwoo.fullname)
print(parkgeunhun.fullname)


// get-set property

struct newPerson {
    var firstname: String
    var lastname: String
    var fullname:String{
        get {
        return "\(firstname + lastname)"
        }
        set{
            
            // newValue가 들어올때에 대한 대응
            
            if let first_name = newValue.components(separatedBy: " ").first {
                self.firstname = first_name
                // 새로 fullname에 할당된 값(new value)을 " "(띄어쓰기 한칸)을 기준으로 컴포넌트화 할때(쪼갤때)
                // 그중 첫번째 값을 자기 자신의 firstname 속성에 할당한다.
            }
            if let last_name = newValue.components(separatedBy: " ").last {
                self.lastname = last_name
                // 그리고 마지막 값은 lastname 속성에 할당한다.
            }
        
            
        }
       
    }
    
}

var someone = newPerson(firstname: "suhyeon", lastname: "kim")
someone.fullname = "suzy bae"
print (someone.firstname)

// type property

struct people {
    let name:String
    let age:Int
    let sex:Bool // true:female, false:male
    static let isalien:Bool = false
}
people.isalien

// didset, willset
struct people2 {
    var name:String {
        willSet{
            print("사용자의 이름이 \(name)에서 \(newValue)로 곧 변경될 예정입니다")
        }
        
        didSet {
            print("사용자의 이름이 \(oldValue)에서 \(name)으로 이미 변경되었습니다.")
        }
    }
    var age:Int
    var sex:Bool // true:female, false:male
}

var heyjade = people2(name: "jade", age:24, sex:true)
heyjade.name = "jiwoo"
heyjade.name = "swimmer"

// lazy property
// ban 할 유저를 등록하고, 만약 유저네임이 밴한 유저네임의 이름과 동일하면, ban 페이지 호출

struct member {
    var name: String
    var age: Int
    var sex: Bool
    lazy var isBanned: Bool = {
        for i in banmember{
        if name == i.name{
                return true
            }
        }
      
        return false
        
    }()
}

var member1 = member(name: "jiwoo", age:23, sex:true)
var member2 = member(name: "geunhun", age:23, sex:false)
var member3 = member(name: "hyunchae", age:25, sex:false)
var member4 = member(name: "jiwon", age:23, sex:false)

var memberlist = [member1, member2, member3,member4]

var banmember = [member3,member4]

func printban (list:[member]){
    for var i in list {
        if i.isBanned == true {
            print("\(i.name)님은 사용이 제한된 유저입니다.")
        }
        
    }
}

printban(list: memberlist)


// computed property vs method

struct adding{
    var a:Int
    var b:Int
    var addab : Int {
        return a+b
    }
    func addingab ()->Int{
        return a+b
    }
    // 기능적으로 computed property인 addab와, method인 addingab는 같은 기능을 수행한다.
}

var ex = adding(a:1, b:2)

print(ex.addab)
print(ex.addingab())

// method
// mutating method
// type method

struct lecture {
    var title: String
    var studentnum: Int = 0
    var maxstudent:Int = 30
    var remainseat:Int {
        return maxstudent - studentnum
    }
    mutating func register()->Void {
        
        studentnum += 1 // studentnum을 변형시킴
      
        // register 처럼 같은 structure에 속한 다른 property를 변형시키는 method의 경우, 선언할때 앞에 'mutating'을 꼭 붙여줘야한다.
    }
    
    static func printacademyname ()->Void {
        print ("모든 강의들은 지우 학원에서 이루어집니다.")
        // lectur 라는 structure의 type method
    }
   
    
}

// structure의 extension(확장)

struct mermaid{
    var hair:String
    var bra:String
    static let eyes:Int = 2
}

var ariel = mermaid(hair:"red", bra:"purple")
///
// 만약 나중에 mermaid 라는 structure에 다른 프로퍼티나 메소드를 추가해서 넣어주고 싶다면, 경우에따라 직접 그 스트럭쳐 선언 해준곳에 가서
// 하는것보다, 익스텐션을 통해 그때그때 지금의 위치에서 추가해주는것이 편할때가 있다.

extension mermaid {
    
    static func saying()->(){
    print("모든 인어들은 아름답습니다.")
    }
    
    // 익스텐션에는 stored property를 선언 할 수 없다 (익스텐션 이전에 생성된 인스턴스들은 해당 stored property를 기반으로 선언되지 않았기때문)
}


