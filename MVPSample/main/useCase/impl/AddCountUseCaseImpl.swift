//
//  AddCountUseCaseImpl.swift
//  MVPSample
//
//  Created by Nishihara Ryo on 2019/06/26.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

import RxSwift

class AddCountUseCaseImpl: AddCountUseCase {
    
    let countRepository: CountRepository
    
    init(countRepository: CountRepository) {
        self.countRepository = countRepository
    }
    
    func execute() -> Completable {
        return countRepository.increment()
    }
}
