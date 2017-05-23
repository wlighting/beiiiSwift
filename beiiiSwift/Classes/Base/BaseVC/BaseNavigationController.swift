//
//  BaseNavigationController.swift
//  beiiiSwift
//
//  Created by wlighting on 2017/5/22.
//  Copyright © 2017年 wlighting. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
