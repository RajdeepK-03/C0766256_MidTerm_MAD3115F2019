//
//  HydroBill.swift
//  C0764930_MidTerm_MAD3115F2019-P1
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class HydroBill:Bill{
    
    //  Variable declaration
    var agencyName : String
    var unitConsumed : Int
    
    //  initializer
    init(billID : Int , billDate : String, billType : bTypes, agencyName : String, unitConsumed : Int , billAmount : Float) {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        super.init(billId : billID, billDate : billDate, billType : billType, billAmount: billAmount)
        
    }
    
    
}
