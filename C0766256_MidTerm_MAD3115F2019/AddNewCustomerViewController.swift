//
//  AddNewCustomerViewController.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    var temp = Singleton.getInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func add(_ sender: Any) {
    
      let story=UIStoryboard(name: "Main", bundle: nil)
    let CustomerVC=story.instantiateViewController(withIdentifier: "CustomerVC") as! CustomerListTableViewController
        navigationController?.pushViewController(CustomerVC, animated: true)
        let fname = firstName.text!
        let lname = lastName.text!
        if (email.text?.isValidEmail())!
        {
        let Email = email.text!
        temp.addNewCustomer(First_Name: fname, Last_Name: lname, email: Email)
        
       // self.performSegue(withIdentifier: "saved", sender: self)
        let alert = UIAlertController(title: "Success", message: "Customer added successfully", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
    else{
        
        let alert = UIAlertController(title: "Invalid Email", message: "Please Enter a Valid E-mail Address", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alert, animated: true)
        
    }
    }
    
//    func  ValidEmail() -> Bool
//    {
//        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//        return emailTest.evaluate(with: self)
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
