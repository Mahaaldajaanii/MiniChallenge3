//
//  ViewConroller2.swift
//  HomePage
//
//  Created by Shahad Alkamli on 07/03/2022.
//

import UIKit

class ViewControllerGroups: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    
    @IBOutlet weak var collectionView2: UICollectionView!

    
    var arrSG = [SG]()
    
   
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        
        collectionView2?.delegate = self
        collectionView2?.dataSource = self

        
        
        
        arrSG.append(
            SG(SGN: "Database Management",
               MN: "Information Technology",
               P: UIImage(named:"Participants1")!,
               PN: "8 Participants",
               See: "See More"))

        arrSG.append(
            SG(SGN: "Networks Fundamentals",
               MN: "Information Technology",
               P: UIImage(named:"Participants2")!,
               PN: "12 Participants",
               See: "See More"))

        arrSG.append(
            SG(SGN: "Information Security",
               MN: "Information Technology",
               P: UIImage(named:"Participants3")!,
               PN: "16 Participants",
               See: "See More"))

        arrSG.append(
            SG(SGN: "Software Engineering",
               MN: "Information Technology",
               P: UIImage(named:"Participants1")!,
               PN: "21 Participants",
               See: "See More"))

        arrSG.append(
            SG(SGN: "Satellites",
               MN: "Information Technology",
               P: UIImage(named:"Participants2")!,
               PN: "14 Participants",
               See: "See More"))

        arrSG.append(
            SG(SGN: "Computer Programming 1",
               MN: "Information Technology",
               P: UIImage(named:"Participants3")!,
               PN: "26 Participants",
               See: "See More"))

        arrSG.append(
            SG(SGN: "Human Computer Interaction",
               MN: "Information Technology",
               P: UIImage(named:"Participants1")!,
               PN: "6 Participants",
               See: "See More"))

        arrSG.append(
            SG(SGN: "Wireless Networks Security",
               MN: "Information Technology",
               P: UIImage(named:"Participants2")!,
               PN: "18 Participants",
               See: "See More"))

        arrSG.append(
            SG(SGN: "WEB Technologies",
               MN: "Information Technology",
               P: UIImage(named:"Participants3")!,
               PN: "11 Participants",
               See: "See More"))
        
        arrSG.append(
            SG(SGN: "Operating System",
               MN: "Information Technology",
               P: UIImage(named:"Participants1")!,
               PN: "33 Participants",
               See: "See More"))

        arrSG.append(
            SG(SGN: "Introduction to IT and IS",
               MN: "Information Technology",
               P: UIImage(named:"Participants2")!,
               PN: "7 Participants",
               See: "See More"))
        
        arrSG.append(
            SG(SGN: "Computer Orgnization",
               MN: "Information Technology",
               P: UIImage(named:"Participants2")!,
               PN: "23 Participants",
               See: "See More"))
        
        arrSG.append(
            SG(SGN: "Database Management",
               MN: "Information Technology",
               P: UIImage(named:"Participants2")!,
               PN: "3 Participants",
               See: "See More"))
        
        arrSG.append(
            SG(SGN: "Networks Fundamentals",
               MN: "Information Technology",
               P: UIImage(named:"Participants2")!,
               PN: "2 Participants",
               See: "See More"))
        
        arrSG.append(
            SG(SGN: "Information Security",
               MN: "Information Technology",
               P: UIImage(named:"Participants2")!,
               PN: "7 Participants",
               See: "See More"))
        
        arrSG.append(
            SG(SGN: "Software Engineering",
               MN: "Information Technology",
               P: UIImage(named:"Participants2")!,
               PN: "4 Participants",
               See: "See More"))
        
        
        
        
        
    }

    
    
    
    // CollectionView Functions
    
    func collectionView(_ collectionView2: UICollectionView, numberOfItemsInSection section: Int) -> Int {
   
        return arrSG.count
}
    
    func collectionView(_ collectionView2: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
    
            let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "SGroupCell", for: indexPath) as! SGCollectionViewCell

            let data2 = arrSG[indexPath.row]
            cell2.setupCell2(SGN: data2.SGN, MN: data2.MN, P: data2.P, PN: data2.PN, See: data2.See)
            cell2.backgroundColor = UIColor.white
            cell2.layer.cornerRadius = 15.0
            return cell2
        }
    
    
    }
    
    
    
    
    // First Struct
    
 
    
    // Second Struct

    struct SG {

        let SGN : String
        let MN : String
        let P : UIImage
        let PN : String
        let See : String

    }
    



