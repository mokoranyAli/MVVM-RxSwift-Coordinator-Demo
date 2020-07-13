//
//  RestaurantListViewModel.swift
//  MVVM_InPractice
//
//  Created by Mohamed Korany Ali on 7/13/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import Foundation
import RxSwift

final class RestaurantListViewModel {
  let title = "Restaurant"
  
  private let restaurantService : RestaurantServiceProtocol
  
  init(restaurantService :RestaurantServiceProtocol = RestaurantService()) {
    self.restaurantService = restaurantService
  }
  
  func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]> {
    restaurantService.fetchRestaurants().map { $0.map {
      RestaurantViewModel(restaurant: $0)
      
      }
    }
  }
  
}
