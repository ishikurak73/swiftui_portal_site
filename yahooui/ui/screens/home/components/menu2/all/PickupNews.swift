//
//  PickupNews.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/09/01.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI

struct PickupNews: View {
    fileprivate func pickupNews() -> some View {
        return HStack {
            HStack {
                Text("緊急事態を宣言 新型コロナ最新情報まとめ")
                .foregroundColor(Color.red)
                .font(.system(size: 12))
            }
            .frame(maxWidth: .infinity)
            .padding(EdgeInsets(top: 7, leading: 0, bottom: 7, trailing: 0))
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(Color.red, lineWidth: 2)
            )
            .background(Color.white)
        }
        .padding(EdgeInsets(top: 7, leading: 10, bottom: 7, trailing: 10))
        .frame(maxWidth: .infinity)
        .background(Color(red: 230/255, green: 230/255, blue: 230/255))
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            pickupNews()
        }
    }
}

struct PickupNews_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
