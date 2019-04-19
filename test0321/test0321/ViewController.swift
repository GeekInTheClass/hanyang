//
//  ViewController.swift
//  test0321
//
//  Created by 남혜빈 on 2019. 3. 21..
//  Copyright © 2019년 남혜빈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var coupleForView:user?
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var birth: UILabel!
    @IBOutlet weak var phonenumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        name.text = coupleForView?.name
        birth.text = coupleForView?.birth
        phonenumber.text = coupleForView?.phonenumber
    }

}

