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
    @IBOutlet var bg1 : UIImageView!
    @IBOutlet var bg2 : UIImageView!
    @IBOutlet var girl1 : UIImageView!
    @IBOutlet var girl2 : UIImageView!
    
    
    
    
    var player = AVAudioPlayer()
    var player2 = AVAudioPlayer()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        ope = Int(arc4random() % 3) + 1
        player = AVAudioPlayer(contentsOfURL: audioPath, error: nil)
        player.prepareToPlay()
        player2 = AVAudioPlayer(contentsOfURL: audioPath2, error: nil)
        player2.prepareToPlay()
        
        bg1.hidden = false
        bg2.hidden = false
        girl1.hidden = true
        girl2.hidden = true
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func  musicnumber() -> (Int){
        return ope
    }
    @IBAction func play(sender: UIButton) {
        if(ope == 1){
            bg1.hidden = false
            bg2.hidden = true
            girl1.hidden = false
            girl2.hidden = true
            player.play()
        }else{
            bg1.hidden = true
            bg2.hidden = false
            girl1.hidden = true
            girl2.hidden = false
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
