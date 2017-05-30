//
//  SYMainTabbarVC.swift
//  beiiiSwift
//
//  Created by wlighting on 2017/5/22.
//  Copyright © 2017年 wlighting. All rights reserved.
//

import UIKit

class SYMainTabbarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addAllChildVC()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK:- 懒加载
    // 按钮正常状态下的图片数组
    lazy var normalImageArray:[UIImage] = {
        var tempArray: [UIImage] = [UIImage]()
        tempArray.append(UIImage(named: "ic_tab_home_normal")!)
        tempArray.append(UIImage(named: "ic_tab_trip_normal")!)
        tempArray.append(UIImage(named: "ic_tab_recommended_normal")!)
        tempArray.append(UIImage(named: "ic_tab_service_normal")!)
        tempArray.append(UIImage(named: "ic_tab_mine_normal")!)
        return tempArray
    }()
    
    // 按钮选中状态下的图片数组
    lazy var selectImageArray:[UIImage] = {
        var tempArray: [UIImage] = [UIImage]()
        tempArray.append(UIImage(named: "ic_tab_home_pressed")!)
        tempArray.append(UIImage(named: "ic_tab_trip_pressed")!)
        tempArray.append(UIImage(named: "ic_tab_recommended_pressed")!)
        tempArray.append(UIImage(named: "ic_tab_service_pressed")!)
        tempArray.append(UIImage(named: "ic_tab_mine_pressed")!)
        return tempArray
    }()
    
    lazy var titleArray:[String] = {
        var tempArray: [String] = [String]()
        tempArray.append("首页")
        tempArray.append("行程")
        tempArray.append("推荐")
        tempArray.append("客服")
        tempArray.append("我的")
        return tempArray
    }()
    
    lazy var childVCArray: [UIViewController] = {
        var tempArray: [UIViewController] = [UIViewController]()
        tempArray.append(SYHomeVC())
        tempArray.append(SYRouteVC())
        tempArray.append(SYRecommendVC())
        tempArray.append(SYServiecVC())
        tempArray.append(SYMineVC())
        return tempArray
    }()

    func addOneChildVC(childVC: UIViewController,selectedImage:UIImage,defoultImage:UIImage,title:String) {
        childVC.title = title;
        
        childVC.tabBarItem.image = defoultImage.withRenderingMode(.alwaysOriginal)
        
        childVC.tabBarItem.selectedImage = selectedImage.withRenderingMode(.alwaysOriginal)
        
        // 设置文字的样式/tabBarItem 文字样式
        var textAttrs = [String:UIColor]()
        textAttrs[NSForegroundColorAttributeName] = UIColor.hexInt(0x7b7b7b);
        var selectTextAttrs = [String:UIColor]()
        selectTextAttrs[NSForegroundColorAttributeName] = UIColor.hexInt(0x37B327);
        childVC.tabBarItem.setTitleTextAttributes(textAttrs, for:.normal)
        childVC.tabBarItem.setTitleTextAttributes(selectTextAttrs, for:.selected)
        
        let baseNav = BaseNavigationController(rootViewController: childVC)
        
        
        self.addChildViewController(baseNav)
        
        
    }
    
    func addAllChildVC() {
        for index in 0..<5 {
            
            self.addOneChildVC(childVC: childVCArray[index], selectedImage: selectImageArray[index], defoultImage: normalImageArray[index] ,title: titleArray[index])
            
        }
        
    }
    
    
}



