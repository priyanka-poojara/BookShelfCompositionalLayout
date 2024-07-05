//
//  ShelfView+Delegate .swift
//  BookShelfCompositionalLayout
//
//  Created by Priyanka on 05/07/24.
//

import UIKit

extension ShelfViewController: UICollectionViewDelegate {
    
    func createGroupLayout() -> UICollectionViewLayout {
        return shelfLayout()
    }
    
    private func shelfLayout() -> UICollectionViewLayout {
        
        /// Top shelf Item
        let topSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/3), heightDimension: .fractionalHeight(1))
        let topItem = NSCollectionLayoutItem(layoutSize: topSize)
        topItem.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
        
        /// Top shelf Group
        let topGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/3))
        let topShelfGroup = NSCollectionLayoutGroup.horizontal(layoutSize: topGroupSize, subitems: [topItem])
        
        /// Middle shelf Item
        let middleSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalHeight(1))
        let middleItem = NSCollectionLayoutItem(layoutSize: middleSize)
        middleItem.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
        
        /// Middle shelf Group
        let middleGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/3))
        let middleShelfGroup = NSCollectionLayoutGroup.horizontal(layoutSize: middleGroupSize, subitems: [middleItem])
        
        /// Bottom shelf Item
        let bottomSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(2/3), heightDimension: .fractionalHeight(1))
        let bottomItem = NSCollectionLayoutItem(layoutSize: bottomSize)
        bottomItem.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
        
        /// Bottom shelf Group
        let bottomGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/3))
        let bottomShelfGroup = NSCollectionLayoutGroup.horizontal(layoutSize: bottomGroupSize, subitems: [topItem, bottomItem])
        /// **TopItem:** Becase it has same size as required for first bottom item
        
        /// Main Group
        let mainGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1))
        let mainGroup = NSCollectionLayoutGroup.vertical(layoutSize: mainGroupSize, subitems: [topShelfGroup, middleShelfGroup, bottomShelfGroup])
        
        let section = NSCollectionLayoutSection(group: mainGroup)
        return UICollectionViewCompositionalLayout(section: section)
    }
    
}
