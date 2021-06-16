//
//  StartingViewController.swift
//  MP4
//
//  Created by yogendra singh on 6/16/21.
//  Copyright © 2021 codeepie. All rights reserved.
//

import UIKit

class StartingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func View(_ sender: Any) {
        
         performSegue(withIdentifier: "nextVC", sender: self)

    }
    
}
