//
//  ShelfView+DataSource.swift
//  BookShelfCompositionalLayout
//
//  Created by Priyanka on 05/07/24.
//

import UIKit

extension ShelfViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(indexPath: indexPath) as BoxViewCell
        
        return cell
    }
    
}
