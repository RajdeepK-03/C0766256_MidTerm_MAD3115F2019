//
//  Singleton.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Singleton: NSObject
{
    private var customerDictionary  = [Int:Customer]()
    private static var obj = Singleton()
    private override init() {
    }
    internal static func getInstance() -> Singleton
    {
        return obj
    }
    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
        let c = customerDictionary.count + 1
        let cust = Customer(custId: c, firstName: First_Name, lastName: Last_Name, email: email)
        self.AddCustomer(customer: cust)
    }
    func returnCustObject(customerID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if k == customerID
            {
               // print("test")
                return v
            }
        }
        return nil
    }
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
    func createCustomer()
    {
        let cust1 = Customer(custId: 1, firstName: "deep", lastName: "kaur", email: "deep@gmail.com")
        AddCustomer(customer: cust1)
        let cust2 = Customer(custId: 2, firstName: "Rajdeep", lastName: "Kaur", email: "Rajdeep@gmail.com")
        AddCustomer(customer: cust2)
        let cust3 = Customer(custId: 3, firstName: "gagan", lastName: "kang", email: "gagan@gmail.com")
        AddCustomer(customer: cust3)
        
        print(customerDictionary)
    }
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.custId!)
        
    }

}

