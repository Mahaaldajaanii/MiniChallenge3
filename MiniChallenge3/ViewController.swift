//
//  ViewController.swift
//  profilePage2
//
//  Created by areej on 26/07/1443 AH.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    
    
    
 

    @IBOutlet weak var Eidt: UIButton!
    @IBOutlet weak var coll1: UICollectionView!
    
    var dataSource = [info]()
    var arrInfo1: [info] = [
        info.init(name: NSLocalizedString("Softwar Engineering", comment: ""), photo: "par2", par: NSLocalizedString("4 Participants", comment: ""), photo2: "coming"),
        info.init(name: NSLocalizedString("Networks Fundamentals", comment: ""), photo: "par4", par: NSLocalizedString("3 Participants", comment: ""), photo2: "Acco"),
        info.init(name: NSLocalizedString("Computer Programming 1", comment: ""), photo: "par3", par: NSLocalizedString("3 Participants", comment: ""), photo2: "Acco"),
        info.init(name: NSLocalizedString("System Analysis", comment: ""), photo: "par2", par: NSLocalizedString("3 Participants", comment: ""), photo2: "Acco")
    ]
    
    var arrInfo2: [info] = [
        info.init(name: NSLocalizedString("Database management", comment: ""), photo: "par3", par: NSLocalizedString("3 Participants", comment: ""), photo2: "Acco"),
        info.init(name: NSLocalizedString("Security and Policy", comment: ""), photo: "par2", par: NSLocalizedString("4 Participants", comment: ""), photo2: "Acco"),
        info.init(name: NSLocalizedString("System Analysis", comment: ""), photo: "par1", par: NSLocalizedString("4 Participants", comment: ""), photo2: "Acco"),
        info.init(name: NSLocalizedString(" Operating System", comment: ""), photo: "par2", par: NSLocalizedString("4 Participants", comment: ""), photo2: "Acco"),
        info.init(name: NSLocalizedString(" Networks Fundamentals", comment: ""), photo: "par4", par: NSLocalizedString("4 Participants", comment: ""), photo2: "Acco")
    ]
//    var arrInfo4: [info] = [
//        info.init(name: "Information Tencholgy", photo: "par3", par: "3 Participants", photo2: "Acco"),
//        info.init(name: "Security and Policy", photo: "par2", par: "4 Participants", photo2: "Acco")
//    ]
    
    var arrInfo3 = [info]()
    
    @IBOutlet weak var ima2: UIImageView!
    @IBOutlet weak var im1: UIImageView!
    @IBOutlet weak var major: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var bio2: UILabel!
    @IBOutlet weak var bio1: UILabel!
    @IBOutlet weak var name:UILabel!
    @IBOutlet weak var sara: UIImageView!
    @IBOutlet weak var Hedar: UIImageView!
    @IBOutlet weak var Num: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        sara.layer.cornerRadius = sara.frame.size.width/2
        sara.clipsToBounds = true
        // Do any additional setup after loading the view.
        coll1.delegate = self
        coll1.dataSource = self
        
       
        
        name.text = NSLocalizedString("Sara Ahmed", comment: "")
        Num.text = NSLocalizedString("4 Groups Created ", comment: "")
        bio1.text = NSLocalizedString("In love with technology👩🏻‍💻💞,I’ve been  coding ", comment: "")
        bio2.text = NSLocalizedString("since I was In high school✨.", comment: "")
        location.text = NSLocalizedString("Riyadh,SA", comment: "")
        major.text = NSLocalizedString("Information Tencholgy", comment: "")
        Eidt.titleLabel?.text = NSLocalizedString("Eidt", comment: "")
   
    }
  


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SeCVC
      
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowOpacity = 0.3
        cell.layer.cornerRadius = 20.0
        cell.layer.masksToBounds = false
        
        cell.photo1.image = UIImage(named: dataSource[indexPath.row].photo)
        cell.name.text = dataSource[indexPath.row].name
        cell.photo3.image = UIImage(named: dataSource[indexPath.row].photo2)
        cell.par1.text = dataSource[indexPath.row].par
        cell.photo3.image = UIImage(named: dataSource[indexPath.row].photo2)
        cell.par1.text = dataSource[indexPath.row].par
                return cell
           
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:350, height: 155)
    }
  
    @IBAction func segmented(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
            
       case 0:
            Num.text = "4 Groups Created"
            dataSource.removeAll()
            dataSource = arrInfo1
            coll1.reloadData()
        case 1:
            Num.text = "5 Joined Groups"
            dataSource.removeAll()
            dataSource = arrInfo2
        coll1.reloadData()
//        case 2:
//             dataSource.removeAll()
//             dataSource = arrInfo4
//        coll1.reloadData()

        default:
            view.backgroundColor = .purple
        }
    }
}



