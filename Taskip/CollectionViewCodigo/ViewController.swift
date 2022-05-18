//
//  ViewController.swift
//  CollectionViewCodigo
//
//  Created by Jesus Urbano on 12/22/21.
//

import UIKit


class ViewController: UIViewController {
    
    //OUTLETS
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    //PROPERTIES
    
    
    let searchController = UISearchController(searchResultsController: nil)
    
    
    var albañiles: [Albañiles] = []
    
    var filteredAlbañiles: [Albañiles] = []
    

    var isSearchBarEmpty: Bool {
      return searchController.searchBar.text?.isEmpty ?? true
    }
    
    var isFiltering: Bool {
      return searchController.isActive && !isSearchBarEmpty
    }
    
    
    //METHODS
    
    func filterContentForSearchText(_ searchText: String) {
      filteredAlbañiles = albañiles.filter { (albañil: Albañiles) -> Bool in
        return albañil.especialidad.lowercased().contains(searchText.lowercased())
      }
      
      collectionView.reloadData()
    }

    
    //MARK: - Lyfecycle Starting Point
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        albañiles = Albañiles.data()
        
        
       //SEARCH B.
        
        //Search Bar Parameters
        
        title = "Oficios"
        
        navigationItem.searchController = searchController
        navigationItem.searchController?.searchResultsUpdater = self
        navigationItem.searchController?.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController?.searchBar.tintColor = .black
        navigationItem.searchController?.searchBar.searchTextField.textColor = .black
        navigationItem.searchController?.searchBar.placeholder = "¿Qué tipo de albañil buscas?"
        navigationItem.searchController?.searchBar.searchTextField.backgroundColor = .white
        navigationItem.searchController?.searchBar.layer.shadowColor = UIColor.darkGray.cgColor
        navigationItem.searchController?.searchBar.layer.shadowOffset = .zero
        navigationItem.searchController?.searchBar.layer.shadowOpacity = 0.5
        navigationItem.searchController?.searchBar.layer.shadowRadius = 5.2
        definesPresentationContext = true

        
        //COLLECTION V.
        
        //collectionView.delegate = self
        
        collectionView.dataSource = self
                                
        collectionView.backgroundColor = UIColor.clear
                
        collectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
        
    }

}

// MARK: - UICollectionViewDataSource

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if isFiltering {
           return filteredAlbañiles.count
         }
           
         return albañiles.count
         }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell
        
        cell?.layer.shadowColor = UIColor.black.cgColor
        cell?.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        cell?.layer.shadowRadius = 4.0
        cell?.layer.shadowOpacity = 1.0
        cell?.layer.masksToBounds = false
        cell?.layer.backgroundColor = UIColor.clear.cgColor
       // cell?.buttonTapped = { [weak self] in
        //self?.performSegue(withIdentifier: "DetailVC", sender: cell!)
       // }
     

        
        let albañil: Albañiles
         if isFiltering {
           albañil = filteredAlbañiles[indexPath.row]
         } else {
           albañil = albañiles[indexPath.row]
         }
        
        cell?.myOcupationLabel.text = "Albañil"
        cell?.mySpecialtyLabel.text = albañil.especialidad
        cell?.myNameLabel.text = albañil.nombre
        
        return cell!
    
    }
    
}
 
    


//MARK: - VERSION AAAAAAAAAAAAA

// MARK: - UICollectionViewDelegate

extension ViewController: UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        
        let miCelda = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: IndexPath) as! MyCustomCollectionViewCell
        miCelda.buttonTapped = { [weak self] in
            self?.performSegue(withIdentifier: "DetailVC", sender: miCelda)
            }
        
        let specialty = miCelda.mySpecialtyLabel.text
        let name = miCelda.myNameLabel.text
        
        
        
        
        printContent("You tapped me")
        
        }
}


// MARK: - UISearchResultsUpdating

extension ViewController: UISearchResultsUpdating {
func updateSearchResults(for searchController: UISearchController) {
    let searchBar = searchController.searchBar.text!
    filterContentForSearchText(searchBar)
    }
}
