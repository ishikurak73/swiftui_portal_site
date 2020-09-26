//
//  BigMovie.swift
//  yahooui
//
//  Created by 石倉圭介 on 2020/08/19.
//  Copyright © 2020 石倉圭介. All rights reserved.
//

import SwiftUI
import AVKit

struct BigMovie: View {
    fileprivate func movieDetail() -> some View {
        return VStack(alignment: .leading, spacing: 0.0) {
            PlayerView().frame(height: 200, alignment: .center)
            Text("女性から寄生虫、刺身食べて侵入か？　日本")
            .font(.system(size: 16))
            .fontWeight(.bold)
            .foregroundColor(Color.init(hex: "333333"))
            Spacer().frame(height:10)
            Text("NN.co.jp")
            .font(.system(size: 12))
            .foregroundColor(Color.gray)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(EdgeInsets.init(top: 5.0, leading: 5.0, bottom: 5.0, trailing: 5.0))
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

struct PlayerView: UIViewRepresentable {
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) {
    }
    
    func makeUIView(context: Context) -> UIView {
        return PlayerUIView(frame: .zero)
    }
}

class PlayerUIView: UIView {
    private let playerLayer = AVPlayerLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let url = URL(string: "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")!
        let player = AVPlayer(url: url)
        player.play()
        player.rate = 1.0
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspect
        playerLayer.player?.currentItem?.seek(to: CMTime.zero, completionHandler: nil)
        layer.addSublayer(playerLayer)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}
