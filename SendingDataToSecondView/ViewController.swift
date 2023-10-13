//
//  ViewController.swift
//  SendingDataToSecondView
//
//  Created by Bruno Lopes on 2023-09-29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMessageUITextField: UITextField!
    
    
    @IBAction func btnSendMessageTouchUpInside(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == Segue.toSecondViewController{
            return !txtMessageUITextField.text!.isEmpty
        }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Segue.toSecondViewController || segue.identifier == Segue.toSecondViewControllerProgrammatically{
            
            let secondViewController = segue.destination as! SecondViewController
            secondViewController.receivedMessage = txtMessageUITextField.text
            
        }
    }
    


    @IBAction func txtInputEditingChanged(_ sender: Any) {
        
        txtMessageUITextField.backgroundColor = .white
        
    }
    
    /*
     Flow for Segue
     Button > ViewController -> ShouldPerformSegue (true) -> PrepareForSegue
     
     ViewController > ViewController -> XX NO ShouldPerformSegue XX -> PrepareForSegue
     
     */
    
    //red button
    @IBAction func btnSendMessageProgrammaticallyTouchUpInside(_ sender: Any) {
        
        if !txtMessageUITextField.text!.isEmpty{
            
            performSegue(withIdentifier: Segue.toSecondViewControllerProgrammatically, sender: self)
        }
        
    }
    
    
    
}

