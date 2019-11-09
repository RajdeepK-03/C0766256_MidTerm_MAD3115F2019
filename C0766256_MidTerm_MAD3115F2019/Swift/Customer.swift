//
//  Customer.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//


import Foundation
class Customer {
    //  Variable declaration
    var custId : Int
    var firstName : String
    var lastName : String
    var fullName : String {
        return firstName + " " + lastName
    }
    var email : String
    var billDictionary = [Int:Bill]()
    var  totalBill : Float?
    
    
    static var activeCustomer = Customer()
    
     init()
     {
           self.custId = Int()
           self.firstName = String()
           self.lastName = String()
           self.email = String()
    }
    init(custId : Int, firstName : String, lastName : String, email : String, billDictionary : [Int:Bill]){
        self.custId = custId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.billDictionary = billDictionary
    }
    init(custId : Int, firstName : String, lastName : String, email : String){
        self.custId = custId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }

//  Function Overriding
}
