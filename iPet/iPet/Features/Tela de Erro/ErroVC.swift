//
//  ErroVC.swift
//  iPet
//
//  Created by Bruno Lopes on 11/03/22.
//

import UIKit

class ErroVC: UIViewController {
    
    @IBOutlet weak var errorImageView: UIImageView!
    @IBOutlet weak var errorMessageLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backButton.layer.cornerRadius = 7
        
    }
    
    @IBAction func didTapBackButton(_ sender: UIButton) {
    }
    
}
