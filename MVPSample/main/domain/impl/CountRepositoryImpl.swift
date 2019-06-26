//
//  CountRepositoryImpl.swift
//  MVPSample
//
//  Created by Nishihara Ryo on 2019/06/26.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

import RxSwift

class CountRepositoryImpl : CountRepository {
    
    private var count = 0
    
    func get() -> Single<Int> {
       return Single.just(self.count)
    }
    
    func increment() -> Completable {
        return Completable.create { completable in
            self.count = self.count + 1
            completable(.completed)
            return Disposables.create()
        }
    }
}
