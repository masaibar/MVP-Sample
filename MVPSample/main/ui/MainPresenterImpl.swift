//
//  MainPresenterImpl.swift
//  MVPSample
//
//  Created by Nishihara Ryo on 2019/06/25.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

import RxSwift

class MainPresenterImpl: MainPresenter {
    
    let getCountUseCase : GetCountUseCase
    let addCountUseCase : AddCountUseCase
    
    // TODO 破棄する処理
    let disposeBag = DisposeBag()
    
    init(getCountUseCase: GetCountUseCase, addCountUseCase: AddCountUseCase) {
        self.getCountUseCase = getCountUseCase
        self.addCountUseCase = addCountUseCase
    }
    
    private weak var view: MainView!
    
    func setup(view: MainView) {
        self.view = view
    }
    
    func onClickButton() {
        addCountUseCase.execute().subscribe(onCompleted: {
            self.view.showCount(count: self.getCountUseCase.execute())
        }) { (Error) in
            print("onError called")
        }.disposed(by: disposeBag)
    }
}
