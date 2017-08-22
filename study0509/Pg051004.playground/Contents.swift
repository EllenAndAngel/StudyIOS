//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let age = 13
if age < 10 {
    print("You cannot stay at home alone")
}
else{
    print("You are big kid")
}

var name = "kirsten"

if name == "rob"||name=="kirsten" {
    name = "rob big"
}
else{
    name = "no no no "
}
print(name)

let correctLoginName = "Ellenzhg"
let correctPassword = "zyr720513"

var userName = "Ellnzhg"
var password = "zyr720513"

if userName == correctLoginName && password == correctPassword {
    print("You can login ")
}else if userName != correctLoginName && password != correctPassword {
    print("We don't have your record")
}else if userName == correctLoginName {
    print("You got wrong password")
}else {
    print("You got wrong username")
}



