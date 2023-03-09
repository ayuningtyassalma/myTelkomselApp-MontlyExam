//
//  PaketBelajarCollectionViewCell.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 07/03/23.
//

import UIKit

class PaketBelajarCollectionViewCell: UICollectionViewCell {

    static let identifier = "PaketBelajarCollectionViewCell"
    @IBOutlet weak var kuotaBelajarLabel: UILabel!
    
    
    @IBOutlet weak var freeLabel: UILabel!
       
    
    @IBOutlet weak var duration: UIButton!
    
    
    
    
    @IBOutlet weak var jenisPaketBelajar: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
