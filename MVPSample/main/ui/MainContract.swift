//
//  MainContract.swift
//  MVPSample
//
//  Created by Nishihara Ryo on 2019/06/25.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

protocol MainPresenter: AnyObject {
    
    func setup(view: MainView)
    
    func onClickButton()
}

protocol MainView :AnyObject {
    
    func showCount(count: Int)
}

