//
//  MainViewController.swift
//  DouYuLive
//
//  Created by 江南 on 2018/5/25.
//  Copyright © 2018年 江南. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVC(storyName: "Home")
        addChildVC(storyName: "Live")
        addChildVC(storyName: "Follow")
        addChildVC(storyName: "Profile")
    }
    
    private func addChildVC(storyName : String){
        //获得控制器
        let childVC = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        
        //设置子控制器
        addChildViewController(childVC)
    }
}
