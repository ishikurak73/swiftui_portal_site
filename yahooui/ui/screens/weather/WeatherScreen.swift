//
//  WeatherScreen.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/09/03.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct WeatherScreen: View {
    @Binding var isWeatherScreenPresented:Bool
    
    var body: some View {
        Button(action: {
            self.isWeatherScreenPresented.toggle()
        }) {
            Text("Dismiss Weather").frame(height: 60)
        }
    }
}
