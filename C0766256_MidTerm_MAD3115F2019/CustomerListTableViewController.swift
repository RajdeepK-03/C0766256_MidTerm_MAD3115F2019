//
//  CustomerListTableViewController.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var newCustomer: UIBarButtonItem!
    
    @IBOutlet weak var CustTable: UITableView!

    var sinObj = Singleton.getInstance()
    var c : Customer? = nil
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sinObj.returnCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //print(indexPath.row)
        c = sinObj.returnCustObject(customerID: indexPath.row+1)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = c?.fullName
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyb = UIStoryboard(name: "Main", bundle: nil)
        let BillListVC = storyb.instantiateViewController(withIdentifier: "BillListVC") as! BillDetailsViewController
        BillListVC.billInformation=sinObj.returnCustObject(customerID: indexPath.row+1); self.navigationController?.pushViewController(BillListVC, animated: true)
        //let temp = sinObj.returnCustObject(customerID: Int(indexPath.row+1))
//        Customer.activeCustomer.custId = temp!.custId
//        Customer.activeCustomer.firstName = temp!.firstName
//        Customer.activeCustomer.lastName = temp!.lastName
//
    }
    
@IBAction func AddCustomerButton(_ sender: UIBarButtonItem)
{
    let sb1 = UIStoryboard(name: "Main", bundle: nil)
      let NewCustomerVC = sb1.instantiateViewController(withIdentifier: "NewCustomerVC") as! AddNewCustomerViewController
    navigationController?.pushViewController(NewCustomerVC, animated: true)
    
}
    override func viewDidLoad() {
        super.viewDidLoad()
        CustTable.dataSource = self
        CustTable.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        CustTable.reloadData()
    }
    
}
