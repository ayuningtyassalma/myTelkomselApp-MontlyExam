//
//  paymentSuccessTableViewCell.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 08/03/23.
//

import UIKit

class PaymentSuccessTableViewCell: UITableViewCell {

    static let identifier = "PaymentSuccessTableViewCell"
    
    
    @IBOutlet weak var pembayaranBerhasilLabel: UILabel!
    
    @IBOutlet weak var keteranganPembayaranBerhasilLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
