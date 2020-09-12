//
//  Menu1.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/09/01.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI

struct Menu1: View {
    @State private var isMailScreenPresented = false
    @State private var isWeatherScreenPresented = false
    
    fileprivate func menu1() -> some View {
        return VStack(spacing: 0) {
            Divider()
            HStack(spacing: 0) {
                tile(imageName: "envelope",
                     label: "メール",
                     isPresented: $isMailScreenPresented,
                     tapGesture: {self.isMailScreenPresented.toggle()},
                     screen: MailScreen(isMailScreenPresented: self.$isMailScreenPresented))
                Divider()
                tile(imageName: "sun.max",
                     label: "天気",
                     isPresented: $isWeatherScreenPresented,
                     tapGesture: {self.isWeatherScreenPresented.toggle()},
                     screen: WeatherScreen(isWeatherScreenPresented: self.$isWeatherScreenPresented))
                Divider()
                tile(imageName: "star.circle",
                    label: "占い",
                    isPresented: $isWeatherScreenPresented,
                    tapGesture: {self.isWeatherScreenPresented.toggle()},
                    screen: WeatherScreen(isWeatherScreenPresented: self.$isWeatherScreenPresented))
                Divider()
                tile(imageName: "star",
                    label: "お気に入り",
                    isPresented: $isWeatherScreenPresented,
                    tapGesture: {self.isWeatherScreenPresented.toggle()},
                    screen: WeatherScreen(isWeatherScreenPresented: self.$isWeatherScreenPresented))
                Divider()
                tile(imageName: "cart",
                    label: "ショッピング",
                    isPresented: $isWeatherScreenPresented,
                    tapGesture: {self.isWeatherScreenPresented.toggle()},
                    screen: WeatherScreen(isWeatherScreenPresented: self.$isWeatherScreenPresented))
            }
            Divider()
            HStack(spacing: 0) {
                tile(imageName: "sportscourt",
                     label: "スポーツナビ",
                     isPresented: $isWeatherScreenPresented,
                     tapGesture: {self.isWeatherScreenPresented.toggle()},
                     screen: WeatherScreen(isWeatherScreenPresented: self.$isWeatherScreenPresented))
                Divider()
                tile(imageName: "hammer",
                     label: "ヤフオク！",
                     isPresented: $isWeatherScreenPresented,
                     tapGesture: {self.isWeatherScreenPresented.toggle()},
                     screen: WeatherScreen(isWeatherScreenPresented: self.$isWeatherScreenPresented))
                Divider()
                tile(imageName: "tram.fill",
                     label: "経路情報",
                     isPresented: $isWeatherScreenPresented,
                     tapGesture: {self.isWeatherScreenPresented.toggle()},
                     screen: WeatherScreen(isWeatherScreenPresented: self.$isWeatherScreenPresented))
                Divider()
                tile(imageName: "cube.box",
                     label: "スロットくじ",
                     isPresented: $isWeatherScreenPresented,
                     tapGesture: {self.isWeatherScreenPresented.toggle()},
                     screen: WeatherScreen(isWeatherScreenPresented: self.$isWeatherScreenPresented))
                Divider()
                Text("すべて").font(.system(size: 12))
                .frame(height: 52, alignment: .center)
                .frame(maxWidth: .infinity)
                .background(Color.init(hex: "eee"))
                .onTapGesture {}
            }
            Divider()
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 7, trailing: 0))
                .background(Color(red: 230/255, green: 230/255, blue: 230/255))
        }
    }
    
    fileprivate func tile<T:View>(imageName: String,
                          label: String,
                          isPresented: Binding<Bool>,
                          tapGesture: @escaping () -> Void,
                          screen: T) -> some View {
        return VStack(spacing: 0) {
            Image(systemName:imageName ).foregroundColor(.gray)
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            Text(label).font(.system(size: 8))
        }
        .frame(height: 48, alignment: .center)
        .frame(maxWidth: .infinity)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
        .onTapGesture {tapGesture()}
        .sheet(isPresented: isPresented) {
            screen
        }
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            menu1()
        }
    }
}

struct Menu1_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
