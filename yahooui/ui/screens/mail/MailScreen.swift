//
//  NextScreen.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/08/23.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct MailScreen: View {
    @Binding var isMailScreenPresented:Bool
    
    var body: some View {
        Button(action: {
            self.isMailScreenPresented.toggle()
        }) {
            Text("Dismiss Mail").frame(height: 60)
        }
    }
}
