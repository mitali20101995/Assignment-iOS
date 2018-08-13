//
//  LoginViewController.swift
//  Assignment
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 Mitali. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var switchRememberMe: UISwitch!
    
    @IBOutlet var lblRememberMe: UIView!
    
    var userDefault: UserDefaults?
    
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnLogin(_ sender: UIButton)
    {
        userDefault = UserDefaults.standard
        
        if txtUserName.text == "admin" && txtPassword.text == "admin@123"
        {
            performSegue(withIdentifier: "ebvc", sender: self)
        }
    
        else
        {
            let alert  =
                UIAlertController(title: "Message", message: "Incorrect Username or Password", preferredStyle: UIAlertControllerStyle.actionSheet)
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
        
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
