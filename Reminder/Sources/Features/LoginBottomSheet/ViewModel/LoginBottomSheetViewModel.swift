//
//  LoginBottomSheetViewModel.swift
//  Reminder
//
//  Created by Arthur Rios on 13/10/24.
//

import Foundation
import Firebase

class LoginBottomSheetViewModel {
    func doAuth(usernameLogin: String, password: String) {
        print(usernameLogin)
        Auth.auth().signIn(withEmail: usernameLogin, password: password) {
            [weak self] authResult, error in
            if let error = error {
                print("Autenticação não teve sucesso \(error)")
            } else {
                print(authResult, "Sucesso na autenticação")
            }
        }
    }
}
