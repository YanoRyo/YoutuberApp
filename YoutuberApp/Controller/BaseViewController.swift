//
//  BaseViewController.swift
//  YoutuberApp
//
//  Created by 矢野涼 on 2020-04-01.
//  Copyright © 2020 Ryo Yano. All rights reserved.
//

import UIKit
import SegementSlide

class BaseViewController: SegementSlideViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        reloadData()
        scrollToSlide(at: 0, animated: true)
        

        // Do any add itional setup after loading the view.
    }
    
    override var headerView: UIView?{
        let headerView = UIImageView()
        headerView.isUserInteractionEnabled = true
        headerView.contentMode = .scaleToFill
        headerView.image = UIImage(named: "header")
        headerView.translatesAutoresizingMaskIntoConstraints = false
        let headerHeight:CGFloat
        if #available(iOS 11.0, *){
            headerHeight = view.frame.height / 4 + view.safeAreaInsets.top
        }else{
            headerHeight = view.frame.height / 4 + topLayoutGuide.length
        }
        headerView.heightAnchor.constraint(equalToConstant: headerHeight).isActive = true
        return headerView
    }
    
    override var titlesInSwitcher: [String]{
        return ["K-POP","Baseball","Youtuber","Toronto","Corona",]
        
    }
    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {
        switch index {
            
          case 0: return Page1ViewController()
          case 1: return Page2ViewController()
          case 2: return Page3ViewController()
          case 3: return Page4ViewController()
          case 4: return Page5ViewController()
            
        default:
            return Page1ViewController()
            
        }
    }
    
}
