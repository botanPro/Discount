//
//  MessageBox.swift
//  BarDast
//
//  Created by Botan Amedi on 4/27/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit


class MessageBoxVC : UIViewController{
    
    var Text : String?
    
    @IBOutlet weak var Done: UIButton!
    
    @IBOutlet weak var Message : UILabel!
    
    @IBAction func Done(_ sender : UIButton){
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var viewlayout: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Message.text = Text
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 0.4, delay: -1.0, options: .curveEaseInOut) {
            self.viewlayout.constant = 0
            self.view.layoutIfNeeded()
        } completion: { state in
            UIView.animate(withDuration: 0.1, delay: 0.0, options: .curveEaseInOut) {
                self.viewlayout.constant = -5
                self.view.layoutIfNeeded()
            } completion: { state in
                UIView.animate(withDuration: 0.15, delay: 0.0, options: .curveEaseInOut) {
                    self.viewlayout.constant = 0
                    self.view.layoutIfNeeded()
                } completion: { state in
                    //
                }
            }

        }
        
        
    }
}

class MessageBox {
       
    static func ShowMessage(Text: String, titleAction : String){
        let StoryBoard = UIStoryboard(name: "MessageBox", bundle: nil)
        let vc = StoryBoard.instantiateViewController(withIdentifier:"MessageBox") as! MessageBoxVC
        vc.Text = Text
        print(Text)
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overFullScreen
        UIApplication.GetPresentviewController()?.present(vc, animated: true, completion: nil)
    }

}

extension UIApplication{
    
    static func GetPresentviewController() -> UIViewController? {
        var presentViewController = UIApplication.shared.windows.first?.rootViewController
        while let pVc = presentViewController?.presentedViewController {
            
              presentViewController = pVc
        }
        return presentViewController
    }

}
