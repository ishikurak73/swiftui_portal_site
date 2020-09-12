//
//  SearchBar.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/09/01.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI

struct SearchBar: View {
    fileprivate func searchBar() -> some View {
        return HStack(spacing: 0) {
            HStack(spacing: 0) {
                Spacer().frame(width:10)
                Image(systemName:"magnifyingglass")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.gray)
                Spacer().frame(width:10)
                Text("xxxxxxx検索")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 12))
                Spacer()
                Image(systemName:"mic.fill" ).foregroundColor(.gray)
                Spacer().frame(width:10)
                Button(action: {}) {
                    Text("検索")
                        .foregroundColor(Color.white)
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                }
                .padding(EdgeInsets(top: 6, leading: 10, bottom: 6, trailing: 10))
                .background(Color.blue)
            }
            .frame(maxWidth: .infinity)
            .padding(EdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1))
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(Color.blue, lineWidth: 2)
            )
            Spacer().frame(width: 10)
            Image(systemName:"square.on.square" ).foregroundColor(.gray)
        }
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 5, trailing: 10))
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            searchBar()
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
