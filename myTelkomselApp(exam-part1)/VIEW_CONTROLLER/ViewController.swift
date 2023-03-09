//
//  ViewController.swift
//  myTelkomselApp(exam-part1)
//
//  Created by Salma Ayu on 06/03/23.
//

import UIKit

protocol ViewControllerDelegate {
    func moveToSecondPage()
}

class ViewController: UIViewController, ViewControllerDelegate {
    
    
    var imageCollectionOfPaketData : [PaketDataImage] = [PaketDataImage(paketDataIMG: "internetOMG!"),
                                                         PaketDataImage(paketDataIMG: "udianKetengan"),
                                                         PaketDataImage(paketDataIMG: "internetOMG!"),
                                                         PaketDataImage(paketDataIMG: "udianKetengan")
    
    ]
    
    
    var langganganKamu : [LangganganKamuStruct] =
        [LangganganKamuStruct(kuota: "14 GB", discountprice: "Rp 99.00", fixedPrice: "Rp 96.000", jenisPaketLanggangan: "Internet OMG!"),
        LangganganKamuStruct(kuota: "27 GB", discountprice: "Rp 145.000", fixedPrice: "Rp 133.000", jenisPaketLanggangan: "Undian Ketengan"),
        LangganganKamuStruct(kuota: "14 GB", discountprice: "Rp 99.00", fixedPrice: "Rp 96.000", jenisPaketLanggangan: "Internet OMG!"),
        LangganganKamuStruct(kuota: "27 GB", discountprice: "Rp 145.000", fixedPrice: "Rp 133.000", jenisPaketLanggangan: "Undian Ketengan")
    ]
    
    var promoImage = [PromoImage(image: "doubleBenefit"),
                      PromoImage(image: "joinUndi"),
                      PromoImage(image: "doubleBenefit"),
                      PromoImage(image: "joinUndi")
    ]
    
    
    @IBOutlet weak var tableview: UITableView!
    
    var delegate: ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Paket Internet"
        self.navigationController?.navigationBar.prefersLargeTitles = false
        // Do any additional setup after loading the view.
        delegate = self
        
        regisTableViewCell()
    }
    
    func moveToSecondPage() {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewSecondPage = storyboard.instantiateViewController(identifier: "secondPageViewController") as? SecondPageViewController {
            navigationController?.pushViewController(viewSecondPage, animated: true)
            print("This is the variable: \(viewSecondPage)")
        }
        print("delegate active")
    }

    func regisTableViewCell(){
        let tableViewCell = UINib(nibName: TableViewCellForPaketInternetCollection.identifier, bundle: nil)
        tableview.register(tableViewCell, forCellReuseIdentifier: TableViewCellForPaketInternetCollection.identifier)
        let tableViewCell2 = UINib(nibName: "LanggananKamuTableViewCellForLangganganCollection", bundle: nil)
        tableview.register(tableViewCell2, forCellReuseIdentifier: LanggananKamuTableViewCellForLangganganCollection.identifier)
        let tableViewCell3 = UINib(nibName: "VoucherTableViewCellForVoucherCollectionCell", bundle: nil)
        tableview.register(tableViewCell3, forCellReuseIdentifier: VoucherTableViewCellForVoucherCollectionCell.identifier)
        let tableViewCell4 = UINib(nibName: "PaketBelajarTableViewCellForPaketBelajarCollection", bundle: nil)
        tableview.register(tableViewCell4, forCellReuseIdentifier: PaketBelajarTableViewCellForPaketBelajarCollection.identifier)
        
        
        tableview.separatorStyle = .none
        tableview.delegate = self
        tableview.dataSource = self
    }
}; extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1 :
            return 1
        case 2 :
            return 1
        case 3 :
            return 1
        case 4:
            return 1
        default :
            break
        }
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableview.dequeueReusableCell(withIdentifier: TableViewCellForPaketInternetCollection.identifier, for: indexPath) as? TableViewCellForPaketInternetCollection  else { return UITableViewCell() }
            
            cell.passingDataImageCollection = imageCollectionOfPaketData
            cell.setUpCell()
            return cell
        case 1:
            guard let cell1 =  tableview.dequeueReusableCell(withIdentifier: LanggananKamuTableViewCellForLangganganCollection.identifier , for: indexPath) as? LanggananKamuTableViewCellForLangganganCollection else { return UITableViewCell()  }
            cell1.setUpCell()
            cell1.passingDataLangganganKamuCollection = langganganKamu
            cell1.delegate = self
            return cell1
        case 2:
            guard let cell2 = tableview.dequeueReusableCell(withIdentifier: LanggananKamuTableViewCellForLangganganCollection.identifier, for: indexPath) as? LanggananKamuTableViewCellForLangganganCollection else { return UITableViewCell() }
            cell2.setUpCell()
            cell2.passingDataLangganganKamuCollection = langganganKamu
            cell2.delegate = self
            return cell2
            
        case 3 :
            guard let cell3 = tableview.dequeueReusableCell(withIdentifier: VoucherTableViewCellForVoucherCollectionCell.identifier, for: indexPath) as? VoucherTableViewCellForVoucherCollectionCell else {
                return UITableViewCell()}
            cell3.passingDataVoucherCollection = promoImage
            cell3.setUpVoucherCell()
            return cell3
        case 4 :
            guard let cell4 = tableview.dequeueReusableCell(withIdentifier: PaketBelajarTableViewCellForPaketBelajarCollection.identifier, for: indexPath) as? PaketBelajarTableViewCellForPaketBelajarCollection else { return UITableViewCell() }
            cell4.setUpPaketBelajarCell()
            cell4.passingDataPaketBelajar = langganganKamu
            return cell4
        default:
            break
        }
        
       return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 140
        case 1:
            return 170
        case 2:
            return 170
        case 3:
            return 175
        case 4:
            return 200
        default:
            break
        }
        return 150
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewSecondPage = storyboard.instantiateViewController(identifier: "secondPageViewController") as? SecondPageViewController {
            navigationController?.pushViewController(viewSecondPage, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        
        //supaya fontnya ga nempel/fixed, di main storyboardnya di ubah style jd 'group'
        case 1:
            let firstHeader = LangganganKamuHeaderTittle()
            firstHeader.setUpLangganganKamuHeader()
            return firstHeader
        case 2:
            let secondHeader = PopularHeaderTittle()
            secondHeader.setUpPopularHeader()
            return secondHeader
        case 3:
            let thirdHeader = VoucherHeaderTittle()
            thirdHeader.setUpVoucherHeader()
            return thirdHeader
        case 4:
            let fourthHeader = PaketBelajarHeaderTittle()
            fourthHeader.setUpPaketBelajarHeader()
            return fourthHeader
        default:
            return nil
        }
        
    }
}

