//
//  BillDetailsViewController.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillDetailsViewController: UIViewController {
    var billInformation : Customer? = nil
    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
