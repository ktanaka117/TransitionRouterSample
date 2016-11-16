//
//  TransitionRouter.swift
//  TransitionRouterSample
//
//  Created by 田中賢治 on 2016/11/14.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import UIKit

// 画面遷移のためのルーター
class TransitionRouter {
    
    private weak var transitionRouterDelegate: TransitionRouterDelegate?
    
    init(delegate transitionRouterDelegate: TransitionRouterDelegate) {
        self.transitionRouterDelegate = transitionRouterDelegate
    }
    
    func transition() {
        guard let bViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BViewController") as? BViewController else { return }
        transitionRouterDelegate?.transition(to: bViewController, animated: true, completion: nil)
    }
    
}
