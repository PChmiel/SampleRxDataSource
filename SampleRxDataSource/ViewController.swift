//
//  ViewController.swift
//  SampleRxDataSource
//
//  Created by Pawel Chmiel on 30.05.2017.
//  Copyright © 2017 Pawel Chmiel. All rights reserved.
//

import UIKit
import RxDataSources
import RxSwift

class ViewController: UIViewController {

    let tableView = UITableView()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let dataSource = RxTableViewSectionedReloadDataSource<SectionModel<String, Int>>()
        
        // set UITableView footer or header view + estimated row height
        tableView.tableFooterView = UIView()
        //tableView.tableHeaderView = UIView()
        
        tableView.estimatedRowHeight = 100

        Observable.just([SectionModel(model: "title", items: [1, 2, 3])])
            .bind(to: tableView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
    }
}
