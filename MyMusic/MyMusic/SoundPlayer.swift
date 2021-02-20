//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by 金城秀作 on 2021/02/13.
//

import UIKit
//AVFoundation = 音を扱いやすくしてくれるフレームワーク。
import AVFoundation

class SoundPlayer: NSObject {
    
    // シンバルの音源データを読み込み
    let cymbalDate = NSDataAsset(name: "cymbalSound")!.data
    // シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    // ギターの音源データを読み込み
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    // ギター用プレイヤーの変数
    var guitarPlayer: AVAudioPlayer!
    
    
    // シンバルの音を鳴らすメソッド
    func cymbalPlay() {
        do {
        // シンバル用のプレイヤーに、音源データを指定
        cymbalPlayer = try AVAudioPlayer(data: cymbalDate)
        //シンバルの音源再生
        cymbalPlayer.play()
            
        } catch {
            //エラー処理
            print("シンバルで、エラーが発生しました！")
        }
        
    }
    
    func guitarPlay() {
        do {
            // ギター用のプレイヤーに、音源ファイル名を指定
            self.guitarPlayer = try AVAudioPlayer(data: self.guitarData)
            //ギターの音源再生
            self.guitarPlayer.play()
            
        } catch {
            //エラー処理
            print("ギターで、エラーが発生しました！")
        }
    }
}
