//
//  HomeViewController.swift
//  PenPal
//
//  Created by hu tsun hao on 3/6/18.
//  Copyright © 2018 hu tsun hao. All rights reserved.
//

import UIKit
import Cartography

class HomeViewController: RootViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func setupView() {
        styleNavBar()
        self.view.backgroundColor = .white
        self.view.addSubview(buttonView)
        constrain (self.view, buttonView) { container, button in
            button.centerX == container.centerX
            button.centerY == container.centerY
            button.width == 100
            button.height == 100
        }
    }

    private func styleNavBar() {
        let addButton = UIBarButtonItem.init(barButtonSystemItem: .add, target: nil, action: nil)
        self.navigationItem.rightBarButtonItem = addButton
    }


    private var buttonView : UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.titleLabel?.text = "this is a test"
        button.titleLabel?.textColor = .white
        return button
    }()

}
