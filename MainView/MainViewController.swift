//
//  MainViewController.swift
//  DiaryAppProject
//
//  Created by 이동기 on 2022/08/22.
//

import UIKit

class MainViewController: BaseViewController {
    
    let mainView = MainView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
