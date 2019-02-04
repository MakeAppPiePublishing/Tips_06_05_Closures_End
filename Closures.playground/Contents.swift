import UIKit
//
//  An exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//


func roundPizzaVolume(height:Double, diameter:Double, completionHandler:(Bool,Double)->Void) -> Double{
    let pi = Double.pi
    let z = diameter / 2.0
    let a = height
    let v = pi * z * z * a //My favorite pun.
    completionHandler(v>0,v)
    return v
}
roundPizzaVolume(height: -2, diameter: 10){
    (success,volume) in
    if !success{
        print("Invalid Volume \(volume)")
    }
}

func anyPizzaVolume(height:Double, length:Double, width:Double, area:(Double,Double)->Double)-> Double{
    let volume = height * area(length,width)
    return volume
}

anyPizzaVolume(height: 2, length: 10, width: 10) {
    (l,w) in
    let r = l / 2.0
    return r * r * Double.pi
}

anyPizzaVolume(height: 2, length: 10, width: 10) {
    (l,w) in
    return l * w
}
