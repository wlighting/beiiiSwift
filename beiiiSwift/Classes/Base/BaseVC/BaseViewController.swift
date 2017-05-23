//
//  BaseViewController.swift
//  beiiiSwift
//
//  Created by wlighting on 2017/5/22.
//  Copyright © 2017年 wlighting. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        automaticallyAdjustsScrollViewInsets = false
        view.backgroundColor = UIColor.hexInt(0xf2f2f2)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isTranslucent = false
    }

}
