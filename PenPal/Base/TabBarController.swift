//
//  TabBarController.swift
//  PenPal
//
//  Created by hu tsun hao on 20/6/18.
//  Copyright © 2018 hu tsun hao. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        let viewControllersList = [homeViewController, myCollectionViewController]
        viewControllers = viewControllersList.map { UINavigationController(rootViewController: $0) }
    }

    lazy public var homeViewController: HomeViewController = {

        let homeVC = HomeViewController()

        let title = "Currently Filled"

        let defaultImage = UIImage(named: "002-poetry")?.withRenderingMode(.alwaysTemplate)

        let selectedImage = UIImage(named: "002-poetry")?.withRenderingMode(.alwaysOriginal)

        let scaledDefault = resizeImage(defaultImage!, targetSize: CGSize(width: 23, height: 23))

        let scaledSelected = resizeImage(selectedImage!, targetSize: CGSize(width: 23, height: 23))

        let tabBarItem = UITabBarItem(title: title, image: scaledDefault, selectedImage: scaledSelected)

        homeVC.tabBarItem = tabBarItem

        return homeVC
    }()

    lazy public var myCollectionViewController: MyCollectionViewController = {

        let myCollectionVC = MyCollectionViewController()

        let title = "My Collection"

        let defaultImage =  UIImage(named: "001-pen")?.withRenderingMode(.alwaysTemplate)

        let scaledDefault = resizeImage(defaultImage!, targetSize: CGSize(width: 23, height: 23))

        let selectedImage = UIImage(named: "001-pen")?.withRenderingMode(.alwaysOriginal)

        let scaledSelected = resizeImage(selectedImage!, targetSize: CGSize(width: 23, height: 23))

        let tabBarItem = UITabBarItem(title: title, image: scaledDefault, selectedImage: scaledSelected)

        myCollectionVC.tabBarItem = tabBarItem

        return myCollectionVC
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func resizeImage(_ image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size

        let widthRatio  = targetSize.width  / image.size.width
        let heightRatio = targetSize.height / image.size.height

        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio, height: size.height * widthRatio)
        }

        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)

        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!
    }

}

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
}

