//
//  ViewController.swift
//  Kuache
//
//  Created by khanh.bui on 02/13/2020.
//  Copyright (c) 2020 snakat. All rights reserved.
//

import UIKit
import Kuache

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        CacheFactory.shared.register(UserCache())
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let userCache: UserCache = CacheFactory.shared.get()
        debugPrint(userCache.get())
    }
}

