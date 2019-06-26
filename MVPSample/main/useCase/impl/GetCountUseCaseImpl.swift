//
//  GetCountUseCaseImpl.swift
//  MVPSample
//
//  Created by Nishihara Ryo on 2019/06/26.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

class GetCountUseCaseImpl : GetCountUseCase {
    
    let countRepository: CountRepository
    
    init(countRepository: CountRepository) {
        self.countRepository = countRepository
    }
    
    func execute() -> Int {
        return countRepository.get()
    }
}
