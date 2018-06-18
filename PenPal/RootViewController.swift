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
        styleNavBar()
        styleToolBar()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func styleNavBar() {
        navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "PenPal"
        navigationController?.navigationBar.isTranslucent = false
    }

    private func styleToolBar() {
        navigationController?.isToolbarHidden = false
        let toolBar = UIToolbar()
        var items = [UIBarButtonItem]()

        items.append(
            //UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: nil)
            UIBarButtonItem(image: UIImage(named:"001-pen"), style: .plain, target: nil, action: nil)
        )

        items.append(
             UIBarButtonItem(image: UIImage(named:"002-poetry"), style: .plain, target: nil, action: nil)
        )

        items.append(
            UIBarButtonItem(image: UIImage(named:"003-ink"), style: .plain, target: nil, action: nil)
        )

        toolBar.translatesAutoresizingMaskIntoConstraints = false
        self.toolbarItems = items
        self.navigationController?.toolbar.addSubview(toolBar)
    }
}
