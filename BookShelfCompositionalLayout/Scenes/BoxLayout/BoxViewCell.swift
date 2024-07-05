//
//  BoxViewCell.swift
//  BookShelfCompositionalLayout
//
//  Created by Priyanka on 05/07/24.
//

import UIKit

class BoxViewCell: UICollectionViewCell, Reusable {
    
    @IBOutlet weak var viewBox: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewBox.layer.cornerRadius = 5
        viewBox.layer.borderWidth = 5
        viewBox.layer.borderColor = UIColor.black.cgColor
    }

}
