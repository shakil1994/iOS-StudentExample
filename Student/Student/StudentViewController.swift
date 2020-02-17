//
//  StudentViewController.swift
//  Student
//
//  Created by Admin on 1/7/20.
//  Copyright © 2020 drawtech. All rights reserved.
//

import UIKit

class StudentViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var addressLbl: UILabel!
    
    @IBOutlet weak var countryLbl: UILabel!
    
    @IBOutlet weak var phoneLbl: UILabel!
    
    var students: StudentInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLbl.text = students?.name
        addressLbl.text = students?.address
        countryLbl.text = students?.country
        phoneLbl.text = students?.phone
        imageView.image = students?.image

        // Do any additional setup after loading the view.
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
