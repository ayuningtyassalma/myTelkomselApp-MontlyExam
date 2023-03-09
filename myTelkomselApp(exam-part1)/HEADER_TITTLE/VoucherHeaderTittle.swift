//
//  VoucherHeaderTittle.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 09/03/23.
//

import UIKit

class VoucherHeaderTittle: UITableViewHeaderFooterView {

    private lazy var headerTittle: UILabel = {
        let voucherHeader = UILabel(frame: .zero)
        voucherHeader.text = "Cari Voucher, YUK!"
        voucherHeader.font = UIFont.boldSystemFont(ofSize: 20)
        voucherHeader.translatesAutoresizingMaskIntoConstraints = false
        return voucherHeader
    }()
    
    private lazy var lihatSemuaheaderTittle: UILabel = {
       let seeMoreLabel = UILabel()
        seeMoreLabel.text = "Lihat Semua"
        seeMoreLabel.font = UIFont.boldSystemFont(ofSize: 20)
        seeMoreLabel.textColor = UIColor.red
        seeMoreLabel.translatesAutoresizingMaskIntoConstraints = false
        return seeMoreLabel
    }()
    func setUpVoucherHeader(){
        self.addSubview(headerTittle)
        self.addSubview(lihatSemuaheaderTittle)
        self.contentView.backgroundColor = .white
        
        NSLayoutConstraint.activate([headerTittle.topAnchor.constraint(equalTo: self.topAnchor, constant: -25),
            headerTittle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            headerTittle.heightAnchor.constraint(equalToConstant: 25)
        
        
        ])
        
        NSLayoutConstraint.activate([
            lihatSemuaheaderTittle.topAnchor.constraint(equalTo: self.topAnchor, constant: -25),
            lihatSemuaheaderTittle.leftAnchor.constraint(equalTo: headerTittle.rightAnchor, constant: 80),
            lihatSemuaheaderTittle.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
}
