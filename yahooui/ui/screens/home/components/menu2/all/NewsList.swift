//
//  List.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/08/16.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI

struct NewsList: View {
    fileprivate func newsDetail() -> some View {
        return HStack(spacing: 0.0){
            Image("150x150").resizable().frame(width: 50.0, height: 50.0)
            Spacer().frame(width:10)
            VStack(alignment: .leading){
                Text("東京の感染者数 経路不明5割弱")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(Color.init(hex: "333333"))
                HStack{
                    Image(systemName: "bubble.right")
                        .resizable()
                        .frame(width: 12.0, height: 12.0, alignment: .center)
                        .foregroundColor(Color.init(hex: "FF4081"))
                    Spacer().frame(width:1)
                    Text("47")
                        .font(.system(size: 12))
                        .foregroundColor(Color.init(hex: "FF4081"))
                    Text("7/12(日) 0:24")
                        .font(.system(size: 12))
                        .foregroundColor(Color.init(hex: "9E9E9E"))
                    Text("NEW")
                        .padding(EdgeInsets.init(top: 2.0, leading: 4.0, bottom: 2.0, trailing: 4.0))
                        .font(.system(size: 10))
                        .foregroundColor(.white)
                        .background(Color.init(hex: "FFAB40"))
                        .cornerRadius(30)
                }
                Divider()
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

struct NewsList_Previews: PreviewProvider {
    static var previews: some View {
        NewsList()
    }
}
