//
//  TabBarViewController.swift
//  新浪微博
//
//  Created by Eric.Wu on 17/3/15.
//  Copyright © 2017年 eric. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupChildVC(childVC: YKHomeViewController(), title: "首页", iconName: "tabbar_home")
        setupChildVC(childVC: YKMessageController(), title: "消息", iconName: "tabbar_message_center")
        setupChildVC(childVC: YKFoundViewController(), title: "发现", iconName: "tabbar_discover")
        setupChildVC(childVC: YKProfileController(), title: "我的", iconName: "tabbar_profile")
            }


}
// Mark 添加子控制器
extension TabBarViewController {
    fileprivate func setupChildVC(childVC : UIViewController ,title : String,iconName : String)
    {
        childVC.title = title
        childVC.tabBarItem.image = UIImage(named: iconName)
        childVC.tabBarItem.selectedImage = UIImage(named: iconName + "_highlighted")
        let nav = YKNavigationController(rootViewController:childVC)
        
        // 动态获取项目的命名空间
        let bunldName = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        
        print(bunldName)
        
        // 通过类创建对象
        addChildViewController(nav)
        
    }
}
