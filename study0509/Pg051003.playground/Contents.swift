//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var dictionary = ["Pizza":10.99,"Ice Cream":4.99,"Salad":7.99]

print("The total cost of my meal is \(dictionary["Pizza"]! + dictionary["Ice Cream"]! + dictionary["Salad"]!)")

dictionary["Drink"] = 8

dictionary.count

print("The total is ",dictionary["Pizza"]!+dictionary["Ice Cream"]!+dictionary["Salad"]!+dictionary["Drink"]!, "dollars.")

dictionary.removeValue(forKey: "Drink")
dictionary.count


var gameC = [String:Decimal]()
gameC["Ghost"]=9
gameC["Devil"]=10
print(gameC)












