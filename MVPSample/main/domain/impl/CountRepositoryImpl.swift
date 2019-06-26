//
//  CountRepositoryImpl.swift
//  MVPSample
//
//  Created by Nishihara Ryo on 2019/06/26.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

class CountRepositoryImpl : CountRepository {
    
    private var count = 0
    
    func get() -> Int {
       return self.count
    }
    
    func increment() {
        count = count + 1
    }
}
