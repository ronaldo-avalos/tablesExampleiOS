//
//  TableViewCell_Custom.swift
//  TablesExample
//
//  Created by ronaldo avalos on 24/11/23.
//

import UIKit

class TableViewCell_Custom: UITableViewCell {

    
    @IBOutlet weak var userImageView: UIView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var userMessageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        userImageView.clipsToBounds = true
        // frame.width = ancho de mi imagen
        userImageView.layer.cornerRadius =  userImageView.frame.width / 2
    }
    
     func setupCell(userName:String,userMessage:String){
        userNameLabel.text = userName
        userMessageLabel.text = userMessage
        
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
}
