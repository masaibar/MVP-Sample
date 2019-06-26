//
//  MainContract.swift
//  MVPSample
//
//  Created by Nishihara Ryo on 2019/06/25.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

import Foundation

protocol MainPresenter: AnyObject {
    
    func setUp(view: MainView)
    
    func onClickButton()
}

protocol MainView :AnyObject {
    
    func showCount(count: Int)
}

