//
//  ViewController.swift
//  Assignment
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 Mitali. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var imageLion: UIImageView!
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        perform(#selector(self.goToLoginScreen), with: nil, afterDelay: 5)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var lblStudentID: UILabel!
    
    @objc func goToLoginScreen()
    {
        performSegue(withIdentifier: "lvc", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

