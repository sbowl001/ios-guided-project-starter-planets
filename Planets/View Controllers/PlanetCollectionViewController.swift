//
//  PlanetCollectionViewController.swift
//  Planets
//
//  Created by Stephanie Bowles on 5/16/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PlanetCell"

class PlanetCollectionViewController: UICollectionViewController {

    let planetController = PlanetController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.collectionView.reloadData()
    }

    

    // MARK: UICollectionViewDataSource

  

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PlanetCollectionViewCell
    
        let planet = self.planetController.planets[indexPath.row]
        cell.label.text = planet.name
        cell.imageView.image = planet.image 
    
        return cell
    }


  

}
