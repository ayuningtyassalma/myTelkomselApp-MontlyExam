//
//  PopularHeaderTittle.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 09/03/23.
//

import UIKit

class PopularHeaderTittle: UITableViewHeaderFooterView {

    private lazy var headerTittle: UILabel = {
        let popularHeader = UILabel(frame: .zero)
        popularHeader.text = "Popular"
        popularHeader.font = UIFont.boldSystemFont(ofSize: 22)
        popularHeader.translatesAutoresizingMaskIntoConstraints = false
        return popularHeader
        
    }()
    
    func setUpPopularHeader(){
        self.addSubview(headerTittle)
//        self.contentView.backgroundColor = .yellow
        NSLayoutConstraint.activate([
            headerTittle.topAnchor.constraint(equalTo: self.topAnchor, constant: -1),
            headerTittle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            headerTittle.heightAnchor.constraint(equalToConstant: 25)
        ])
    }

}
