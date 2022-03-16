//
//  ViewControllerJoinAnimation.swift
//  MiniChallenge3
//
//  Created by Khulood  on 13/08/1443 AH.
//

import UIKit
import Lottie


class ViewControllerJoinAnimation: UIViewController {
    
    @IBOutlet weak var groupJoined: UILabel!
    
    var animationView2: AnimationView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView2 = .init(name: "JoinG")
        animationView2?.frame = view.frame(forAlignmentRect: .init(x: -10, y: 100, width: 400, height: 400))
        animationView2?.loopMode = .loop
        animationView2?.animationSpeed = 0.5
        view.addSubview(animationView2!)
        animationView2?.play()
        view.sendSubviewToBack(animationView2!)

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
