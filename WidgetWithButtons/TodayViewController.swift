//
//  TodayViewController.swift
//  WidgetWithButtons
//
//  Created by Vladyslav Tsykhmistro on 29.01.2020.
//  Copyright © 2020 Vladyslav Tsykhmistro. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController {
        
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateContainer: UIView!
    
    private var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        extensionContext?.widgetLargestAvailableDisplayMode = .expanded
        timer = Timer.scheduledTimer(timeInterval: 0, target: self, selector:#selector(tick) , userInfo: nil, repeats: true)
        dateLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .full, timeStyle: .none)
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
    @objc private func tick() {
        timeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .long)
    }
    
    @IBAction func red(_ sender: ConfigurableButton) {
        let url = URL(string: "widgetTest://red")!
        self.extensionContext?.open(url, completionHandler: { (success) in
            if (!success) {
                print("error: failed to open app from Today Extension")
            }
        })
    }
    
    @IBAction func green(_ sender: ConfigurableButton) {
        let url = URL(string: "widgetTest://green")!
        self.extensionContext?.open(url, completionHandler: { (success) in
            if (!success) {
                print("error: failed to open app from Today Extension")
            }
        })
    }
    
    @IBAction func blue(_ sender: ConfigurableButton) {
        let url = URL(string: "widgetTest://blue")!
        self.extensionContext?.open(url, completionHandler: { (success) in
            if (!success) {
                print("error: failed to open app from Today Extension")
            }
        })
    }
    
}

extension TodayViewController: NCWidgetProviding {

    func widgetActiveDisplayModeDidChange(_ activeDisplayMode: NCWidgetDisplayMode, withMaximumSize maxSize: CGSize) {
        
        switch activeDisplayMode {
        case .compact:
            self.preferredContentSize = maxSize
            dateContainer.isHidden = true
        case .expanded:
            self.preferredContentSize = CGSize(width: maxSize.width, height: 320)
            dateContainer.isHidden = false
        default: break
        }
    }
}

