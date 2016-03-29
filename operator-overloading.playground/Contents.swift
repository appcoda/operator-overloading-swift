//
//  Operator Overloading in Swift
//
//  Created by Cosmin Pupăză on 28/3/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

func *(lhs: String, rhs: Int) -> String {
  var result = lhs
  for _ in 2...rhs {
    result += lhs
  }
  return result
}
let u = "abc"
let v = u * 5

protocol Type {
  func +=(inout lhs: Self, rhs: Self)
}
extension String: Type {}
extension Int: Type {}
extension Double: Type {}
extension Float: Type {}
func *<T: Type>(lhs: T, rhs: Int) -> T {
  var result = lhs
  for _ in 2...rhs {
    result += lhs
  }
  return result
}
let x = "abc"
let y = x * 5
let a = 2
let b = a * 5
let c = 3.14
let d = c * 5
let e: Float = 4.56
let f = e * 5

infix operator ** {associativity left precedence 150}
func **<T: Type>(lhs: T, rhs: Int) -> T {
  var result = lhs
  for _ in 2...rhs {
    result += lhs
  }
  return result
}
let g = "abc"
let h = g ** 5
let i = 2
let j = i ** 5
let k = 3.14
let l = k ** 5
let m: Float = 4.56
let n = m ** 5

infix operator **= {associativity left precedence 150}
func **=<T: Type>(inout lhs: T, rhs: Int) {
  lhs = lhs ** rhs
}
var o = "abc"
o **= 5
var q = 2
q **= 5
var s = 3.14
s **= 5
var w: Float = 4.56
w **= 5







