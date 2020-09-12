//
//  Gmenu.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/08/16.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct Menu2: View {
    @Binding var selectedPage: Int
    
    let menu2s = ["すべて","StayHome","ニュース","クーポン","芸能","スポーツ","話題","フォロー","東京五輪"]
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(0..<9) { index in
                        Button(
                            action: {
                                self.selectedPage = index
                            })
                            {
                                Text(self.menu2s[index])
                                    .foregroundColor(self.selectedPage == index ? .white : .gray)
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                            
                            }
                        .padding(EdgeInsets(top: 12, leading: 10, bottom: 12, trailing: 10))
                        .background(self.selectedPage == index ? Color.init(hex: "ed615b") : Color.init(hex: "eee"))
                        Divider().padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    }
                }
            }
            Divider()
        }
    }
}
