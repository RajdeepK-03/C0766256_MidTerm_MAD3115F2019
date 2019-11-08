//
//  Singleton.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//
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
        
        let i1 = InternetBill(providerName : "Rogers", gbUsed : 500, billAmount : 56.50, billId : 1 , billDate : "Wednesday, 19 June, 2019", billType : Bill.bTypes.Internet)
        let m1 = MobileBill(manufacturerName:"Galaxy", planName:"Prepaid Talk", phoneNumber:6464647484, internetUsed:5, minutesUsed:356, billAmount:250.0, billId : 2, billType : Bill.bTypes.Mobile, billDate: "Wednesday, 19 June, 2019")
        
    
        let cust1 = Customer(custId: 1, firstName: "deep", lastName: "kaur", email: "deep@gmail.com", billDictionary: [i1.billId : i1, m1.billId : m1])
        AddCustomer(customer: cust1)
        
        
        let h1 = HydroBill(billID : 3 , billDate : "Wednesday, 19 June, 2019", billType : Bill.bTypes.Hydro, agencyName : "Planet Energy", unitConsumed : 29 , billAmount : 54.35)
        let i2 = InternetBill(providerName : "Fido", gbUsed : 600, billAmount : 70.00, billId : 4 , billDate : "Wednesday, 29 June, 2019", billType : Bill.bTypes.Internet)
        
        let cust2 = Customer(custId: 2, firstName: "Rajdeep", lastName: "Kaur", email: "Rajdeep@gmail.com", billDictionary: [h1.billId : h1, i2.billId : i2])
        AddCustomer(customer: cust2)
        
        
        let m2 = MobileBill(manufacturerName:"Apple", planName:"Prepaid Talk + Messages", phoneNumber:6476954211, internetUsed:6, minutesUsed:124, billAmount:80.00, billId : 5, billType : Bill.bTypes.Mobile, billDate: "Friday, 19 June, 2019")
        let cust3 = Customer(custId: 3, firstName: "gagan", lastName: "kang", email: "gagan@gmail.com", billDictionary: [m2.billId : m2])
        AddCustomer(customer: cust3)
        let cust4 = Customer(custId: 4, firstName: "jaspreet", lastName: "Kaur", email: "preet@gmail.com")
        AddCustomer(customer: cust4)
        let cust5 = Customer(custId: 5, firstName: "preet", lastName: "chahal", email: "preet@gmail.com")
        AddCustomer(customer: cust5)
        
            
        }
    
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.custId)
        
    }
 // referred from https://learnappmaking.com/singletons-swift/
    
}

