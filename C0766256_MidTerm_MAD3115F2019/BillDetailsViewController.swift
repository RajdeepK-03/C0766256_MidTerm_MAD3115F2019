//
//  BillDetailsViewController.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillDetailsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (billInformation?.array1.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let a = billobj
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillCell", for: indexPath) as? BillViewCellTableViewCell
        cell?.BillID.text =  "\(a?.billId)"
        return cell!
    }
    

    
    var sinObj = Singleton.getInstance()
    
    
    
    var billInformation : Customer? = nil
    var billobj : Bill? = nil
    
    
    
    @IBAction func addnewbill(_ sender: UIBarButtonItem) {
    }
    @IBOutlet weak var CustID: UILabel!
   
    
    @IBOutlet weak var CustName: UILabel!
    
    @IBOutlet weak var CustEmail: UILabel!
    @IBOutlet weak var TotalBill: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        CustID.text = billInformation?.custId.castString()
        CustName.text = billInformation?.fullName
        CustEmail.text = billInformation?.email
        TotalBill.text = billInformation?.totalBill?.formatCurrency()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var BillTable: UITableView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
