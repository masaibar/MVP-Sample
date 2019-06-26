//
//  MainPresenterImpl.swift
//  MVPSample
//
//  Created by Nishihara Ryo on 2019/06/25.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

import Foundation

class MainPresenterImpl: MainPresenter {
    var counter = 0
    
    private weak var view: MainView!
    
    func setUp(view: MainView) {
        self.view = view
    }
    
    func onClickButton() {
        view.showCount(count: counter)
        counter = counter + 1
    }
}
