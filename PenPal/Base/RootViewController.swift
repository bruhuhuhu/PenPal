//
//  RootViewController.swift
//  PenPal
//
//  Created by hu tsun hao on 16/6/18.
//  Copyright © 2018 hu tsun hao. All rights reserved.
//

import UIKit
import Cartography

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupNavBar() {
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "PenPal"
        self.navigationController?.navigationBar.isTranslucent = false
    }

    @objc func pushToNextVC() {
        let newVC = UIViewController()
        newVC.view.backgroundColor = UIColor.white
        self.navigationController?.pushViewController(newVC, animated: true)
    }

}

