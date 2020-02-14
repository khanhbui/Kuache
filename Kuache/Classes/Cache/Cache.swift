//
//  Cache.swift
//  Kuache
//
//  Created by Khanh Hoang Bui on 2/13/20.
//

import Foundation

public protocol Cache {
    static var name: String { get }
}

public protocol BaseCache: Cache {
    associatedtype Entity

    var data: [Entity] { get set }
}
extension BaseCache {
    public func get() -> [Self.Entity] {
        return self.data
    }
}

public class CacheFactory {
    public static var shared = CacheFactory()
    private init() {
    }

    var caches: [String: Cache] = [:]

    public func register<T: BaseCache>(_ cache: T) {
        if let _ = self.caches[T.name] as? T {
            fatalError("\(T.name) has been registered.")
        }

        self.caches[T.name] = cache
    }

    public func get<T: BaseCache>() -> T {
        guard let cache = self.caches[T.name] as? T else {
            fatalError("\(T.name) has not been registered.")
        }
        return cache
    }
}
