//
//  MessageVC.swift
//  iPet
//
//  Created by Amanda Hack on 17/03/22.
//

import UIKit

class MessageViewController: UIViewController {

    @IBOutlet weak var fotoImageView: UIImageView!
    
    @IBOutlet weak var nomeTituloUILabel: UILabel!
    
    @IBOutlet weak var nomePetUILabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textView: UIView!
    
    @IBOutlet weak var messageUITextField: UITextField!
    
    @IBOutlet weak var enviarMessageUIButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialConfig()
        
    }

    private func initialConfig(){
        
        self.fotoImageView.layer.cornerRadius = fotoImageView.frame.size.width/2
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(MessageTableViewCell.nib(), forCellReuseIdentifier: MessageTableViewCell.identifier)
        
        title = "Conversa"
        
    }

}

extension MessageViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function)
    }
        
}

extension MessageViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MessageTableViewCell.identifier, for: indexPath) as? MessageTableViewCell
        cell?.messageTextLabel.text = "Hello"
        cell?.horarioTextLabel.text = "19:35"
        return cell ?? UITableViewCell()
    }
}
