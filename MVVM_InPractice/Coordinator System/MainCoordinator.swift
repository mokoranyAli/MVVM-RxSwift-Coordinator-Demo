//
//  MainCoordinator.swift
//  MVVM_InPractice
//
//  Created by Mohamed Korany Ali on 7/13/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import Foundation
import UIKit
class MainCoordinator : Coordinator {
  var childCoordinators = [Coordinator]()
  
  var navigationController: UINavigationController
  init(navigationController : UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let vc = ViewController.instantiate()
   // vc.viewModel = RestaurantListViewModel()
    vc.coordinator = self
    childCoordinators.append(vc.coordinator!)
    navigationController.pushViewController(vc, animated: false)
  }
  
  func Details() {
    let vc = DetailsViewController.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
  
 
  
}
