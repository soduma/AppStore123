//
//  TabBarController.swift
//  AppStore
//
//  Created by 장기화 on 2021/12/10.
//

import UIKit

class TabBarController: UITabBarController {
    private lazy var todayViewController: UIViewController = {
        let viewController = TodayViewController()
        let tabBarItem = UITabBarItem(title: "투데이", image: UIImage(systemName: "mail"), tag: 0) // 태그는 순서!
        tabBarItem.selectedImage = UIImage(systemName: "mail.fill")
        viewController.tabBarItem = tabBarItem
        return viewController
    }()
    
    private lazy var appViewController: UIViewController = {
        let viewController = UINavigationController(rootViewController: AppViewController())
        let tabBarItem = UITabBarItem(title: "앱", image: UIImage(systemName: "square.stack.3d.up"), tag: 1)
        tabBarItem.selectedImage = UIImage(systemName: "square.stack.3d.up.fill")
        viewController.tabBarItem = tabBarItem
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [todayViewController, appViewController]
    }
}
