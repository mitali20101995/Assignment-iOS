//
//  ElectricityBillViewController.swift
//  Assignment
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 Mitali. All rights reserved.
//

import UIKit

class ElectricityBillViewController: UIViewController, UITextFieldDelegate
{
    var electricityBill = ElectricityBill()
    
    @IBOutlet weak var txtCustomerID: UITextField!
    @IBOutlet weak var txtCustomerName: UITextField!
    
    @IBOutlet weak var lblBillDate: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var segmentGender: UISegmentedControl!
    
    @IBOutlet weak var txtBillDate: UITextField!
    
    var datePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        txtBillDate.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickUpDate(self.txtBillDate)
    }
    
    //Function of datePicker
    
    //MARK:- Function of datePicker
    func pickUpDate(_ textField : UITextField){
        
        // DatePicker
        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.datePicker.backgroundColor = UIColor.white
        self.datePicker.datePickerMode = UIDatePickerMode.date
        textField.inputView = self.datePicker
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
        
    }
    // MARK:- Button Done and Cancel
    @objc func doneClick() {
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        txtBillDate.text = dateFormatter1.string(from: datePicker.date)
        txtBillDate.resignFirstResponder()
    }
    
    @objc func cancelClick() {
        txtBillDate.resignFirstResponder()
    }
    
    @IBAction func btnCalculate(_ sender: UIButton)
    {
        electricityBill.customerID = txtCustomerID.text
        electricityBill.customerName = txtCustomerName.text
        
        if segmentGender.selectedSegmentIndex == 0
        {
            electricityBill.gender = .MALE
        }
        else if segmentGender.selectedSegmentIndex == 1
        {
            electricityBill.gender = .FEMALE
        }
        else
        {
            electricityBill.gender = .OTHER
        }
        
        electricityBill.billDate = datePicker.date
    
        
        performSegue(withIdentifier: "bdvc", sender: self)
        
        
        
    
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let dest = segue.destination as? BillDetailViewController
        dest?.lblCustomerID.text = String(electricityBill.customerID)
        dest?.lblName.text = String(electricityBill.customerName)
        dest?.lblGender.text = electricityBill.gender.rawValue
        dest?.lblTotal.text = String(electricityBill.totalPayment)
        dest?.lblBillDate.text = electricityBill.billDate.description
    }
 

}
