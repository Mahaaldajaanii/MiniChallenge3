//
//  RequestVC.swift
//  Challenge3 Maha
//
//  Created by Maha on 26/07/1443 AH.
//

import UIKit

class RequestVC: UIViewController {
    
 
    @IBOutlet weak var accept: UIButton!
    @IBOutlet weak var collection: UICollectionView!
    var model = DescriptionVC()
    
   
    struct Student {
        var image : UIImage?
        var name : String
        var major : String
    }
    
    var student : [Student] = [Student(image: UIImage(named: "Image2"), name:NSLocalizedString("Asmaa Saad", comment: "") , major: NSLocalizedString("Information Tencholgy", comment: "")), Student(image: UIImage(named: "Image3") , name: NSLocalizedString("Shahed Fahad", comment: ""), major: NSLocalizedString("Information Tencholgy", comment: "")),Student(image:UIImage(named: "Image1") , name: NSLocalizedString("Nora Faisal", comment: ""), major: NSLocalizedString("Information Tencholgy", comment: "")),Student(image:UIImage(named: "Image4") , name: NSLocalizedString("Nada Salem", comment: ""), major: NSLocalizedString("Information Tencholgy", comment: "")) ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Requsts"
        collection.delegate = self
        collection.dataSource = self
        
//        accept.setTitle("Test", for: .normal)
//            .setTitle(NSLocalizedString("Accept", comment: ""))


      //  Accept.titleLabel = NSLocalizedString("Accept", comment: "")
        
        
        // Do any additional setup after loading the view.
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //        let collectionView = storyboard?.instantiateViewController(withIdentifier: "accept") as? DescriptionVC
        //        collectionView?. = model.photoArrayy[indexPath.row]
        //        self.navigationController?.pushViewController(accept, animated: true)
    }
    
    
    
    
}


//extension RequestVC : ShowVC {
//func accept(_ cell: RequestCell) {
//  let indexPath = collection.indexPath(for: cell)
// model.photoArray.append(DescriptionVC.Photo(photo: UIImage(named: "Image2")))


//        if indexPath?.row == 1 {
//        }

//  print("DDDD \(indexPath?.row)")
// performSegue(withIdentifier: "accept", sender: nil)
// collection.reloadData()
//}

//}
extension RequestVC : UICollectionViewDataSource , UICollectionViewDelegate, UICollectionViewDelegateFlowLayout , DataCollectionProtocol{
    
    func passData(indx: Int) {
//        let collectionView = storyboard?.instantiateViewController(withIdentifier: "accept") as? DescriptionVC
//        collectionView?.Requestss = DescriptionVC.Photoo
//        self.navigationController?.pushViewController(collectionView!, animated: true)
        performSegue(withIdentifier: "goToDes", sender: nil)
    }
    
    func deletData(indx: Int) {
        self.student.remove(at: indx)
        collection.reloadData()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return student.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! RequestCell
        
        cell.delegate = self
        cell.layer.cornerRadius = 20
        cell.name.text = student[indexPath.row].name
        cell.major.text = student[indexPath.row].major
        cell.image1.image = student[indexPath.row].image
        cell.index = indexPath
        cell.delegate = self
        
        cell.accept.setTitle(NSLocalizedString("Accept", comment: ""), for: .normal)
        cell.accept.setTitle(NSLocalizedString("Accept", comment: ""), for: .selected)
        cell.delete.setTitle(NSLocalizedString("Delet", comment: ""), for: .normal)
        cell.delete.setTitle(NSLocalizedString("Delet", comment: ""), for: .selected)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 155)
    }
    
    
}

