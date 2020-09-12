//
//  BigMovie.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/08/19.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI

struct BigMovie: View {
    fileprivate func movieDetail() -> some View {
        return VStack(alignment: .leading, spacing: 0.0) {
            Image("collecting").resizable()
                .frame(height: 200)
            Text("女性から寄生虫、刺身食べて侵入か？　日本")
            .font(.system(size: 16))
            .fontWeight(.bold)
            .foregroundColor(Color.init(hex: "333333"))
            Spacer().frame(height:10)
            Text("CNN.co.jp")
            .font(.system(size: 12))
            .foregroundColor(Color.gray)
        }
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            movieDetail()
        }
    }
}

struct BigMovie_Previews: PreviewProvider {
    static var previews: some View {
        BigMovie()
    }
}
