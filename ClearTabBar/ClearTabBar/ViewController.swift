//
//  ViewController.swift
//  ClearTabBar
//
//  Created by Max Nelson on 8/8/18.
//  Copyright © 2018 AsherApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let bg = UIImageView(image: UIImage(named: "bg.jpg"))
        bg.frame = view.frame
        bg.contentMode = .scaleAspectFill
        view.addSubview(bg)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


class ViewControllerThree: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let bg = UIImageView(image: UIImage(named: "bg3.jpg"))
        bg.frame = view.frame
        bg.contentMode = .scaleAspectFill
        view.addSubview(bg)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

