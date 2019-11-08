//
//  Insurance.swift
//  C0769647_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Insurance:Bill
{
    enum typeInsurance{
        case Home
        case Car
        case Business
    }
    var typeOfInsurance : typeInsurance
    var provider : String
    var startDate : Date
    var endDate : Date
    var totalInstallmentAmount :Int
    {
        get
        {
            let time_interval=endDate.timeIntervalSince(startDate) // from Stack OverFlow
            return Int(2*time_interval)
        }
    }
    
    
    init(Type: typeInsurance,Provider : String, StartDate: Date, EndDate: Date,BillId : String, BillDate : String,billAmount: Float, BillType : Bill.Types) {
        self.typeOfInsurance=Type
        self.provider=Provider
        self.startDate=StartDate
        self.endDate=EndDate
        super.init(billId: BillId, billDate: BillDate, billType: BillType)
    }
    
    override func printMyData() {
        print("******************************************************")
        print("\nTypeOfInsurance : \(typeOfInsurance)")
        print("Proveder: \(provider)")
        print("Start Date : \(startDate.dateFormat())")
        print("End Date : \(endDate.dateFormat())")
        print("Total Installment : \(totalInstallmentAmount)\n")    }
    
}
