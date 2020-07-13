//
//  UserViewModel.swift
//  MVVM_InPractice
//
//  Created by Mohamed Korany Ali on 7/12/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//
 import Foundation



/* I just didn't make api layer and protocol like i did in rx demo just for simplicity */

class UserViewModel {
  
  
  
  
  var restaurants = Box<[Restaurant]?>(nil)
  
  func getData() {
    guard let path = Bundle.main.path(forResource: "restaurants", ofType: "json")
      else {
        
        return
    }
    do {
    let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
    let fetchedRestaurants =  try JSONDecoder().decode([Restaurant].self, from: data)
    
    restaurants.value = fetchedRestaurants
    }
    catch {
      print(error)
    }
}

}





