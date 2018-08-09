//
//  ElectricityBillViewController.swift
//  Assignment
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 Mitali. All rights reserved.
//

import UIKit

class ElectricityBillViewController: UIViewController
{
    var electricityBill = ElectricityBill()
    @IBOutlet weak var txtCustomerName: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var lblBillDate: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var segmentGender: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnCalculate(_ sender: UIButton)
    {
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
