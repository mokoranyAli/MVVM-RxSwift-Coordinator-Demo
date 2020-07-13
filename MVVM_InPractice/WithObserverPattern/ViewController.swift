//
//  ViewController.swift
//  MVVM_InPractice
//
//  Created by Mohamed Korany Ali on 7/12/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , Storyboarded{
  weak var coordinator:MainCoordinator?
  let obs = Box<String?>(nil)
private var viewModel = UserViewModel()
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    setupViewModelBinding()
    viewModel.getData()
    }

  @IBAction func showDetailsScreenBtn(_ sender: Any) {
    coordinator?.Details()
  }
  
  func setupViewModelBinding() {
    viewModel.restaurants.subscribe { value in
      print(value ?? "")
    }
    
    
  }
}

