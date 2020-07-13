//
//  TestViewController.swift
//  MVVM_InPractice
//
//  Created by Mohamed Korany Ali on 7/13/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class RestaurantsViewController: UIViewController , Storyboarded{
  weak var coordinator:MainCoordinator?

  @IBOutlet weak var restaurantsTableView: UITableView!
  let disposeBag = DisposeBag()
   var viewModel:RestaurantListViewModel!
  

  override func viewDidLoad() {
        super.viewDidLoad()
    restaurantsTableView.tableFooterView = UIView()
    navigationItem.title = viewModel.title
    navigationController?.navigationBar.prefersLargeTitles = true
    restaurantsTableView.contentInsetAdjustmentBehavior = .never
    
    
    
    viewModel.fetchRestaurantViewModels().observeOn(MainScheduler.instance).bind(to: restaurantsTableView.rx.items(cellIdentifier: "cell")) {index , viewModel , cell in
       cell.textLabel?.text = viewModel.displayText
    }.disposed(by: disposeBag)
    
    }
    



}
