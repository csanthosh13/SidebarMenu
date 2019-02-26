//
//  SlidebarMenu.swift
//  SlidebarMenu
//
//  Created by Santosh Chandrasekharan on 24/02/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit
extension UIViewController {
    func addSideBarMenu(leftMenuButton: UIBarButtonItem?, rightMenuButton: UIBarButtonItem? = nil) {
        if revealViewController() != nil {
            if let menuButton = leftMenuButton {
                menuButton.target = revealViewController()
                menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            }
            if let extraButton = rightMenuButton {
                revealViewController().rightViewRevealWidth = 150
                extraButton.target = revealViewController()
                extraButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            }
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
}
