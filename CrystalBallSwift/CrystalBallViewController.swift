//
//  CrystalBallViewController.swift
//  CrystalBallSwift
//
//  Created by Lamar on 6/17/17.
//  Copyright © 2017 Lamar. All rights reserved.
//

import UIKit
import AVFoundation

class CrystalBallViewController: UIViewController {
    
    let predictions = ["It is Certain", "It is Decidedly So", "The Stars Are Not Aligned", "My Reply is No", "It is Doubtful", "Better not Tell You Now", "Concentrate and Ask Again", "Unable to Answer Now"]
    
    var player = AVAudioPlayer()
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var animationImageView: UIImageView!
    
    @IBOutlet weak var predictionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.backgroundImageView.image = UIImage(named: "CB00001.png")
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        doAnimation()
        predictionLabel.text = makePredicition()
        playSoundEffect()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == UIEventSubtype.motionShake {
            
        }
    }
    
    func makePredicition() -> String {
        let random = arc4random_uniform(UInt32(predictions.count))
        return predictions[Int(random)]
    }
    
    func playSoundEffect() {
        let audioPath = Bundle.main.path(forResource: "crystal_ball", ofType: "mp3")
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            player.play()
        } catch {
            print("there was an error playing audio")
        }
    }
    
    func doAnimation() {
        self.backgroundImageView.animationImages = [UIImage(named: "CB00001.png")!,
                                                    UIImage(named: "CB00002.png")!,
                                                    UIImage(named: "CB00003.png")!,
                                                    UIImage(named: "CB00004.png")!,
                                                    UIImage(named: "CB00005.png")!,
                                                    UIImage(named: "CB00006.png")!,
                                                    UIImage(named: "CB00007.png")!,
                                                    UIImage(named: "CB00008.png")!,
                                                    UIImage(named: "CB00009.png")!,
                                                    UIImage(named: "CB00010.png")!,
                                                    UIImage(named: "CB00011.png")!,
                                                    UIImage(named: "CB00012.png")!,
                                                    UIImage(named: "CB00013.png")!,
                                                    UIImage(named: "CB00014.png")!,
                                                    UIImage(named: "CB00015.png")!,
                                                    UIImage(named: "CB00016.png")!,
                                                    UIImage(named: "CB00017.png")!,
                                                    UIImage(named: "CB00018.png")!,
                                                    UIImage(named: "CB00019.png")!,
                                                    UIImage(named: "CB00020.png")!,
                                                    UIImage(named: "CB00021.png")!,
                                                    UIImage(named: "CB00022.png")!,
                                                    UIImage(named: "CB00023.png")!,
                                                    UIImage(named: "CB00024.png")!,
                                                    UIImage(named: "CB00025.png")!,
                                                    UIImage(named: "CB00026.png")!,
                                                    UIImage(named: "CB00027.png")!,
                                                    UIImage(named: "CB00028.png")!,
                                                    UIImage(named: "CB00029.png")!,
                                                    UIImage(named: "CB00030.png")!,
                                                    UIImage(named: "CB00031.png")!,
                                                    UIImage(named: "CB00032.png")!,
                                                    UIImage(named: "CB00033.png")!,
                                                    UIImage(named: "CB00034.png")!,
                                                    UIImage(named: "CB00035.png")!,
                                                    UIImage(named: "CB00036.png")!,
                                                    UIImage(named: "CB00037.png")!,
                                                    UIImage(named: "CB00038.png")!,
                                                    UIImage(named: "CB00039.png")!,
                                                    UIImage(named: "CB00040.png")!,
                                                    UIImage(named: "CB00041.png")!,
                                                    UIImage(named: "CB00042.png")!,
                                                    UIImage(named: "CB00043.png")!,
                                                    UIImage(named: "CB00044.png")!,
                                                    UIImage(named: "CB00045.png")!,
                                                    UIImage(named: "CB00046.png")!,
                                                    UIImage(named: "CB00047.png")!,
                                                    UIImage(named: "CB00048.png")!,
                                                    UIImage(named: "CB00049.png")!,
                                                    UIImage(named: "CB00050.png")!,
                                                    UIImage(named: "CB00051.png")!,
                                                    UIImage(named: "CB00052.png")!,
                                                    UIImage(named: "CB00053.png")!,
                                                    UIImage(named: "CB00054.png")!,
                                                    UIImage(named: "CB00055.png")!,
                                                    UIImage(named: "CB00056.png")!,
                                                    UIImage(named: "CB00057.png")!,
                                                    UIImage(named: "CB00058.png")!,
                                                    UIImage(named: "CB00059.png")!,
                                                    UIImage(named: "CB00060.png")!]
        
        let animationDuration = 3.0
        self.backgroundImageView.animationDuration = animationDuration
        self.backgroundImageView.animationRepeatCount = 1
        self.backgroundImageView.startAnimating()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
