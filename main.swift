//
//  main.swift
//  baitapvenha5
//
//  Created by Cường Lê Đức on 24/04/2023.
//

import Foundation

print("Hello, World!")

//
//  main.swift
//  homework4
//
//  Created by Cường Lê Đức on 23/04/2023.
//

import Foundation

//func name() {
//    print("tôi là ai")
//}
//name()
//func name2(x:String)
//{
//    print("tôi là \(x)")
//}
//          name2(x: "heloo")
//
//func getDayMonthYears() -> (Int,Int,Int)
//{
//return(16,7,1998)
//}
//func diachi( from a : String) {
//    print("from \(a)")
//}
//diachi(from: " Phu thọ")
//
//
//
//func huyen(xa : String = " tanthanh")
//{
//    print("so nha \(xa)")
//}
//huyen()
//huyen(xa: "dau lo")


//
//func findMax(number:Int... )
//{
//    var max = number[0]
//    for i in number {
//        if i > max {
//            max = i
//        }
//
//    }
//    print("max = \(max)")
//}
//findMax(number: 1,2,3,4,5,6,7,8,9)
//
func isPrime( number: Int) -> Bool {
    if number < 2 {
        return false

    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

func countPrimes(from a: Int, to b: Int) -> Int {
    var count = 0
    for number in a...b {
        if isPrime(number: number) {
            count += 1
        }
    }
    return(count)
}
let a = 1
let b = 20
let count = countPrimes(from: a, to: b)
print(count)
//bai tap 2
func day(thang: Int , nam : Int) -> Int
{
    switch thang {
    case 1,3,5,7,8,10,12:
        return 31
    case 4,6,9,11:
        return 30
    case 2:
        if nam % 4 == 0 {
            return 29
        } else {
            return 28
        }
    default:
        return 0
    }
}
let nam = 2023
for thang in 1...12 {
    let ngays = day(thang:thang, nam: nam)
    print("thang \(thang) co \(ngays)")
}
// bài tập 3
func sapxepChuoi(array: inout [Int]) {
    for k in 0..<array.count {
        var h = k
        while h > 0 && array[h] < array[h-1] {
            array.swapAt(h, h - 1)
            h -= 1
        }
    }
}

var chuois = [4,32,5,765,34,6]
sapxepChuoi(array: &chuois)
print(chuois)
// baitap4
func tinhtongcacchusotrongso(number:Int) -> Int
{
    var s = 0
    var g = number
    while g > 0 {
        g /= 10
        s += g % 10
    }
    return(s)
}
let number = 11239123342
let g = tinhtongcacchusotrongso(number: number)
print("tong của các chứ số trong số là \(g)")
// bài tập 5
func chenPhanTu(_ x: Int, vaoMang arr: inout [Int]) {
    if let max = arr.max(), let maxIndex = arr.firstIndex(of: max) {
        arr.insert(x, at: maxIndex+1)
    }
}
var mang: [Int] = [1, 3, 5, 10, 9]
chenPhanTu(6, vaoMang: &mang)
print(mang) // In ra [1, 3, 5, 7, 9, 6]
//bai tap 6
func giaiphuongtrinh(a:Double ,b:Double ,c:Double) {
    let delta = b * b - 4 * a * c
    if delta < 0 {
        print("phương trình vô nghiệm")
    }
    else if delta == 0 {
        let x = -b / (2 * a)
        print ("Phương trình có 1 nghiệm duy nhất là \(x)")
    }
    else if delta > 0
    {
        let x1 = ( -b + sqrt(delta)) / (2 * a)
        let x2 = ( -b - sqrt(delta)) / (2 * a)
        print("Phương trình có 2 nghiệm là \(x1)và \(x2)")
    }
}

    giaiphuongtrinh(a: 14, b: 12, c: 11)
