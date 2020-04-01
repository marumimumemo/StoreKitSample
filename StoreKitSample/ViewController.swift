//
//  ViewController.swift
//  StoreKitSample
//
//  Created by satoshi.marumoto on 2020/04/01.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import StoreKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func requestReviewButton(_ sender: UIButton) {
        
        if #available(iOS 10.3, *) {
            SKStoreReviewController.requestReview()
        } else {
            if let url = URL(string: "itms-apps://itunes.apple.com/app/{appleid}?action=write-review") {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url, options: [:])
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
        }
    }

}

