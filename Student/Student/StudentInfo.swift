//
//  StudentInfo.swift
//  Student
//
//  Created by Admin on 1/7/20.
//  Copyright © 2020 drawtech. All rights reserved.
//

import UIKit
class StudentInfo{
    
    var name: String
    var address: String
    var country: String
    var phone: String
    var image: UIImage
    
    init(name: String, address: String, country: String, phone: String) {
        self.name = name
        self.address = address
        self.country = country
        self.phone = phone
        
        
        image = UIImage(named: self.name)!
    }
}
