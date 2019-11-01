//
//  ViewController.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var Email: UITextField!
    
    
    @IBOutlet weak var Password: UITextField!
    
    
    @IBOutlet weak var RememberMeSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func LoginButton(_ sender: UIBarButtonItem) {
        
    
        let userEmail = Email.text!
        let password = Password.text!
        if password.count < 6
        {
        
        if userEmail == "rajdeep@gmail.com" && password == "123"
        {
                print("User Successfully login")
        performSegue(withIdentifier: "User Sucessfully login", sender: nil)
                }
            else{
                    print("Incorrect Password")
                }
            }
        else{
                print("Incorrect Email")
            }
        }
      else{
            let alert = UIAlertController(title: "Email Error", message: "Your Email is less than 10 charachter. Please enter a valid email", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Ignore", style: .destructive, handler: nil))
            self.present(alert, animated: true)
        }
    

        //let sb = UIStoryboard(name: "Main", bundle: nil)
        //let CustomerVC = sb.instantiateViewController(withIdentifier: "CustomerVC") as! CustomerListTableViewController
        

        //navigationController?.pushViewController(CustomerVC, animated: true)
        
    

}

