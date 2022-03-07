//
//  DescriptionVC.swift
//  Challenge3 Maha
//
//  Created by Maha on 26/07/1443 AH.
//

import UIKit

class DescriptionVC: UIViewController {
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var text2: UILabel!
    @IBOutlet weak var text3: UILabel!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var text4: UILabel!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var text5: UILabel!
    @IBOutlet weak var text6: UILabel!
    @IBOutlet weak var participantCollection: UICollectionView!
    @IBOutlet weak var Requestss: UICollectionView!
    @IBOutlet weak var chat: UIImageView!
    @IBOutlet weak var Participant: UILabel!
    @IBOutlet weak var Requests: UILabel!
    
    @IBAction func see(_ sender: UIButton) {
    }
    struct Photo {
        var photo : UIImage?
    }
    
    var photoArray : [Photo] = [Photo(photo: UIImage(named: "Image6")), Photo(photo: UIImage(named: "Image4")),Photo(photo: UIImage(named: "Image5"))]
    struct Photoo {
        var photoo : UIImage?
    }
    
    var photoArrayy : [Photoo] = [Photoo(photoo: UIImage(named: "Image2")), Photoo(photoo: UIImage(named: "Image1")),Photoo(photoo: UIImage(named: "Image3"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        participantCollection.delegate = self
        participantCollection.dataSource = self
        
      Requestss.delegate = self
       Requestss.dataSource = self
        
        
    }
    
}

extension DescriptionVC : UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.participantCollection {
            return photoArray.count
            
        } else {
            return photoArrayy.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.participantCollection {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ParticipantsCollectionCell
        cell.photo.image = photoArray[indexPath.row].photo
        
        return cell
        } else {

            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! RequestsCell
            cell.Requests.image = photoArrayy[indexPath.row].photoo
            
            return cell
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    
    
    
    
}
