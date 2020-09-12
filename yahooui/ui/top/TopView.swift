//
//  TopView.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/04/05.
//  Copyright © 2020 石倉圭介. All rights reserved.
//
// todo: safearea

import SwiftUI
import Foundation
import UIKit

struct TopView: View {
    var body: some View {
        TabView{
             HomeScreen()
                 .tabItem {
                     VStack {
                         Image(systemName: "house.fill")
                         Text("ホーム")
                     }
             }.tag(1)
             ToolScreen()
                 .tabItem {
                     VStack {
                         Image(systemName: "square.grid.2x2.fill")
                         Text("ツール")
                     }
             }.tag(2)
             InformationScreen()
                 .tabItem {
                     VStack {
                         Image(systemName: "bell.fill")
                         Text("お知らせ")
                     }
             }.tag(3)
             OtherScreen()
                 .tabItem {
                     VStack {
                         Image(systemName: "ellipsis")
                         Text("その他")
                     }
             }.tag(4)
         }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
