//
//  MyCustomCollectionViewCell.swift
//  CollectionViewCodigo
//
//  Created by Jesus Urbano on 12/22/21.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    
    //IMAGENES
    
    @IBOutlet weak var myImage: UIImageView!
    
    //ETIQUETAS
    
    @IBOutlet weak var myOcupationLabel: UILabel!
    @IBOutlet weak var mySpecialtyLabel: UILabel!
    @IBOutlet weak var myNameLabel: UILabel!
   
    //BOTONES
    
    @IBOutlet weak var myContactButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //SELF
        
        //Propiedades de ContentView
        
        contentView.layer.borderWidth = 1.0
        contentView.layer.cornerRadius = 8.0
        contentView.layer.borderColor = UIColor.black.cgColor
        contentView.layer.masksToBounds = true
        
        
        //PROPIEDADES
            
        // Etiqueta de Nombre
       
        myNameLabel.font = UIFont.boldSystemFont(ofSize: 15)
        
        // Boton de Contacto
        

        myContactButton.layer.cornerRadius = 18
        myContactButton.layer.masksToBounds = false
        clipsToBounds = true
        myContactButton.layer.borderColor = UIColor.darkGray.cgColor
        myContactButton.layer.shadowColor = UIColor.darkGray.cgColor
        myContactButton.layer.shadowRadius = 3
        myContactButton.layer.shadowOpacity = 1.0
        myContactButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        
    }
    
    //Este es un CLOSURE que NO ACEPTA PARAMETROS ni regresa parametros NI REGRESA NINGUN VALOR.
    var buttonTapped: (() -> Void)?
    
    @IBAction func myContactButtonTapped(_ sender: Any) {
        buttonTapped?()
   }
        
}
