//
//  GetNameViewController.swift
//  PassData
//
//  Created by Zhehui Yang on 2/23/22.
//

import UIKit

protocol SendNameDelegate {
    func setFirstNameAndLastName(firstName: String, lastName: String)
    
}

class GetNameViewController: UIViewController {
    var firstName : String?
    var lastName : String?
    var SendNameDelegate : SendNameDelegate?
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let firstName = firstName else{return}
        guard let lastName = lastName else{return}
        txtFirstName.text = firstName
        txtLastName.text = lastName
    }
    

    @IBAction func saveName(_ sender: Any) {
        guard let first = txtFirstName.text else{return}
        guard let last = txtLastName.text else{return}
        
        SendNameDelegate?.setFirstNameAndLastName(firstName: first, lastName: last)
        self.navigationController?.popViewController(animated: true)
    }
    

}
