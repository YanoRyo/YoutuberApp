//
//  ViewController.swift
//  YoutuberApp
//
//  Created by 矢野涼 on 2020-06-06.
//  Copyright © 2020 Ryo Yano. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var timer=Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        let animationView = AnimationView()
        let animation = Animation.named("youtube")
        animationView.frame = CGRect(x: CGFloat(0), y: 0, width: imageView.frame.size.width, height: imageView.frame.size.height)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .playOnce
        animationView.play()
        imageView.addSubview(animationView)
        timer = Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(nextView), userInfo: nil, repeats: false)

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    @objc func nextView(){
        self.performSegue(withIdentifier: "next", sender: nil)
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
