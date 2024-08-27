//
//  HCLineChartVC.swift
//  Discount
//
//  Created by botan pro on 6/18/21.
//

import UIKit
import HCLineChartView
class CartVC: UIViewController {

    
    
    
    @IBOutlet weak var ChartItem: UIBarButtonItem!
    
    
    @IBOutlet weak var HCLineChartView: HCLineChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ChartItem.setTitleTextAttributes(
                [
                    NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 20)!,
                    NSAttributedString.Key.foregroundColor: UIColor.black
                ], for: .normal)
//        HCLineChartView.xElements = [NSNumber(value: 10), NSNumber(value: 20), NSNumber(value: 25), NSNumber(value: 30), NSNumber(value: 40), NSNumber(value: 45), NSNumber(value: 60), NSNumber(value: 65), NSNumber(value: 70), NSNumber(value: 75), NSNumber(value: 80), NSNumber(value: 85), NSNumber(value: 100), NSNumber(value: 120), NSNumber(value: 125), NSNumber(value: 130), NSNumber(value: 145), NSNumber(value: 150), NSNumber(value: 155), NSNumber(value: 165), NSNumber(value: 175), NSNumber(value: 185), NSNumber(value: 195), NSNumber(value: 200)]
//        HCLineChartView.yElements = [NSNumber(value: 210), NSNumber(value: 222), NSNumber(value: 212), NSNumber(value: 216), NSNumber(value: 232), NSNumber(value: 247), NSNumber(value: 262), NSNumber(value: 261), NSNumber(value: 276), NSNumber(value: 274), NSNumber(value: 281), NSNumber(value: 288), NSNumber(value: 290), NSNumber(value: 283), NSNumber(value: 242), NSNumber(value: 250), NSNumber(value: 270), NSNumber(value: 265), NSNumber(value: 260), NSNumber(value: 262), NSNumber(value: 277), NSNumber(value: 272), NSNumber(value: 281), NSNumber(value: 289)]
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "AnotherVCIsOpened"), object: nil)
    }
    

}
