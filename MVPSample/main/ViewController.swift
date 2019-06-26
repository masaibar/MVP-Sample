//
//  ViewController.swift
//  MVPSample
//
//  Created by Nishihara Ryo on 2019/06/25.
//  Copyright © 2019 Nishihara Ryo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    var presenter: MainPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.setUp(view: self)
    }
    
    @IBAction func tapCountButton(_ sender: UIButton) {
        presenter?.onClickButton()
    }
}

extension ViewController: MainView {
    
    func showCount(count: Int) {
        self.countLabel.text = String(count)
    }
}
