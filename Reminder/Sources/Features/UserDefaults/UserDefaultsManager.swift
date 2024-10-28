//
//  UserDefaultsManager.swift
//  Reminder
//
//  Created by Arthur Rios on 19/10/24.
//

import Foundation

class UserDefaultsManager {
    private static let userKey = "userKey"
    private static let userNameKey = "userName"
    
    static func saveUser(user: User) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(user) {
            UserDefaults.standard.set(encoded, forKey: userKey)
            UserDefaults.standard.synchronize()
        }
    }
    
    static func saveUserName(name: String) {
        UserDefaults.standard.set(name, forKey: userNameKey)
        UserDefaults.standard.synchronize()
    }
    
    static func loadUser() -> User? {
        if let userData = UserDefaults.standard.data(forKey: userKey) {
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: userData) {
                return user
            }
        }
        return nil
    }
    
    static func loadUserName() -> String? {
        return UserDefaults.standard.string(forKey: userNameKey)
    }
    
    static func removeUser() {
        UserDefaults.standard.removeObject(forKey: userKey)
        UserDefaults.standard.synchronize()
    }
    
    static func removeUserName() {
        UserDefaults.standard.removeObject(forKey: userNameKey)
        UserDefaults.standard.synchronize()
    }
}
