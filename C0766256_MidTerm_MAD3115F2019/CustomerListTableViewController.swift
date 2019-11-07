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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CustTable.dataSource = self
        CustTable.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sinObj.returnCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        c = sinObj.returnCustObject(customerID: indexPath.row+1)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = c?.fullName
        return cell
    }
    
    
    
@IBAction func AddCustomerButton(_ sender: UIBarButtonItem)
{
    let sb1 = UIStoryboard(name: "Main", bundle: nil)
      let NewCustomerVC = sb1.instantiateViewController(withIdentifier: "NewCustomerVC") as! AddNewCustomerViewController
    navigationController?.pushViewController(NewCustomerVC, animated: true)
    
}
    

}
