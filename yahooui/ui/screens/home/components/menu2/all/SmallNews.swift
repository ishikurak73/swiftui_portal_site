//
//  SmallNews.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/08/19.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI

struct SmallNews: View {
    fileprivate func newsDetail() -> some View {
        return HStack(spacing: 0.0){
            Image("150x150").resizable().frame(width: 80, height: 80)
            Spacer().frame(width:10)
            VStack(alignment: .leading){
                Text("４作品の再上映。異例のヒット")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(Color.init(hex: "333333"))
                Spacer().frame(height:10)
                Text("タウンネット")
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(EdgeInsets.init(top: 5.0, leading: 5.0, bottom: 5.0, trailing: 5.0))
    
    }
    
    var body: some View {
            VStack(spacing: 0.0){
                newsDetail()
            }
    }
}

struct SmallNews_Previews: PreviewProvider {
    static var previews: some View {
        SmallNews()
    }
}
