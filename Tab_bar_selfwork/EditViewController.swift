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
        
        let surnameEdit = surnameEdit.text!
        
        let phoneEdit = phoneEdit.text!
        
        
        var editContact = Contact(name: nameEdit, surname: surnameEdit, phoneNumber: phoneEdit)
        
        arrayContacts[index] = editContact
        
        
        
        
        do {
            
            let encodedate = try JSONEncoder().encode(arrayContacts)
            UserDefaults.standard.set(encodedate, forKey: "contactsArray")
            
        }
        
        catch {
            print("unable to code \(error)")
        }
    }
    
    
}
