//
//  ForgotPasswordViewController.swift
//  iPet
//
//  Created by Bruno Lopes on 17/03/22.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var iPetLabel: UILabel!
    @IBOutlet weak var sloganLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var changePasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.changePasswordButton.layer.cornerRadius = 7
        
    }
    
    @IBAction func didTapChangePasswordButton(_ sender: UIButton) {
    }
    

}
