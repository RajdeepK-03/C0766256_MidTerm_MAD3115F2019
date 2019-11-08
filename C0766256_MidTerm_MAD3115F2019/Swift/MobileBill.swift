//
//  MobileBill.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//



import Foundation
class MobileBill: Bill{
    //  Variable declaration
    var manufacturerName : String
    var planName : String
    var phoneNumber : Int
    var minutesUsed : Int
    var internetUsed : Float
    var billAmount : Float
    //  Initializer
    init(manufacturerName:String, planName:String, phoneNumber:Int, internetUsed:Float, minutesUsed:Int, billAmount:Float, billId : Int, billType : bTypes, billDate: String) {
        self.manufacturerName = manufacturerName
        self.planName = planName
        self.phoneNumber = phoneNumber
        self.internetUsed = internetUsed
        self.minutesUsed = minutesUsed
        self.billAmount = billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    //  Override
}
