//
//  Common.swift
//  AnimatedButton
//
//  Created by MAc33 on 30/12/16.
//  Copyright © 2016 JadavMehul. All rights reserved.
//

import UIKit
import AVFoundation

class Comman{
    //MARK: Animated Button
    func animateButton(button:UIButton) {
        var bubbleSound: SystemSoundID!
        bubbleSound = createBubbleSound()
        AudioServicesPlaySystemSound(bubbleSound)
        button.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        UIView.animate(withDuration: 2.0,
                       delay: 0,
                       usingSpringWithDamping: 0.2,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        button.transform = .identity
            },
                       completion: nil)
    }
    private func createBubbleSound() -> SystemSoundID {
        var soundID: SystemSoundID = 0
        let soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(), "bubble" as CFString!, "mp3" as CFString!, nil)
        AudioServicesCreateSystemSoundID(soundURL!, &soundID)
        return soundID
    }
}
