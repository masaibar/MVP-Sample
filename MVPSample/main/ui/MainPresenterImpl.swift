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
        self.addCount()
    }
    
    private func addCount() {
        addCountUseCase.execute().subscribe(onCompleted: {
            self.getCount()
        }, onError: { (error) in
            print("error: \(error)")
        }).disposed(by: disposeBag)
    }
    
    private func getCount() {
        getCountUseCase.execute().subscribe(onSuccess: { (count) in
            self.view.showCount(count: count)
        }) { _ in
            // do nothing
        }.disposed(by: disposeBag)
    }
}
