//
//  Coordinator.swift
//  MVVM_InPractice
//
//  Created by Mohamed Korany Ali on 7/13/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
  var childCoordinators:[Coordinator] {get set}
  var navigationController : UINavigationController {get set}
  
  func start()
}
