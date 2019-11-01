//
//  Customer.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Customer
{
    var custId : Int?
    var firstName : String?
    var lastName : String?
    var fullName : String
    {
        return "\(self.firstName) \(self.lastName)"
    }
    var email : String!
    var  totalBill : Float?
    init(custId : Int, firstName : String, lastName : String, email : String)
    {
        self.custId = custId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}
