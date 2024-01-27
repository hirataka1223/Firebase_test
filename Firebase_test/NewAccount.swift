//
//  NewAccount.swift
//  Firebase_test
//
//  Created by Taka on 2023/12/27.
//

import SwiftUI
import FirebaseAuth

struct NewAccount: View {
    
    @State public var mail:String = ""
    @State public var password:String = ""
    @State public var errorMessage:String = ""
    
    var body: some View {
        VStack(spacing: 30){
            // メールアドレス
            TextField("メールアドレスを入力してください",text: $mail)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // パスワード
            SecureField("パスワードを入力してください",text:$password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // 認証
            Button(
                action:{
                    if(self.mail == ""){
                        self.errorMessage = "メールアドレスが入力されていません"
                    } else if(self.password == ""){
                        self.errorMessage = "パスワードが入力されていません"
                    } else {
                        Auth.auth().createUser(withEmail: self.mail, password: self.password) { authResult, error in
                            print(authResult)
                            print("エラーが発生")
                        }
                    }
                }, label:{
                    Text("新規会員登録する")
                })
        }
    }
}


struct NewAccount_Previews: PreviewProvider {
    static var previews: some View {
        NewAccount()
    }
}
