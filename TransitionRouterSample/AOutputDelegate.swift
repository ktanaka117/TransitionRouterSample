//
//  AOutputDelegate.swift
//  TransitionRouterSample
//
//  Created by 田中賢治 on 2016/11/15.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import UIKit

// Presenter -> AViewControllerに処理を伝播させるためのインターフェース
protocol AOutputDelegate: class {
    
    func change(to color: UIColor)
    
}
