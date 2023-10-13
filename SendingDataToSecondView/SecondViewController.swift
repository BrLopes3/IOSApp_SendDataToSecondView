//
//  SecondViewController.swift
//  SendingDataToSecondView
//
//  Created by Bruno Lopes on 2023-09-29.
//

import UIKit

class SecondViewController: UIViewController {
    
    //by default is public
    public var receivedMessage : String?
    
    
    @IBOutlet weak var lblMessageReceivedUILabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblMessageReceivedUILabel.text = receivedMessage
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
