//
//  SplashScreenViewController.swift
//  custom-uikit-ios
//
//  Created by Rizki Ramdani on 02/02/19.
//  Copyright © 2019 -. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loadListComponent()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    loadListComponent()
    
    navigationController?.isNavigationBarHidden = true
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  private func loadListComponent(){
    let listComponent = ListComponentViewController()
    navigationController?.pushViewController(listComponent, animated: true)
  }
  
}
