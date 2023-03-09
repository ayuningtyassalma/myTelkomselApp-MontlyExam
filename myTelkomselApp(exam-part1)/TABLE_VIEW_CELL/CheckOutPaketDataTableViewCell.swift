//
//  CheckOutPaketDataTableViewCell.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 08/03/23.
//

import UIKit

class CheckOutPaketDataTableViewCell: UITableViewCell {

    static let identifier = "CheckOutPaketDataTableViewCell"
    @IBOutlet weak var paketDataTittle: UILabel!
    
    
    @IBOutlet weak var paketDataPrice: UILabel!
    
    
    
    @IBOutlet weak var discountPaketData: UILabel!
    
    
    
    @IBOutlet weak var fixedPricePaketData: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//    func setupCell() {
//        self.backgroundColor = .cyan
//    }
  
    
}
