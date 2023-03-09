//
//  ThirdPageViewController.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 08/03/23.
//

import UIKit

class ThirdPageViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpPaymentSuccessTableView()
    }
    
    func setUpPaymentSuccessTableView(){
        
        let paymentSucessNib = UINib(nibName: "PaymentSuccessTableViewCell", bundle: nil)
        tableView.register(paymentSucessNib, forCellReuseIdentifier: PaymentSuccessTableViewCell.identifier)
        let keteranganPaketNib = UINib(nibName: "PaketInternetTableViewCell", bundle: nil)
        tableView.register(keteranganPaketNib, forCellReuseIdentifier: PaketInternetTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    

}; extension ThirdPageViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: PaymentSuccessTableViewCell.identifier , for: indexPath) as? PaymentSuccessTableViewCell else { return UITableViewCell() }
            return cell
        case 1:
            guard let cell2 = tableView.dequeueReusableCell(withIdentifier: PaketInternetTableViewCell.identifier, for: indexPath) as? PaketInternetTableViewCell else { return UITableViewCell() }
            return cell2
        default:
            break
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 150
        case 1:
            return 200
        default:
            break
        }
        return 150
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}
