//
//  coursesViewController.swift
//  newstory1
//
//  Created by Aljohara Alfozan on 28/07/1443 AH.
//

import UIKit

class coursesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnsettings: UIBarButtonItem!
    //    @IBOutlet weak var navtitle: UINavigationItem!
    
    let cr = [
        course(date: "22/3/2022", studygr: "Study Group", courseName: "Software engineering"),
        course(date: "19/3/2022", studygr: "Study Group", courseName: "Software engineering"),
        course(date: "5/3/2022", studygr: "Study Group", courseName: "Computer siences"),
        course(date: "22/2/2022", studygr: "Study Group", courseName: "Software engineering"),
        course(date: "16/2/2022", studygr: "Study Group", courseName: "Software engineering"),
        course(date: "8/2/2022", studygr: "Study Group", courseName: "Computer siences")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Notifications"
        

    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "courses" , for: indexPath) as! coursesTableViewCell
        cell.date.text = cr[indexPath.row].date
        cell.studygroup.text = cr[indexPath.row].studygr
        cell.lblcourses.text = cr[indexPath.row].courseName
        
        
//        Design
        cell.lblcourses.textColor = UIColor(named: "yellow1")
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cr.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        127
    }
    
    
    
}


