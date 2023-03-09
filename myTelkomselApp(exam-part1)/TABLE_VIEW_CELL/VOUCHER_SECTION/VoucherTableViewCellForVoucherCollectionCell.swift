//
//  VoucherTableViewCellForVoucherCollectionCell.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 07/03/23.
//

import UIKit

class VoucherTableViewCellForVoucherCollectionCell: UITableViewCell {

    static let identifier = "VoucherTableViewCellForVoucherCollectionCell"
    
    
    var passingDataVoucherCollection : [PromoImage]?
    @IBOutlet weak var voucherLabel: UILabel!
    
    
    @IBOutlet weak var lihatSemuaLabel: UILabel!
    
    
    @IBOutlet weak var voucherCollectionInsideTableView: UICollectionView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setUpVoucherCell(){
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.itemSize = CGSize(width: 280, height: 280)
        flowlayout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        voucherCollectionInsideTableView.collectionViewLayout = flowlayout
        voucherCollectionInsideTableView.delegate = self
        voucherCollectionInsideTableView.dataSource = self
        voucherCollectionInsideTableView.register(UINib(nibName: CariVoucherCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: "CariVoucherCollectionViewCell" )
    }
    
}; extension VoucherTableViewCellForVoucherCollectionCell : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CariVoucherCollectionViewCell", for: indexPath) as? CariVoucherCollectionViewCell else{
        return UICollectionViewCell()
        }
        
        if let image = passingDataVoucherCollection {
            cell.voucherImage.image = UIImage(named:"\(image[indexPath.row].image)")
        }
//        
//        cell.contentView.layer.borderWidth = 0.2
//        cell.contentView.layer.borderColor = UIColor.gray.cgColor
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 250)
    }
    
}
