//
//  LanggananKamuTableViewCell.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 06/03/23.
//

import UIKit

class LanggananKamuTableViewCellForLangganganCollection: UITableViewCell {

    static let identifier = "LanggananKamuTableViewCellForLangganganCollection"
    
    var passingDataLangganganKamuCollection : [LangganganKamuStruct]?
    
    var delegate: ViewControllerDelegate?
    
    @IBOutlet weak var langganganKamuCollectionInsideTableView: UICollectionView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setUpCell(){
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.itemSize = CGSize(width: 280, height: 210)
        flowlayout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        langganganKamuCollectionInsideTableView.collectionViewLayout = flowlayout
        langganganKamuCollectionInsideTableView.delegate = self
        langganganKamuCollectionInsideTableView.dataSource = self
        langganganKamuCollectionInsideTableView.register(UINib(nibName: LangganganKamuCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: "LangganganKamuCollectionViewCell")
    }
    
}

extension LanggananKamuTableViewCellForLangganganCollection: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 126)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LangganganKamuCollectionViewCell", for: indexPath) as? LangganganKamuCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        
        
        cell.kuotaLabel.text = passingDataLangganganKamuCollection?[indexPath.row].kuota
        cell.discountPrice.text = passingDataLangganganKamuCollection?[indexPath.row].discountprice
        cell.fixedPrice.text = passingDataLangganganKamuCollection?[indexPath.row].fixedPrice
        cell.jenisPaket.text = passingDataLangganganKamuCollection?[indexPath.row].jenisPaketLanggangan
        
        cell.containerView.layer.borderWidth = 0.2
        cell.containerView.layer.borderColor = UIColor.gray.cgColor
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate?.moveToSecondPage()
        print("didselectsctive")
    }
    
}
