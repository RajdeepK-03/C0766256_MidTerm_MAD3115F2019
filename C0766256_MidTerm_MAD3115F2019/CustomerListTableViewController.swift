//
//  CustomerListTableViewController.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   var temp = Singleton.getInstance()

    @IBOutlet weak var newCustomer: UIBarButtonItem!
    
    @IBOutlet weak var CustTable: UITableView!

    
    
    @IBAction func AddCustomerButton(_ sender: UIBarButtonItem) {
    
    
        let sb1 = UIStoryboard(name: "Main", bundle: nil)
        let NewCustomerVC = sb1.instantiateViewController(withIdentifier: "NewCustomerVC") as! AddNewCustomerViewController
        
        
        navigationController?.pushViewController(NewCustomerVC, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CustTable.delegate = self
        CustTable.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
