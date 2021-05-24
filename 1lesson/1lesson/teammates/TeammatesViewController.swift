//
//  TeammatesViewController.swift
//  1lesson
//
//  Created by Kir S on 21.04.2021.
//

import UIKit


class TeammatesViewController: UICollectionViewController {

    
    var photos = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TeammateCell", for: indexPath) as! TeammateCell
        cell.portrait.image = photos[indexPath.row]
        return cell
    }

  

}
