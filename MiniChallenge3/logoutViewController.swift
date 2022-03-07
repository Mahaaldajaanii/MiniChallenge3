//
//  logoutViewController.swift
//  newstory1
//
//  Created by Aljohara Alfozan on 02/08/1443 AH.
//

import UIKit

class logoutViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {

 
    @IBOutlet weak var btnlogout: UIButton!
    @IBOutlet weak var settingtableview: UITableView!
    
    let settingArray : [setting] =
    [
        setting(image: UIImage(systemName: "lock")!, tilte: "Privacy"),
        setting(image: UIImage(systemName: "hand.raised")!, tilte: "Accessibilty"),
        setting(image: UIImage(systemName: "globe")!, tilte: "Language"),
        setting(image: UIImage(systemName: "shield.righthalf.filled")!, tilte: "Security"),
        setting(image: UIImage(systemName: "info.circle")!, tilte: "About us")
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        settingtableview.delegate = self
        settingtableview.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "settings cell") as! logoutTableViewCell
        
        
        cell.title.text = settingArray[indexPath.row].tilte
        cell.img.image = settingArray[indexPath.row].image
//        cell.backgroundColor = UIColor(named: "yellow1")
//        cell.img.image = UIImage(named: settingArray[indexPath.row].image)!
//        cell.img.UIImage = UIImage(named: settingArray[indexPath.row].image)!
        
        return cell

        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
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

