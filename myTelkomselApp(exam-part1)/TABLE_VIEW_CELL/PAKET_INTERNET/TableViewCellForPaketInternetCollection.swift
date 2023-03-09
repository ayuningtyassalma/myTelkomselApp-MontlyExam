//
//  TableViewCellForPaketInternetCollection.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 06/03/23.
//

import UIKit

class TableViewCellForPaketInternetCollection: UITableViewCell {

    
    static let identifier = "TableViewCellForPaketInternetCollection"
    
    
    var passingDataImageCollection : [PaketDataImage]?
    
        
    @IBOutlet weak var paketDataCollectionInsideTableViewCell: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setUpCell(){
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.itemSize = CGSize(width: 300, height: 300)
        flowlayout.sectionInset = UIEdgeInsets(top:2, left: 2, bottom: 2, right: 2)
        
        paketDataCollectionInsideTableViewCell.collectionViewLayout = flowlayout
        paketDataCollectionInsideTableViewCell.delegate = self
        paketDataCollectionInsideTableViewCell.dataSource = self
        paketDataCollectionInsideTableViewCell.register(UINib(nibName: PaketInternetCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: "PaketInternetCollectionViewCell" )
        
    }
    
    
    
}; extension TableViewCellForPaketInternetCollection : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PaketInternetCollectionViewCell", for: indexPath) as? PaketInternetCollectionViewCell else { return UICollectionViewCell() }
        
        //manggil passing data buat ngambil model di dalam struct(image)
        if let image = passingDataImageCollection {
            cell.paketInternetImage.image = UIImage(named:"\(image[indexPath.row].paketDataIMG)")
        }
        
        
        return cell
    }
    
}
