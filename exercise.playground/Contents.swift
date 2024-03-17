import UIKit

//დაწერეთ ფუნქცია რომელიც პარამეტრად მიიღებს String-ს და დააბრუნებს ბულიანს. ფუნქციამ უნდა შეამოწმოს მიღებული სტრინგი სარკისებურია თუ არა (სიტყვა ან წინადადება რომელიც იკითხება ერთნაირად როგორც თავიდან, ისე ბოლოდან მაგ: “ანა”, “აირევი ივერია”, “მადამ”)

func IsPolindrom(word: String) -> Bool{
    var axali: String = ""
    for i in word{
        axali=String(i)+axali
    }
    if axali == word{
        return true
    }
    return false
}

print(IsPolindrom(word: "airevi iveria"))
print(IsPolindrom(word: "Raisa"))
print("---------------")

//დაწერეთ ფუნქცია რომელიც გადაცემულ რიცხვების array-ს ააკვარდატებს, დაპრინტავს და დააბრუნებს მნიშვნელობას.

func Square(arr: [Int]) -> [Int]{
    var mass: [Int] = []
    for i in arr{
        mass.append(i*i)
    }
    print(mass)
    return mass
}

Square(arr: [1,2,3,4,5])
print("-----------------------")

//დაწერეთ Closure რომელიც გაფილტრავს ლუწ რიცხვებს Int-ების Array-დან.

var kenti = {
    (arr: [Int]) -> [Int] in
    var tempArr: [Int] = []
    for i in arr{
        if i % 2 == 0{
            tempArr.append(i)
        }
    }
    return tempArr
}

print(kenti([12,32,43,3,2,1]))
print("---------------------")

//დაწერეთ ფუნქცია, რომელიც პარამეტრად იღებს Int-ების მასივს. Escaping closure-ის მეშვეობით დაბეჭდეთ მიწოდებული მასივის ჯამი 5 წამის შემდეგ. დარწმუნდით რომ closure არის escaping და გამოიძახეთ ის მას შემდეგ რაც ფუნქცია დაბრუნდება.

func EscapingClosure(arr: [Int]){
    var clos: (() -> Void)? = { //closure action method
        var temp = 0
        for i in arr{
            temp += i
        }
        print("Result is: \(temp)")
    }
    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
        //invoke action method, bechdavs jams 5 wamis mere
        clos?();
        print("--------------")
        }
}
var massivi: [Int] = [12,23,43,23,12,3]
EscapingClosure(arr: massivi)

//შექმენით  კონტაქტების Dict სადაც key არის სახელი და value ტელეფონის ნომერი, დაამატეთ, დაბეჭდეთ/მოძებნეთ და წაშალეთ კონტაქტი
//dict-is gamocxadeba
var kontactebi: [String: String] = [:]
//dict-is shevseba
kontactebi["Raisa"] = "555123123"
kontactebi["Nikola"] = "555678362"
//bechdva
for i in kontactebi{
    print("Name: \(i.key), Phone: \(i.value)")
}
//dzebna
var saxeli = "Raisa"
var contain: Bool = false
for i in kontactebi{
    if i.key.lowercased() == saxeli.lowercased(){
        print("Moidzebna")
        contain = true
    }
}
if contain == false{
    print("ver moidzebna")
}
//washla
kontactebi.removeValue(forKey: "Raisa")
for i in kontactebi{
    print("Name: \(i.key), Phone: \(i.value)")
}

print("--------")

//დაწერეთ ფუნქცია რომელიც პარამეტრად იღებს [String: Int] ტიპის Dictionary-ს და დააბრუნებს ანბანურად დალაგებულ dictionary-ს key ელემენტების მასივს.

func dalagebuli (dict: [String: Int]) -> [String] {
   var mass = dict.keys.sorted()
    return mass
}

var diction: [String: Int] = ["vashli": 5, "msxali": 2, "banani": 12]
print(dalagebuli(dict: diction))

print("----------------")

//შექმენით Double-ების მასივი, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ მასივში და დაბეჭდეთ.

var mass: [Double] = [12,32,12.3,43.2,4.3]
var max = mass[0]
for i in 1 ... mass.count-1{
    if mass[i] > max{
        max = mass[i]
    }
}

print(max)

print("--------------")
//მოცემულია Dictionary სადაც წარმოდგენილია ლელა წურწუმიას სიმღერებისა და მათი ხანგრძლივობა(წმ) მონაცემები:

let lelaWhatMovementIsThis: [String: Int] = [
    "ღამის სიჩუმე გაფანტე": 235,
    "ვიხსენებ ყველაფერს თავიდან": 219,
    "სულელი წვიმა": 231,
    "ალალ მე": 231,
    "იდუმალი ღამე": 221,
    "ჩუმად ნათქვამი": 199,
    "თეთრი ქარავანი": 221,
    "ძველი ვერხვები": 193
]

//დაწერეთ ფუნქცია რომელიც გამოითვლის და დაბეჭდავს სიღერების ჯამურ ხანგრძლივობას წუთებში და წამებში

var wamebisJami = 0
var saatebisjami: Double

for i in lelaWhatMovementIsThis.values{
    wamebisJami += i
}
saatebisjami = Double(wamebisJami) / 3600
print("lela mgheris: \(wamebisJami) wm, \(saatebisjami) st")

print("-------")


//დაწერეთ ფუნქცია რომელიც იპოვის და დაბეჭდავს ყველაზე ხანგრძლივი და ხანმოკლე სიმღერის სახელს.

var maxi: Int = Int.min
var mins: Int = Int.max
for i in lelaWhatMovementIsThis.values{
    if i > maxi{
        maxi = i
    }
    if i < mins{
        mins = i
    }
}
print("max: \(maxi)")
print("min: \(mins)")
print("----------------")

//დაწერეთ ფუნქცია რომელიც გამოითვლის სიმღერების საშუალო ხანგრძლივობას
var jam = 0
for i in lelaWhatMovementIsThis.values{
    jam += i
}
var sashualo: Double = Double(jam) / Double(lelaWhatMovementIsThis.values.count)
print ("sashualo: \(sashualo)")

//დაწერეთ ფუნქცია რომელიც შემთხვევითად ამოარჩევს სიმღერას და დაბეჭდავს მის სახელს

var randomnumber = Int.random(in: 0 ... lelaWhatMovementIsThis.count-1)
var result: String = ""
for (index, key) in lelaWhatMovementIsThis.keys.enumerated() {
    if index == randomnumber {
        result = key
        break
    }
}
print(result)

