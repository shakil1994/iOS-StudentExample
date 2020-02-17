//
//  ViewController.swift
//  SStudentInfo
//
//  Created by DhakaLive on 2/10/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    
    private func clearText(){
        txtFirstName.text = ""
        txtLastName.text = ""
        txtAddress.text = ""
        txtPhone.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFirstName.delegate = self
        txtLastName.delegate = self
        txtAddress.delegate = self
        txtPhone.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func save(_ sender: Any) {
        view.endEditing(true)
        
        //guard let firstName = txtFirstName.text else {
            //return
        //}
        
        let firstName = txtFirstName.text;
        // Check for empty fields
        if firstName?.isEmpty ?? true {
            // Display alert message
            messageAlertDialog()
            return
        }
        
//        guard let lastName = txtLastName.text else {
//            return
//        }
//
//        guard let address = txtAddress.text else {
//            return
//        }
//
//        guard let phone = txtPhone.text else {
//            return
//        }
        
        
        let lastName = txtLastName.text
        // Check for empty fields
        if lastName?.isEmpty ?? true{
            messageAlertDialog()
            return
        }
        
        
        let address = txtAddress.text
        // Check for empty fields
        if address?.isEmpty ?? true{
            messageAlertDialog()
            return
        }
        
        
        let phone = txtPhone.text
        // Check for empty fields
        if phone?.isEmpty ?? true{
            messageAlertDialog()
            return
        }
        
        let student = Student(firstName: firstName!, lastName: lastName!, address: address!, mobile: phone!)
        
        let detailsVC = storyboard?.instantiateViewController(identifier: "detailsVC") as! DetailsViewController
        detailsVC.student = student
        self.navigationController?.pushViewController(detailsVC, animated: true)
        
        clearText()
    }
    
    @IBAction func goToAnotherStorybord(_ sender: Any) {
        view.endEditing(true)
        let storyBoard = UIStoryboard(name: "Second", bundle: .main)
        if let secondVC = storyBoard.instantiateViewController(identifier: "secondVC") as? SecondViewController {
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    private func messageAlertDialog(){
        let alert = UIAlertController(title: "Warning", message: "All fields are required", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
}

