//
//  BViewController.swift
//  TransitionRouterSample
//
//  Created by 田中賢治 on 2016/11/14.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import UIKit

class BViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
    }
    
    @IBAction func tapTransitionButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
