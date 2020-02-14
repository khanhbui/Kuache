//
//  UserCache.swift
//  Kuache_Example
//
//  Created by Khanh Hoang Bui on 2/13/20.
//  Copyright © 2020 snakat. All rights reserved.
//

import Foundation
import Kuache

class UserCache: BaseCache {
    static var name: String = "userCache"

    var data: [UserEntity] = []
}
