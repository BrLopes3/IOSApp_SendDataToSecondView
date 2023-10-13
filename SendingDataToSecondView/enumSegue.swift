//
//  enumSegue.swift
//  SendingDataToSecondView
//
//  Created by Bruno Lopes on 2023-10-13.
//

import Foundation

//enumeration
//pre-defined list of segues to avoid dandling strings (DANGER!)
enum Segue{
    static let toSecondViewController = "toSecondViewController"
    
    static let toSecondViewControllerProgrammatically = "toSecondViewControllerProgrammatically"
}
