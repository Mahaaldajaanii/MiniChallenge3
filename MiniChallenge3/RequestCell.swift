//
//  RequestCell.swift
//  Challenge3 Maha
//
//  Created by Maha on 26/07/1443 AH.
//

import UIKit


//protocol ShowVC: AnyObject {
 //   func accept(_ cell: RequestCell)
//}
protocol DataCollectionProtocol{
    func passData(indx:Int)
    func deletData(indx:Int)
    
    
}
class RequestCell: UICollectionViewCell {
    
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    
    
    
    
    
    @IBOutlet weak var accept: UIButton!
    @IBOutlet weak var delet: UIButton!
    @IBOutlet weak var major: UILabel!
    
    var index: IndexPath?
    var delegate: DataCollectionProtocol?
    struct Student {
        var image : UIImage?
        var name : String
        var major : String
    }
    
    var student : [Student] = [Student(image: UIImage(named: "Image2"), name: "Asmaa Saad", major: "Information Technology"), Student(image: UIImage(named: "Image3") , name: "Sara Ahmed", major: "Information Technology"),Student(image:UIImage(named: "Image1") , name: "Nora Faisal", major: "Information Technology") ]
    
    
  //  weak var delegate :ShowVC?
    
    
    
   // @IBAction func accept(_ sender: UIButton) {
    //    self.delegate?.accept(self)
    
  //  }
    
    @IBAction func accept(_ sender: Any) {
        delegate?.passData(indx: (index?.row)!)
    }
    
    @IBAction func delet(_ sender: Any) {
        delegate?.deletData(indx: (index?.row)!)
    }
}

