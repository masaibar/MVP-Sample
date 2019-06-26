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
        defaultContainer.register(CountRepository.self) { _ in
            CountRepositoryImpl()
        }
        
        defaultContainer.register(GetCountUseCase.self) { r in
            GetCountUseCaseImpl(
                countRepository: r.resolve(CountRepository.self)!
            )
        }
        defaultContainer.register(AddCountUseCase.self) { r in
            AddCountUseCaseImpl(
                countRepository: r.resolve(CountRepository.self)!
            )
        }
        
        defaultContainer.register(MainPresenter.self) { r  in
            MainPresenterImpl(
                getCountUseCase: r.resolve(GetCountUseCase.self)!,
                addCountUseCase: r.resolve(AddCountUseCase.self)!
            )
        }
        defaultContainer.storyboardInitCompleted(ViewController.self) { (r, c) in
            c.presenter = r.resolve(MainPresenter.self)
        }
    }
}
