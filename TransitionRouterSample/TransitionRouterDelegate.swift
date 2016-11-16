//
//  TransitionRouterDelegate.swift
//  TransitionRouterSample
//
//  Created by 田中賢治 on 2016/11/15.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import UIKit

// 画面遷移のためのプロトコル（インターフェース）
protocol TransitionRouterDelegate: class {
    
    func transition(to viewController: UIViewController, animated: Bool, completion: (() -> ())?)
    
}
