//
//  APresenter.swift
//  TransitionRouterSample
//
//  Created by 田中賢治 on 2016/11/15.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import UIKit

class APresenter {
    
    private weak var aOutputDelegate: AOutputDelegate?
    private var transitionRouter: TransitionRouter?
    
    init(delegate aOutputDelegate: AOutputDelegate, transitionRouterDelegate: TransitionRouterDelegate) {
        self.aOutputDelegate = aOutputDelegate
        self.transitionRouter = TransitionRouter(delegate: transitionRouterDelegate)
    }
    
    func change(from color: UIColor) {
        if color == .cyan {
            aOutputDelegate?.change(to: .orange)
        } else {
            aOutputDelegate?.change(to: .cyan)
        }
    }
    
    func transition() {
        transitionRouter?.transition()
    }
    
}
