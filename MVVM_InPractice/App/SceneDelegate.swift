//
//  SceneDelegate.swift
//  MVVM_InPractice
//
//  Created by Mohamed Korany Ali on 7/12/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?
  var coordinator : MainCoordinator?
  //var appCoordinator : AppCoordinator?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

   // guard let scene = (scene as? UIWindowScene) else { return }

    let navigationController = UINavigationController()
    coordinator = MainCoordinator(navigationController: navigationController)
    
    coordinator?.start()
    window?.rootViewController = navigationController
    window?.makeKeyAndVisible()
    
  }
}

