//
//  ViewController.swift
//  PassData
//
//  Created by Zhehui Yang on 2/23/22.
//

import UIKit

class ViewController: UIViewController, SendNameDelegate {
    
    

    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func getName(_ sender: Any) {
        performSegue(withIdentifier: "SegueGetName", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueGetName"{
            let getNameVC = segue.destination as! GetNameViewController
            guard let firstName = lblFirstName.text else{return}
            guard let lastName = lblLastName.text else{return}
            
            getNameVC.firstName = firstName
            getNameVC.lastName = lastName
            //when protocol is called, this view controller will handle it
            getNameVC.SendNameDelegate = self
        }
    }
    func setFirstNameAndLastName(firstName: String, lastName: String) {
        lblFirstName.text = firstName
        lblLastName.text = lastName
    }
    
}

