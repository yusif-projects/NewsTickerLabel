//
//  MainVC.swift
//  NewsTickerLabelDemo
//
//  Created by Yusif Aliyev on 19.03.23.
//

import UIKit
import NewsTickerLabel

class MainVC: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .darkContent }
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation { return .portrait }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
    }

}
