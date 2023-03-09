//
//  PaketBelajarHeaderTittle.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 09/03/23.
//

import UIKit

class PaketBelajarHeaderTittle: UITableViewHeaderFooterView {
    private lazy var headerTittle: UILabel = {
        let paketBelajarHeader = UILabel(frame: .zero)
        paketBelajarHeader.text = "Belajar #dirumahaja"
        paketBelajarHeader.font = UIFont.boldSystemFont(ofSize: 20)
        paketBelajarHeader.translatesAutoresizingMaskIntoConstraints = false
        return paketBelajarHeader
    }()
    
    func setUpPaketBelajarHeader(){
        self.addSubview(headerTittle)
        
        NSLayoutConstraint.activate([
            headerTittle.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            headerTittle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            headerTittle.heightAnchor.constraint(equalToConstant: 20)
        ])
    }

}
