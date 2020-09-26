//
//  homeScreen.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/08/13.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct HomeScreen: View {
    
    @State var selectedPage = 0
    
    fileprivate func minNewsList() -> some View {
        return VStack(spacing: 0) {
            NewsList()
            NewsList()//https://medium.com/swlh/sticky-header-with-swiftui-199ede4b3208
            NewsList()
            NewsList()
            NewsList()
            NewsList()
        }
    }
    
    fileprivate func bigNewsList() -> some View {
        return BigNews()
        
    }
    
    fileprivate func middleNewsList() -> some View {
        return MiddleNews()
        
    }
    
    fileprivate func smallNewsList() -> some View {
        return VStack(spacing: 0) {
            SmallNews()
            SmallNews()
            SmallNews()
        }
    }
    
    fileprivate func bigMovieList() -> some View {
        return VStack(spacing: 0) {
            BigMovie()
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            SearchBar()
            List {
                VStack(spacing: 0) {
                    Login()
                    PickupNews()
                    Menu1()
                }
                .background(Color.white)
                .listRowInsets(EdgeInsets())
                Section(header: Menu2(selectedPage: $selectedPage)) {
                    self.minNewsList()
                    self.bigNewsList()
                    self.middleNewsList()
                    self.smallNewsList()
                    self.bigMovieList()
                }
                .listRowInsets(EdgeInsets())
            }
        }
    }

}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
