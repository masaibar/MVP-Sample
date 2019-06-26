//
//  CountRepository.swift
//  MVPSample
//
//  Created by Nishihara Ryo on 2019/06/26.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

import Foundation

protocol CountRepository {
    func get() -> Int
    
    func increment()
}
