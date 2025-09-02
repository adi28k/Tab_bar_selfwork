//
//  ViewController.swift
//  Tab_bar_selfwork
//
//  Created by Adilet Kistaubayev on 30.08.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func addContact(_ sender: Any) {
        
        let name = nameTextField.text
        
        let surname = surnameTextField.text
        
        let phoneNumber = phoneNumberTextField.text
        
        var newContact = Contact(name: name ?? "", surname: surname ?? "", phoneNumber: phoneNumber ?? "")
        
        do {
             
            if  let data = UserDefaults.standard.data(forKey: "contacts") {
                
                var array = try JSONDecoder().decode([Contact].self, from: data)
                
                array.append(newContact)
                
                let encodedata = try JSONEncoder().encode(array)
                
            } else {
                let encodedata = try JSONEncoder().encode([newContact])
                
                UserDefaults.standard.set(encodedata,forKey: "contacts")
            }
        }
        
    }
    
    
    

}

