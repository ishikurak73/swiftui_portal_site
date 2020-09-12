//
//  MiddleNews.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/08/19.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI

struct MiddleNews: View {
    fileprivate func newsDetail() -> some View {
        return HStack {
            VStack(alignment: .leading, spacing: 0.0) {
                Image("collecting").resizable()
                    .frame(height: 150)
                Text("「100万円たまる貯金箱」を６年かけて満杯に　2000日の苦労を本人い聞いた")
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundColor(Color.init(hex: "333333"))
                Spacer().frame(height:10)
                Text("Jタウンネット")
                .font(.system(size: 12))
                .foregroundColor(Color.gray)
            }
            VStack(alignment: .leading, spacing: 0.0) {
                Image("collecting").resizable()
                    .frame(height: 150)
                Text("「当時は睡眠２時間」元ZONE・MAI解散、再結成、引退。。。紆余曲折から。。。")
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundColor(Color.init(hex: "333333"))
                Spacer().frame(height:10)
                Text("道新スポーツ")
                .font(.system(size: 12))
                .foregroundColor(Color.gray)
            }
        }
        .padding(EdgeInsets.init(top: 5.0, leading: 5.0, bottom: 5.0, trailing: 5.0))
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            newsDetail()
        }
    }
}

struct MiddleNews_Previews: PreviewProvider {
    static var previews: some View {
        MiddleNews()
    }
}
