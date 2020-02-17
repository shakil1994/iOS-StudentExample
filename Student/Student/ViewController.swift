//
//  ViewController.swift
//  Student
//
//  Created by Admin on 1/7/20.
//  Copyright © 2020 drawtech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell")
        cell?.textLabel?.text = students[indexPath.row].name.capitalized
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = indexPath.row
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? StudentViewController {
            destination.students = students[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
    
    
    var students = [StudentInfo]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let afnan = StudentInfo(name: "afnan", address: "Dhaka", country: "Bd", phone: "01679647908")
        students.append(afnan)
        let habibee = StudentInfo(name: "habibee", address: "Kushtia", country: "Bd", phone: "01712922938")
        students.append(habibee)
        let ucchash = StudentInfo(name: "ucchash", address: "Gaibandha", country: "Bd", phone: "01529456734")
        students.append(ucchash)
        let rana = StudentInfo(name: "rana", address: "Gopalganj", country: "Bd", phone: "01515294045")
        students.append(rana)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    
    }


}

