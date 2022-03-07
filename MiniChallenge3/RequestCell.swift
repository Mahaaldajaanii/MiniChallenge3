//
//  RequestCell.swift
//  Challenge3 Maha
//
//  Created by Maha on 26/07/1443 AH.
//

import UIKit


protocol ShowVC: AnyObject {
    func accept(_ cell: RequestCell)
}

class RequestCell: UICollectionViewCell {
    
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    
    
    
    
    
    @IBOutlet weak var accept: UIButton!
    @IBOutlet weak var delet: UIButton!
    @IBOutlet weak var major: UILabel!
    
    weak var delegate :ShowVC?
    
    
    
    @IBAction func accept(_ sender: UIButton) {
        self.delegate?.accept(self)
    
    }
    
    
}
