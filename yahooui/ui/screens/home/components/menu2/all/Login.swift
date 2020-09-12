//
//  Login.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/09/01.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI

struct Login: View {
    fileprivate func login() -> some View {
        return HStack {
            Button(action: {}){
                Text("ログイン")
                .foregroundColor(Color.black)
                .font(.system(size: 12))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            Divider()
            Button(action: {}){
                Text("ID新規取得")
                .foregroundColor(Color.black)
                .font(.system(size: 12))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding(EdgeInsets(top: 7, leading: 0, bottom: 7, trailing: 0))
        .frame(height: 30.0, alignment: .center)
        .frame(maxWidth: .infinity)
        .background(Color.init(hex: "eee"))
        .border(Color.init(hex: "bbb"), width: 0.5)
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            login()
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
