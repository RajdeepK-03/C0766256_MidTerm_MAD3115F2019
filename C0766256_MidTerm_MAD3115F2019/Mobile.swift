//
//  Mobile.swift
//  C0769647_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Mobile : Bill{
    
    
    
    var manufacturerName:String
    var planName:String
    var mobileNumber:String
    var internetUsed:Float
    var minutesUsed:Int
    var billAmount : Float
    
    init(manufacturerName:String,planName:String,mobileNumber:String,internetUsed:Float,minutesUsed:Int,billAmount:Float,billId : String,billType : Types,billDate: String) {
        self.manufacturerName=manufacturerName
        self.planName=planName
        self.mobileNumber=mobileNumber
        self.internetUsed=internetUsed
        self.minutesUsed=minutesUsed
        self.billAmount=billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)
        }
    
    override func printMyData() {
        
        print("******************************************************")
        print("\nBill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Manufacturer Name : \(String(describing: manufacturerName))")
        print("Plan Name : \(String(describing: planName))")
        print("Mobile number : \(String(describing: mobileNumber))")
        print("Minutes used : \(String(describing: minutesUsed.minuteFormat()))")
        print("Bill Amount : \(billAmount.currencyFormat())")
        print("Internet Used : \(String(describing: internetUsed.gbUsed()))\n")
        
    }
}

