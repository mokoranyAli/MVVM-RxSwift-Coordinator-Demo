//
//  DetailsViewController.swift
//  MVVM_InPractice
//
//  Created by Mohamed Korany Ali on 7/13/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController , Storyboarded {
  var selectedProduct = 0
  weak var coordinator:MainCoordinator?
  var displayedText:String?
  @IBOutlet weak var nameLbl: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      print(coordinator?.childCoordinators.count ?? 0)
      nameLbl.text = displayedText ?? ""
      
    }
    
//  override func viewDidAppear(_ animated: Bool) {
//    coordinator?.didFinishDetailsScreen()
//  }



}
