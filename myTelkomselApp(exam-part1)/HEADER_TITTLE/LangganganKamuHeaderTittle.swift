//
//  LangganganKamuHeaderTittle.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 09/03/23.
//

import UIKit

class LangganganKamuHeaderTittle: UITableViewHeaderFooterView {

    private lazy var headerTittle: UILabel = {
        let langganganKamuHeader = UILabel(frame: .zero)
        langganganKamuHeader.text = "Langgangan Kamu"
        langganganKamuHeader.font = UIFont.boldSystemFont(ofSize: 20)
        langganganKamuHeader.translatesAutoresizingMaskIntoConstraints = false
        return langganganKamuHeader
    }()
    
    func setUpLangganganKamuHeader(){
        self.addSubview(headerTittle)
//        self.contentView.backgroundColor = .red
        NSLayoutConstraint.activate([
            headerTittle.heightAnchor.constraint(equalToConstant: 25),
            headerTittle.topAnchor.constraint(equalTo: self.topAnchor, constant: -1),
            headerTittle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10)
        ])
    }

}
