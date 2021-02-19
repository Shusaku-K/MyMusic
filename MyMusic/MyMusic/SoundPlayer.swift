//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by 金城秀作 on 2021/02/13.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    
    let cymbalDate = NSDataAsset(name: "cymbalSound")!.data
    
    var cymbalPlayer: AVAudioPlayer!
    
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
        cymbalPlayer = try AVAudioPlayer(data: cymbalDate)
        
        cymbalPlayer.play()
            
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
        
    }
    
    func guitarPlay() {
        do {
            self.guitarPlayer = try AVAudioPlayer(data: self.guitarData)
            self.guitarPlayer.play()
            
        } catch {
            print("ギターで、エラーが発生しました！")
        }
    }
}
