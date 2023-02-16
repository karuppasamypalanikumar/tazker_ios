//
//  LocalStorageManager.swift
//  Tazker
//
//  Created by Karuppasamy Palanikumar on 16/02/23.
//

import Foundation

public
class LocalStorageManager {
    
    private
    let standand = UserDefaults.standard
    
    private
    init() { }
    
    public static
    let shared = LocalStorageManager()
    
    public
    func store<T>(
        value: T,
        key: LocalStorageKeys) {
        standand.set(
            T.self,
            forKey: key.rawValue
        )
    }
    
    public
    func get<T>(key: LocalStorageKeys) -> T? {
        return standand.value(
            forKey: key.rawValue
        ) as? T
    }
    
}

public
enum LocalStorageKeys: String {
    case username
    case token
    case userid
}
