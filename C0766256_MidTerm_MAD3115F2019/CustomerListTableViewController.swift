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
        navigationItem.hidesBackButton = true
        LogOutButton()
        temp.createCustomer()        // Do any additional setup after loading the view.
    }
    private func LogOutButton()
    {
        let btnLogOut = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(CustomerListTableViewController.logout(sender:)))
        navigationItem.leftBarButtonItem = btnLogOut
        navigationItem.leftBarButtonItems = [btnLogOut]
    }
    @objc func logout(sender: UIBarButtonItem)
    {
        navigationController?.popViewController(animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        CustTable.reloadData()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return temp.returnCount()
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let x = temp.returnCustObject(customerID: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = x?.fullName
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Customer's List"
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb3 = UIStoryboard(name: "Main", bundle: nil)
        let BillListVC = sb3.instantiateViewController(withIdentifier: "BillVC") as? BillDetailsViewController
        BillListVC?.billInformation = temp.returnCustObject(customerID: indexPath.row + 1)
        navigationController?.pushViewController(BillListVC!, animated: true)
    } /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
