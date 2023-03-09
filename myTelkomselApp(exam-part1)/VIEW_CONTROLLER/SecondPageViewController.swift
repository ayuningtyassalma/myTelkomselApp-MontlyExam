//
//  SecondPageViewController.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 08/03/23.
//

import UIKit

class SecondPageViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       setUpCheckOutTableView()
    }
    
    func setUpCheckOutTableView(){
        let checkOutNib = UINib(nibName: "CheckOutPaketDataTableViewCell", bundle: nil)
        tableView.register(checkOutNib, forCellReuseIdentifier:  CheckOutPaketDataTableViewCell.identifier)
        let masaAktifNib = UINib(nibName: "MasaAktifTableViewCell", bundle: nil)
        tableView.register(masaAktifNib, forCellReuseIdentifier: MasaAktifTableViewCell.identifier)
        let rincianPaketNib = UINib(nibName: "RincianPaketTableViewCell", bundle: nil)
        tableView.register(rincianPaketNib, forCellReuseIdentifier: RincianPaketTableViewCell.identifier)
        let keteranganPaketNib = UINib(nibName: "KeteranganPaketTableViewCell", bundle: nil)
        tableView.register(keteranganPaketNib, forCellReuseIdentifier: KeteranganPaketTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
    

    @IBAction func buttonThisClick(_ sender: Any) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewThirdPage = storyboard.instantiateViewController(identifier: "ThirdPageViewController") as? ThirdPageViewController {
            navigationController?.pushViewController(viewThirdPage, animated: true)
        }
    }
    
}

extension SecondPageViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CheckOutPaketDataTableViewCell.identifier, for: indexPath) as? CheckOutPaketDataTableViewCell else{
               return  UITableViewCell()}
            
    //        cell.setupCell()
            return cell
            
        case 1:
            guard let cell2 = tableView.dequeueReusableCell(withIdentifier: MasaAktifTableViewCell.identifier, for: indexPath) as? MasaAktifTableViewCell else { return UITableViewCell()}
            return cell2
        case 2:
            guard let cell3 = tableView.dequeueReusableCell(withIdentifier: RincianPaketTableViewCell.identifier, for: indexPath) as? RincianPaketTableViewCell else{
                return UITableViewCell()}
            return cell3
        case 3:
            guard let cell4 = tableView.dequeueReusableCell(withIdentifier: KeteranganPaketTableViewCell.identifier, for: indexPath) as? KeteranganPaketTableViewCell else {
                return UITableViewCell()
            }
            return cell4
        default:
            break
        }
       return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 200
        case 1 :
            return 100
        case 2:
            return 250
        case 3:
            return 250
        default:
            return 150
        }
        
        
    }
    
}
