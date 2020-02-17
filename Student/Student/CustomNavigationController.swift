//
//  CustomNavigationController.swift
//  Student
//
//  Created by Admin on 1/20/20.
//  Copyright © 2020 drawtech. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.barStyle = .black
        self.navigationBar.backgroundColor = UIColor.convertToHex(hex: "#b61827")
        self.navigationBar.barTintColor = UIColor.convertToHex(hex: "#1b5e20")
        self.navigationBar.tintColor = UIColor.convertToHex(hex: "#1b5e20")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
