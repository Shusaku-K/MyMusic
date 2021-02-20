//
//  ContentView.swift
//  MyMusic
//
//  Created by 金城秀作 on 2021/02/13.
//

import SwiftUI

struct ContentView: View {
    
    // 音を鳴らすためのSoundPlayerクラスを生成
    let soundPlayer = SoundPlayer()
    
    
    var body: some View {
        //ZStack = 奥行き。背景画像を設置。
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                             
            //水平方向にレイアウト。ここではボタンを2つ横に設置。
            HStack {
                // シンバルボタン
                Button(action: {
                    // アクション:シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                    
                }) {
                    // 画像を表示する
                    ButtonImageView(imageName: "cymbal")
                }
                
                Button(action: {
                    // アクション:ギターの音を鳴らす
                    soundPlayer.guitarPlay()
                }) {
                    // 画像を表示する
                    ButtonImageView(imageName: "guitar")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
