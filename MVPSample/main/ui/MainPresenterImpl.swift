//
//  MainPresenterImpl.swift
//  MVPSample
//
//  Created by Nishihara Ryo on 2019/06/25.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

class MainPresenterImpl: MainPresenter {
    
    let getCountUseCase : GetCountUseCase
    let addCountUseCase : AddCountUseCase
    
    init(getCountUseCase: GetCountUseCase, addCountUseCase: AddCountUseCase) {
        self.getCountUseCase = getCountUseCase
        self.addCountUseCase = addCountUseCase
    }
    
    private weak var view: MainView!
    
    func setup(view: MainView) {
        self.view = view
    }
    
    func onClickButton() {
        addCountUseCase.execute()
        view.showCount(count: getCountUseCase.execute())
    }
}
