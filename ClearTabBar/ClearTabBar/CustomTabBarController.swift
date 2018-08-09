//
//  CustomTabBarController.swift
//  ClearTabBar
//
//  Created by Max Nelson on 8/8/18.
//  Copyright © 2018 AsherApps. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    
    func getColoredImage(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        guard let image:UIImage = UIGraphicsGetImageFromCurrentImageContext() else { return UIImage() }
        UIGraphicsEndImageContext()
        return image
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        setupViewControllers()
        delegate = self
    }
    
    func setupViewControllers() {
        let first = templateNavController(rootViewController: ViewController(), image: #imageLiteral(resourceName: "add-icon"))
        let second = templateNavController(rootViewController: ViewControllerThree(), image: #imageLiteral(resourceName: "done-icon"))
        viewControllers = [first, second]
        tabBar.backgroundImage = getColoredImage(color: .clear, size: CGSize(width: view.frame.width, height: 100))
    }
}



func templateNavController(rootViewController:UIViewController, image:UIImage) -> UINavigationController {
    let navController = UINavigationController(rootViewController: rootViewController)
    navController.tabBarItem.image = image
    return navController
}
