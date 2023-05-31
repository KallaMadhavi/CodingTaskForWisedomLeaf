//
//  MobileListViewController.swift
//  MyPracticeWork
//
//  Created by Madhavi on 31/05/23.
//

import UIKit

enum MobileNames : String{
    case onePlusLite = "OnePlusNord CE 3 Lite 5G" // 19,999
    case honor = "Honor X9a" // 27,999
    case vivoT2 = "vivo T2" // 18,999
    case samsungM14 = "Samsung Galaxy M14 5G" //15,990
    case appleIphone14 = "Apple iPhone 14 Pro Max" // 1,27,999
    case realmeC55 = "realmeC55" // 10,999
    case poco = "POCO C55" //7999
    case iQ00Z7 = "iQOO Z7" //18,999
    case nothing = "Nothing Phone 2" // 39,990
    case redmiNote12Pro = "Xiamoni Redmi Note 12 Pro 5g " //23,810
    case infinixHot30i = "infinix Hot 30i" // 9299
    case motorlaG13 = "Motorola G13" // 9499
    case techno = "Techno X2, 5G" // 39,999
    case lava = "Lava Blaze Pro" //9,999
    case nubia = "Nubia Z40 Pro 5G" // 54,990
    case lg = "LG Q Stylus" // 13,999
    case comio = "Comio X1" //7999
    case blackBerry = "BlackBerry KEYone" //23,050
}

class MobileListViewController: UIViewController {
    
    
    var arrayofMobiles : [MobileNames] = [.onePlusLite, .honor, .vivoT2, .samsungM14, .appleIphone14, .realmeC55, .iQ00Z7, .nothing, .redmiNote12Pro, .infinixHot30i, .motorlaG13, .techno, .lava, .nubia, .lg, .comio, .blackBerry]
    
    var arrayOfCost : [String] = ["19,999", "27,999", "18,999", "15,990", "1,27,999", "10,999", "7,999", "18,999", "39,990", "23,810", "9,299", "9,499", "39,999", "9,999" , "54,990", "13,999", "7,999", "23,050"]
    var arrayOfImages = ["one Pluss", "Honor", "vivit2", "samsung", "apple", "realme", "pocoi", "z7", "nothing", "redmi", "infix", "moto", "TECHNO", "lava", "nubia", "lg", "comio", "black" ]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "MobileTVCell", bundle: nil), forCellReuseIdentifier: "MobileTVCell")
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MobileListViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayofMobiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MobileTVCell")as! MobileTVCell
        cell.img.image = UIImage(named: arrayOfImages[indexPath.row])
        cell.mobilName.text = arrayofMobiles[indexPath.row].rawValue
        cell.cost.text = arrayOfCost[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
