//
//  PaketBelajarTableViewCellForPaketBelajarCollection.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 07/03/23.
//

import UIKit

class PaketBelajarTableViewCellForPaketBelajarCollection: UITableViewCell {

    static let identifier = "PaketBelajarTableViewCellForPaketBelajarCollection"
    
    var passingDataPaketBelajar : [LangganganKamuStruct]?
    
    @IBOutlet weak var paketDataBelajarCollectionInsideTableViewCell: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setUpPaketBelajarCell(){
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.itemSize = CGSize(width: 300, height: 300)
        flowlayout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8 )
        
        paketDataBelajarCollectionInsideTableViewCell.collectionViewLayout = flowlayout
        paketDataBelajarCollectionInsideTableViewCell.delegate = self
        paketDataBelajarCollectionInsideTableViewCell.dataSource = self
        paketDataBelajarCollectionInsideTableViewCell.register(UINib(nibName: PaketBelajarCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: "PaketBelajarCollectionViewCell")
    }
    
}; extension PaketBelajarTableViewCellForPaketBelajarCollection : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PaketBelajarCollectionViewCell", for: indexPath) as? PaketBelajarCollectionViewCell else{
            return UICollectionViewCell()
        }
        
//        cell.kuotaBelajarLabel.text = passingDataPaketBelajar?[indexPath.row].kuota
    
        cell.contentView.layer.borderWidth = 0.2
        cell.contentView.layer.borderColor = UIColor.gray.cgColor
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 150)
        
        
        
    }
    
    
}
