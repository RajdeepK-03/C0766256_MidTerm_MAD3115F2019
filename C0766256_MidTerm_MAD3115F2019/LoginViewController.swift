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
        let gData = Singleton.getInstance()
        gData.createCustomer()
        Email.text = UserDefaults.standard.string(forKey: "u_name")
        Password.text = UserDefaults.standard.string(forKey: "u_password")
        RememberMeSwitch.isOn=true
            // Do any additional setup after loading the view.
    }
    @IBAction func LoginButton(_ sender: UIBarButtonItem) {
        
    
        let userEmail = Email.text
        let password = Password.text!
            
        //if password.count < 6
       //{
        if userEmail == "rajdeep@gmail.com" && password == "123" || userEmail == "deep@gmail.com" && password == "12345"
        {
                print("User Successfully login")
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let CustomerVC = sb.instantiateViewController(withIdentifier: "CustomerVC") as! CustomerListTableViewController
            
            
            navigationController?.pushViewController(CustomerVC, animated: true)
            
            if(RememberMeSwitch.isOn)
            {
                print("Write Code to remember userId/Password")
            }
            else
            {
                print("Remove UserId/Password if previously remembered/stored")
            }
            
        }
            
            
        else{

            let alert = UIAlertController(title: "Email or Password Error", message: "Please enter a valid email or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Ignore", style: .destructive, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
    @IBAction func RememberMeSwitch(_ sender: UISwitch) {
    
        if RememberMeSwitch.isOn
        {
            let u_name = Email.text!
            let u_password = Password.text!
            UserDefaults.standard.set(u_name, forKey: "u_name")
            UserDefaults.standard.set(u_password, forKey: "u_password")
            
        }
        else{
            UserDefaults.standard.removeObject(forKey: "u_name")
            UserDefaults.standard.removeObject(forKey: "u_password")
        }
        
    }
    


        
        
        //func readCustomersPlistFile(){
            
            //let plist = Bundle.main.path(forResource: "customers", ofType: "plist")
            
            //if let dict = NSMutableDictionary(contentsOfFile: plist!){
              //  if let customers = dict["customers"] as? [[String:Any]]
                //{
                  //  for customer in customers {
                    //    let id = customer["customerID"] as! Int
                     //   let firstName = customer["customerFirstName"] as! String
                       // let lastName = customer["customerLastName"] as! String
                       // let email = customer["email"] as! String
                        //let password = customer["password"] as! String
                        
        
                   // }}


}


