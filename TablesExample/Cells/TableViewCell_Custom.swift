//
//  TableViewCell_Custom.swift
//  TablesExample
//
//  Created by ronaldo avalos on 24/11/23.
//

import UIKit

class TableViewCell_Custom: UITableViewCell {

    
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var userMessageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        userImageView.clipsToBounds = true
        // frame.width = ancho de mi imagen
        userImageView.layer.cornerRadius =  userImageView.frame.width / 2
    }
    
    func setupCell(userName: String, userMessage: String,imageURL:URL?) {
           userNameLabel.text = userName
           userMessageLabel.text = userMessage
           
           if let imageURL = imageURL {
               // Cargar la imagen desde la URL
               DispatchQueue.global().async { [weak self] in
                   if let data = try? Data(contentsOf: imageURL),
                      let image = UIImage(data: data) {
                       DispatchQueue.main.async {
                           self?.userImageView.image = image
                       }
                   }
               }
           } else {
               // En caso de que no haya URL de imagen, puedes establecer una imagen predeterminada
               userImageView.image = UIImage(named: "imagen_predeterminada")
           }
       }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
}
