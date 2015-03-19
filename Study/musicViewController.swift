//
//  musicViewController.swift
//  Study
//
//  Created by 若松　夕夏 on 2015/03/20.
//  Copyright (c) 2015年 Yuka Wakamatsu. All rights reserved.
//

import UIKit
import AVFoundation

class musicViewController: UIViewController ,AVAudioPlayerDelegate{
    var ope = 0
    var audioPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("voice1", ofType: "WAV")!)
    var audioPath2 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("2", ofType: "WAV")!)
    
    
    var player = AVAudioPlayer()
    var player2 = AVAudioPlayer()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        ope = Int(arc4random() % 3) + 1
        player = AVAudioPlayer(contentsOfURL: audioPath, error: nil)
        player.prepareToPlay()
        player2 = AVAudioPlayer(contentsOfURL: audioPath2, error: nil)
        player2.prepareToPlay()
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func play(sender: UIButton) {
        if(ope == 1 || ope == 2){
            player.play()
        }else{
            player2.play()
        }
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
