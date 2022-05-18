//
//  AlbañilesDetailVC.swift
//  CollectionViewCodigo
//
//  Created by Jesus Urbano on 1/12/22.
//

import UIKit

class AlbañilesDetailVC: UIViewController {
    
    //OUTLETS
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var aboutMeLabel: UILabel!
    @IBOutlet weak var aboutMeText: UITextView!
    
    @IBOutlet weak var profilePictureImage: UIImageView!
    
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var sendMessageButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    
    //PROPERTIES
    
    var albañil: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Perfil"
        
        
        
        nameLabel.text = albañil
        
    }
}
