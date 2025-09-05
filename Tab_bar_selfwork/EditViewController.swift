//
//  EditViewController.swift
//  Tab_bar_selfwork
//
//  Created by Adilet Kistaubayev on 05.09.2025.
//

import UIKit

class EditViewController: UIViewController {
    
    @IBOutlet weak var nameEdit: UITextField!
    
    
    @IBOutlet weak var surnameEdit: UITextField!
    
    
    @IBOutlet weak var phoneEdit: UITextField!
    
    
    var index = 0
    
    var contact = Contact(name: "", surname: "", phoneNumber: "")
    
    var arrayContacts: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameEdit.text = contact.name
        
        surnameEdit.text = contact.surname
        
        phoneEdit.text = contact.phoneNumber
    }
    
    
    @IBAction func editContactButton(_ sender: Any) {
        
        let nameEdit = nameEdit.text!
        
    }
    
    
}
