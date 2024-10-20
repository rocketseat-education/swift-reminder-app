//
//  LoginBottomSheetViewModel.swift
//  Reminder
//
//  Created by Arthur Rios on 13/10/24.
//

import Foundation
import Firebase

class LoginBottomSheetViewModel {
    var successResult: ((String) -> Void)?
    var errorResult: ((String) -> Void)?
    
    func doAuth(usernameLogin: String, password: String) {
        print(usernameLogin)
        Auth.auth().signIn(withEmail: usernameLogin, password: password) {
            [weak self] authResult, error in
            if let error = error {
                self?.errorResult?("Erro ao realizar login, verifique as credenciais digitadas")
            } else {
                self?.successResult?(usernameLogin)
            }
        }
    }
}
