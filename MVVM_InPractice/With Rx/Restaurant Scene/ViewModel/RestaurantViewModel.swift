//
//  RestaurantViewModel.swift
//  MVVM_InPractice
//
//  Created by Mohamed Korany Ali on 7/13/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import Foundation

struct RestaurantViewModel {
  private let restaurant : Restaurant
  var displayText :String {
    restaurant.name + " - "  + restaurant.food
  }
  
  init(restaurant:Restaurant) {
    self.restaurant = restaurant
  }
  
}
