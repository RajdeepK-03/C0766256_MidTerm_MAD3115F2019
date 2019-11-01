//
//  Hydro.swift
//  C0769647_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Hydro : Bill
{
    
    
    var agencyName:String
    var unitsConsumed: Float
    var billAmount : Float
   
    init(agencyName:String,unitsConsumed:Float,billAmount : Float,billId : String,billType : Bill.Types,billDate : String)
    {
        self.agencyName=agencyName
        self.unitsConsumed=unitsConsumed
        self.billAmount=billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)
        
    }
    
    override func printMyData() {
        print("******************************************************")
        print("\nBill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Agency Name : \(agencyName)")
        print("Unit Consumed : \(unitsConsumed.UnitFormat())")
        print("Bill Amount : \(billAmount.currencyFormat())\n")    }
    
}
