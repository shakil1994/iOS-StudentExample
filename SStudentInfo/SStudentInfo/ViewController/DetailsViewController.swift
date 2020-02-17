//
//  DetailsViewController.swift
//  SStudentInfo
//
//  Created by DhakaLive on 2/10/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var student: Student?
    
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let std = student {
            lblFirstName.text = std.firstName
            lblLastName.text = std.lastName
            labelAddress.text = std.address
            lblPhone.text = std.mobile
        }

        // Do any additional setup after loading the view.
    }
}
