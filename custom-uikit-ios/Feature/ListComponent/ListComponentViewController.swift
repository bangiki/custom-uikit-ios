//
//  ListComponentViewController.swift
//  custom-uikit-ios
//
//  Created by Rizki Ramdani on 02/02/19.
//  Copyright © 2019 -. All rights reserved.
//

import UIKit

//
//  ListComponentViewController.swift
//  custom-uikit-ios
//
//  Created by Rizki Ramdani on 02/02/19.
//  Copyright © 2019 -. All rights reserved.
//

import UIKit
import SnapKit

class ListComponentViewController: UIViewController {
  
  lazy var table: UITableView = {
    let table = UITableView()
    table.delegate = self
    table.dataSource = self
    return table
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    initView()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.isNavigationBarHidden = false
    title = "List Component"
    navigationItem.setHidesBackButton(true, animated: false)
    navigationController?.navigationBar.prefersLargeTitles = true
  }
  
  private func initView(){
    view.addSubview(table)
    initConstraint()
  }
  
  private func initConstraint(){
    table.snp.makeConstraints { (make) in
      make.edges.equalToSuperview().inset(UIEdgeInsets.zero)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  
}

extension ListComponentViewController: UITableViewDelegate{
  
}

extension ListComponentViewController: UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }
  
  
}

