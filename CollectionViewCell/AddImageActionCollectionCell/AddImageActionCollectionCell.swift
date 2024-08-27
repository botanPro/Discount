//
//  AddImageCollectionViewCell.swift
//  Discount
//
//  Created by botan pro on 7/21/21.
//

import UIKit

class AddImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var Delete: UIButton!
    @IBOutlet weak var imagee: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imagee.layer.cornerRadius = 4
    }

}
