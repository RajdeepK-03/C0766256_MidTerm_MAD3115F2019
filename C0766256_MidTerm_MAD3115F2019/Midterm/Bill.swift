//
//  Bill.swift
//  C0769647_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Bill:IDisplay{
    
    
    var billId : String
    var billDate :  String
    enum Types {
        case Internet
        case Hydro
        case Mobile
        case Insurance
    }
    var billType : Types
    var totalBillAmount : Float = 0
    
    
    init(billId : String , billDate : String, billType : Types) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    }
    
    func printMyData() {
        
    }
   
}
