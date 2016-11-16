//
//  ViewController.swift
//  TransitionRouterSample
//
//  Created by 田中賢治 on 2016/11/14.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    private var aPresenter: APresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        
        aPresenter = APresenter(delegate: self, transitionRouterDelegate: self)
    }

    @IBAction func tapChangeColorButton(_ sender: Any) {
        aPresenter?.change(from: view.backgroundColor!)
    }
    
    @IBAction func tapTransitionButton(_ sender: Any) {
        aPresenter?.transition()
    }
    
}

extension AViewController: AOutputDelegate {
    
    func change(to color: UIColor) {
        view.backgroundColor = color
    }
    
}

extension AViewController: TransitionRouterDelegate {
    
    func transition(to viewController: UIViewController, animated: Bool, completion: (() ->())? = nil) {
        present(viewController, animated: animated, completion: completion)
    }
    
}
