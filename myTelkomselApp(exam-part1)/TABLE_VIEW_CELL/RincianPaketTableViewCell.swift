//
//  RincianPaketTableViewCell.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 08/03/23.
//

import UIKit

class RincianPaketTableViewCell: UITableViewCell {

    static let identifier = "RincianPaketTableViewCell"
    
    @IBOutlet weak var rincianPaketLabel: UILabel!
    
    
    @IBOutlet weak var internetLabel: UILabel!
    
    
    
    @IBOutlet weak var omgLabel: UILabel!
    
    
    
    @IBOutlet weak var SMSTselLabel: UILabel!
    
    
    @IBOutlet weak var voiceTselLabel: UILabel!
    
    
    
    @IBOutlet weak var kuotainternetLabel: UILabel!
    
    
    @IBOutlet weak var kuotaOMG: UILabel!
    
    
    
    @IBOutlet weak var kuotaSMS: UILabel!
    
    
    
    
    @IBOutlet weak var voiceDuration: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
    
}
