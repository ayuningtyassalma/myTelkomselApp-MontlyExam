//
//  LangganganKamuCollectionViewCell.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 06/03/23.
//

import UIKit

class LangganganKamuCollectionViewCell: UICollectionViewCell {

    static let identifier = "LangganganKamuCollectionViewCell"
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var kuotaLabel: UILabel!

//
//
    @IBOutlet weak var discountPrice: UILabel!


    @IBOutlet weak var fixedPrice: UILabel!


//
//    @IBOutlet weak var periodeLamgganan: UILabel!{
//        didSet{
//            periodeLamgganan.text = "30 HARI"
//        }
//    }
//    
    
    
    @IBOutlet weak var jenisPaket: UILabel! 

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
