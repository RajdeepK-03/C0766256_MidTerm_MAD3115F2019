//
//  Bill.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
import Foundation
class Bill{
    func display() {
    }
    //  Variable Declaration
    var billId : Int
    var billDate : String
    //var amount : Float
    enum bTypes {
        case Internet
        case Mobile
        case Hydro
    }
    var billType : bTypes
    var billAmount : Float
    init(billId : Int , billDate : String, billType : bTypes, billAmount : Float) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.billAmount = billAmount
    }
}
