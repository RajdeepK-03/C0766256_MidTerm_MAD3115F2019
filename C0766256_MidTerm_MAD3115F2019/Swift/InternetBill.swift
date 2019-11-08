//
//  InternetBill.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

 import Foundation
class InternetBill: Bill {
    //  Variable declaration
    var providerName : String
    var gbUsed : Float
    var billAmount : Float
    //  Initializer
    init(providerName : String, gbUsed : Float, billAmount : Float, billId : Int , billDate : String, billType : Bill.bTypes){
        self.providerName = providerName
        self.gbUsed = gbUsed
        self.billAmount = billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)
}
}
