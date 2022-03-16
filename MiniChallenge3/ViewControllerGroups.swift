//
//  ViewConroller2.swift
//  HomePage
//
//  Created by Shahad Alkamli on 07/03/2022.
//

import UIKit

class ViewControllerGroups: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate{
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView2: UICollectionView!
    
    var arrSG : [SG] = [
        
        SG(SGN: NSLocalizedString("Database Management", comment: ""),
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants1")!,
           PN: NSLocalizedString("8 Participants", comment: ""),
           See: "See More"),
        SG(SGN:NSLocalizedString("Networks Fundamentals", comment: "") ,
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants2")!,
           PN: NSLocalizedString("12 Participants", comment: ""),
           See: "See More"),
        SG(SGN: NSLocalizedString("Information Security", comment: ""),
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants3")!,
           PN: NSLocalizedString("16 Participants", comment: ""),
           See: "See More"),
        SG(SGN:NSLocalizedString("Software Engineering", comment: "") ,
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants1")!,
           PN: NSLocalizedString("21 Participants", comment: ""),
           See: "See More"),
        SG(SGN: NSLocalizedString("Satellites", comment: ""),
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants2")!,
           PN: NSLocalizedString("14 Participants", comment: ""),
           See: "See More"),
        SG(SGN:NSLocalizedString("Computer Programming 1", comment: "") ,
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants3")!,
           PN: NSLocalizedString("26 Participants", comment: ""),
           See: "See More"),
        SG(SGN: NSLocalizedString("Human Computer Interaction", comment: ""),
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants1")!,
           PN: NSLocalizedString("6 Participants", comment: ""),
           See: "See More"),
        SG(SGN:  NSLocalizedString("Wireless Networks Security", comment: ""),
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants2")!,
           PN:  NSLocalizedString("18 Participants", comment: ""),
           See: "See More"),
        SG(SGN: NSLocalizedString("WEB Technologies", comment: ""),
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants3")!,
           PN: NSLocalizedString("11 Participants", comment: ""),
           See: "See More"),
        SG(SGN:NSLocalizedString("Operating system", comment: "") ,
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants1")!,
           PN: NSLocalizedString("33 Participants", comment: ""),
           See: "See More"),
        SG(SGN:NSLocalizedString("Introduction to IT and IS", comment: "") ,
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants2")!,
           PN: NSLocalizedString("7 Participants", comment: ""),
           See: "See More"),
        SG(SGN:NSLocalizedString("Computer Orgnization", comment: "") ,
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants2")!,
           PN: NSLocalizedString("23 Participants", comment: ""),
           See: "See More"),
        SG(SGN: NSLocalizedString("Database Management", comment: "") ,
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants2")!,
           PN:NSLocalizedString("3 Participants", comment: "") ,
           See: "See More"),
        SG(SGN: NSLocalizedString("Networks Fundamentals", comment: ""),
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants2")!,
           PN: NSLocalizedString("2 Participants", comment: ""),
           See: "See More"),
        SG(SGN:NSLocalizedString("Information Security", comment: "") ,
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants2")!,
           PN:  NSLocalizedString("7 Participants", comment: ""),
           See: "See More"),
        SG(SGN:NSLocalizedString("Software Engineering", comment: "") ,
           MN: NSLocalizedString("Information Technology", comment: ""),
           P: UIImage(named:"Participants2")!,
           PN: NSLocalizedString("4 Participants", comment: ""),
           See: "See More")
        
    ]
    
    var searchActive : Bool = true
    
    
    var search = [SG]()
    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        
        collectionView2.delegate = self
        collectionView2.dataSource = self
        
        searchBar.delegate = self
        
        search = arrSG
        
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty
        {
            searchActive = false
            collectionView2.reloadData()
        }
        else{
            searchActive = true
            search = arrSG.filter { team in team.SGN.range(of: searchText, options: .caseInsensitive) != nil
                
            }
            collectionView2.reloadData()
        }
        
    }
    // CollectionView Functions
    
    func collectionView(_ collectionView2: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if searchActive{
        return search.count
        }
        
        else{
        return arrSG.count

        }
    }
    
    func collectionView(_ collectionView2: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "SGroupCell", for: indexPath) as! SGCollectionViewCell
        if searchActive{
            
            let data2 = search[indexPath.row]
            cell2.setupCell2(SGN: data2.SGN, MN: data2.MN, P: data2.P, PN: data2.PN, See: data2.See)
            cell2.backgroundColor = UIColor.white
            cell2.layer.cornerRadius = 15.0
        }
        
        else {
            let data2 = arrSG[indexPath.row]
            cell2.setupCell2(SGN: data2.SGN, MN: data2.MN, P: data2.P, PN: data2.PN, See: data2.See)
            
        }
        
        return cell2
        
    }
    
}



struct SG {
    
    let SGN : String
    let MN : String
    let P : UIImage
    let PN : String
    let See : String
    
}
