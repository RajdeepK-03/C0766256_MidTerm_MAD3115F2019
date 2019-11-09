//
//  AddNewBillViewController.swift
//  C0766256_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddNewBillViewController: UIViewController {

    
    @IBOutlet weak var newBillId: UITextField!
    
    
    @IBOutlet weak var newBillDate: UITextField!
    
    @IBOutlet weak var BType: UISegmentedControl!
    
    
    @IBOutlet weak var BAmount: UITextField!
    
   let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        
        
        
        
        
//        // DatePicker
//        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
//        self.datePicker.backgroundColor = UIColor.white
//        self.datePicker.datePickerMode = UIDatePicker.Mode.date
//        textField.inputView = self.datePicker
//
//        // ToolBar
//        let toolBar = UIToolbar()
//        toolBar.barStyle = .default
//        toolBar.isTranslucent = true
//        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
//        toolBar.sizeToFit()


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
