//
//  ViewController.swift
//  Assignment
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 Mitali. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        perform(#selector(self.goToLoginScreen), with: nil, afterDelay: 3)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func goToLoginScreen()
    {
        performSegue(withIdentifier: "lvc", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

