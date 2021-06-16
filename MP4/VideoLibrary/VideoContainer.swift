//
//  VideoContainer.swift
//  MP4
//
//  Created by yogendra singh on 6/16/21.
//  Copyright © 2021 codeepie. All rights reserved.
//

import UIKit
import AVFoundation
class VideoContainer {
    var url: String
    var playOn: Bool {
        didSet {
            player.isMuted = videoController.sharedVideoPlayer.mute
            playerItem.preferredPeakBitRate = videoController.sharedVideoPlayer.preferredPeakBitRate
            if playOn && playerItem.status == .readyToPlay {
                player.play()
            }
            else{
                player.pause()
            }
        }
    }
    
    let player: AVPlayer
    let playerItem: AVPlayerItem
    
    init(player: AVPlayer, item: AVPlayerItem, url: String) {
        self.player = player
        self.playerItem = item
        self.url = url
        playOn = false
    }
}
