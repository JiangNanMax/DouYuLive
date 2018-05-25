//
//  UIBarButtonItem-Extension.swift
//  DouYuLive
//
//  Created by 江南 on 2018/5/25.
//  Copyright © 2018年 江南. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    convenience init(imageName : String, imageHighName : String="", size : CGSize = CGSize.zero) {
        let btn = UIButton()
        btn.setImage(UIImage(named : imageName), for: .normal)
        
        if(imageHighName != ""){
            btn.setImage(UIImage(named : imageHighName), for: .highlighted)
        }
        
        if(size != CGSize.zero){
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }else{
            btn.sizeToFit()
        }
        
        self.init(customView: btn)
    }
}
