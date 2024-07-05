//
//  ShelfViewController.swift
//  BookShelfCompositionalLayout
//
//  Created by Priyanka on 05/07/24.
//

import UIKit

class ShelfViewController: UIViewController {
    
    @IBOutlet weak var clvLayout: UICollectionView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCollection()
    }
     
    private func registerCollection() {
        clvLayout.dataSource = self
        clvLayout.delegate = self
        clvLayout.collectionViewLayout = createGroupLayout()
        clvLayout.registerReusableCell(BoxViewCell.self)
    }
}
