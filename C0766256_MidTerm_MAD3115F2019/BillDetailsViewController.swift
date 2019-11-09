//
//  BillDetailsViewController.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillDetailsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    var billInformation : Customer? = nil
    
    
    var sinObj = Singleton.getInstance()

    
    
   
    @IBOutlet weak var CustID: UILabel!
   
    
    @IBOutlet weak var CustName: UILabel!
    
    @IBOutlet weak var CustEmail: UILabel!
    @IBOutlet weak var TotalBill: UILabel!
   
       
    @IBOutlet weak var BillTable: UITableView!
    
      override func viewDidLoad() {
            super.viewDidLoad()

            CustID.text = billInformation?.custId.castString()
            CustName.text = billInformation?.fullName
            CustEmail.text = billInformation?.email
        self.BillTable.delegate = self
        self.BillTable.dataSource = self
            // Do any additional setup after loading the view.
        }
    
    @IBAction func NewBillButton(_ sender: UIBarButtonItem) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let NewBillVC = sb.instantiateViewController(withIdentifier: "NewBillVC") as! AddNewBillViewController
        
        
        navigationController?.pushViewController(NewBillVC, animated: true)    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ((billInformation?.billDictionary.count)!)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillCell")!
        let userbill = billInformation!.billDictionary[indexPath.row + 1]
         var userdetails = ""
        if userbill?.billType == Bill.bTypes.Mobile
        {
            cell.textLabel?.numberOfLines = 12
            let mBill = userbill as! MobileBill
            userdetails = "\nBill Type : Mobile \nManufacturer Name : \(mBill.manufacturerName) \nPlan Name : \(mBill.planName) \nMobile Number : \(mBill.phoneNumber) \nInternet used : \(mBill.internetUsed) \nMinutes Used : \(mBill.minutesUsed) "
        }
        else{
            if userbill?.billType == Bill.bTypes.Internet
            {
                cell.textLabel?.numberOfLines = 12
                let iBill = userbill as! InternetBill
                userdetails = "\nBill Type : Internet \nProvider Name : \(iBill.providerName) \nInternet Used : \(iBill.gbUsed)"
            }
            else{
                if userbill?.billType == Bill.bTypes.Hydro
                {
                    cell.textLabel?.numberOfLines = 12
                    let hBill = userbill as! HydroBill
                    userdetails = "\nBill Type : Hydro \nAgency Name : \(hBill.agencyName) \nUnit Consumed : \(hBill.unitConsumed )"
                }
            }
        }

        //let activeCustomerBill = Customer.activeCustomer.billDictionary[indexPath.row]

        cell.textLabel?.text = "Bill Id : \(String(describing: userbill!.billId)) \n Bill Date : \(String(describing: userbill!.billDate)) \n Bill Type : \(String(describing: userbill!.billType)) \n Bill Amount : \(String(describing: userbill!.billAmount)) \(userdetails)"
        
        return cell
    }
    }


