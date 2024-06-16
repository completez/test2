//
//  Admin.swift
//  Project Swift
//
//  Created by Admin on 15/6/2567 BE.
//

import Foundation
import SwiftUI

public class addData : Identifiable{
    var name1:String
    var name2:String
    var price:Int
    var time:Int
    
    init(name1: String="",name2: String="", price: Int = 0, time: Int = 0) {
        self.name1 = name1
        self.name2 = name2
        self.price = price
        self.time = time
    }
    
}

public var Data = [
    addData(name1:"สามย่าน",name2: "สยาม",price: 8,time: 7 ),
    addData(name1:"สามย่าน",name2: "สยาม",price: 0,time: 27 ),
    addData(name1:"สามย่าน",name2: "สยาม",price: 0,time: 15 ),
    addData(name1:"สุวรรณภูมิ",name2: "สามย่าน",price: 450,time: 60 ),
    addData(name1:"สุวรรณภูมิ",name2: "สามย่าน",price: 63,time: 65 ),
    addData(name1:"สุวรรณภูมิ",name2: "สามย่าน",price: 83,time: 80 ),
    addData(name1:"สุวรรณภูมิ",name2: "ดอนเมือง",price: 124,time: 50 ),
    addData(name1:"สุวรรณภูมิ",name2: "ดอนเมือง",price: 0,time: 120 ),
    addData(name1:"ดอนเมือง",name2: "สยาม",price: 0,time: 15 ),
    addData(name1:"สุวรรณภูมิ",name2: "สยาม",price: 65,time: 30 ),
    addData(name1: "สยาม", name2: "สามย่าน", price: 8, time: 7),
    addData(name1: "สยาม", name2: "สามย่าน", price: 0, time: 27),
    addData(name1: "สยาม", name2: "สามย่าน", price: 0, time: 15),
    addData(name1: "สามย่าน", name2: "สุวรรณภูมิ", price: 450, time: 60),
    addData(name1: "สามย่าน", name2: "สุวรรณภูมิ", price: 63, time: 65),
    addData(name1: "สามย่าน", name2: "สุวรรณภูมิ", price: 83, time: 80),
    addData(name1: "ดอนเมือง", name2: "สุวรรณภูมิ", price: 124, time: 50),
    addData(name1: "ดอนเมือง", name2: "สุวรรณภูมิ", price: 0, time: 120),
    addData(name1: "สยาม", name2: "ดอนเมือง", price: 0, time: 15),
    addData(name1: "สยาม", name2: "สุวรรณภูมิ", price: 65, time: 30)

]



public let sortedData = Data.sorted{
    ($0.price, $0.time) < ($1.price, $1.time)
}

