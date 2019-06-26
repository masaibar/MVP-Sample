//
//  SwinjectStoryboardExtension.swift
//  MVPSample
//
//  Created by Kunugi Masashi on 2019/06/26.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

import SwinjectStoryboard

extension SwinjectStoryboard {
    class func setup() {
        defaultContainer.register(MainPresenter.self) { _  in
            MainPresenterImpl()
        }
        defaultContainer.storyboardInitCompleted(ViewController.self) { (r, c) in
            c.presenter = r.resolve(MainPresenter.self)
        }
    }
}
