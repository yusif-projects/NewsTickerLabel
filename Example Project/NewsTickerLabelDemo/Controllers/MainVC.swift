//
//  MainVC.swift
//  NewsTickerLabelDemo
//
//  Created by Yusif Aliyev on 19.03.23.
//

import UIKit
import NewsTickerLabel

class MainVC: UIViewController {
    
    @IBOutlet weak var newsTickerLabel_ShortText: NewsTickerLabel!
    @IBOutlet weak var newsTickerLabel_LongText: NewsTickerLabel!
    @IBOutlet weak var newsTickerLabel_LongText_NoDelay: NewsTickerLabel!
    @IBOutlet weak var newsTickerLabel_LongText_NoDelay_LeftToRight: NewsTickerLabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .darkContent }
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation { return .portrait }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        newsTickerLabel_ShortText.activate()
        newsTickerLabel_LongText.activate()
        newsTickerLabel_LongText_NoDelay.activate()
        newsTickerLabel_LongText_NoDelay_LeftToRight.activate()
    }

}
