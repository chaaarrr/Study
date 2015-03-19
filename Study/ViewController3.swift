//
//  ViewController2.swift
//  Study
//
//  Created by 若松　夕夏 on 2015/03/19.
//  Copyright (c) 2015年 Yuka Wakamatsu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController2: UIViewController,AVAudioPlayerDelegate {
    var ope = 0
    var x = 0
    var audioPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("voice1", ofType: "WAV")!)
    var audioPath2 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("2", ofType: "WAV")!)
    
    
    var player = AVAudioPlayer()
    var player2 = AVAudioPlayer()
    
    @IBOutlet var bg1 : UIImageView!
    @IBOutlet var bg2 : UIImageView!
    @IBOutlet var shoujo1 : UIImageView!
    @IBOutlet var shoujo2 : UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ope = Int(arc4random() % 3) + 1
        player = AVAudioPlayer(contentsOfURL: audioPath, error: nil)
        player.prepareToPlay()
        player2 = AVAudioPlayer(contentsOfURL: audioPath2, error: nil)
        player2.prepareToPlay()
        

    }
    @IBAction func play(sender: UIButton) {
        if(ope == 1 || ope == 2){
            
            bg1.hidden = false
            bg2.hidden = true
            shoujo1.hidden = false
            shoujo2.hidden = true
                
            player.play()
        }else{
            bg1.hidden = true
            bg2.hidden = false
            shoujo1.hidden = true
            shoujo2.hidden = false
            player2.play()
        }
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
