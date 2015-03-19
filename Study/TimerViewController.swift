//
//  TimerViewController.swift
//  OriginalLIT
//
//  Created by 若松　夕夏 on 2015/02/28.
//  Copyright (c) 2015年 Yuka Wakamatsu. All rights reserved.
//

import UIKit


class TimerViewController: UIViewController {
    
    var timer : NSTimer!
    var cnt :Int = 0
    var ope = 0
    var number = 0
    var minitus = 0
    @IBOutlet var button0 :UIButton!
    @IBOutlet var button1 : UIButton!
    @IBOutlet var button2 :UIButton!
    @IBOutlet var button3 :UIButton!
    @IBOutlet var button4 :UIButton!
    @IBOutlet var button5 :UIButton!
    @IBOutlet var button6 :UIButton!
    @IBOutlet var button7 :UIButton!
    @IBOutlet var button8 :UIButton!
    @IBOutlet var button9 :UIButton!
    
    @IBOutlet var stbutton : UIButton!
    
    @IBOutlet var bg : UIImageView!
    @IBOutlet var label : UILabel!
    @IBOutlet var labelfun : UILabel!
    @IBOutlet var button : UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
    }
    @IBAction func timerBtn(sender: UIButton) {
        
        //タイマーを作る.
        timer = NSTimer.scheduledTimerWithTimeInterval(60, target: self, selector: "onUpdate:", userInfo: nil, repeats: true)
        
    }
    func onUpdate(timer : NSTimer){
        cnt += 1
        minitus = number - cnt
        label.text = "\(minitus)"
        if (minitus == 0 && timer.valid){
            
            //timerを停止する.
            timer.invalidate()
            

            button.hidden = false
            button0.hidden = false
            button1.hidden = true
            button2.hidden = true
            button3.hidden = true
            button4.hidden = true
            button5.hidden = true
            button6.hidden = true
            button7.hidden = true
            button8.hidden = true
            button9.hidden = true
            label.hidden = true
            labelfun.hidden = true
            stbutton.hidden = true
            
            
        }
        
    }
    
    @IBAction func bt1(){
        if(ope == 0){
            number = number*10+1
            label.text = "\(number)"
        }
        
    }
    @IBAction func bt2(){
        if(ope == 0){
            number = number*10+2
            label.text = "\(number)"
        }
    }
    @IBAction func bt3(){
        if(ope == 0){
            number = number*10+3
            label.text = "\(number)"
        }
        
        
    }
    @IBAction func bt4(){
        if(ope == 0){
            number = number*10+4
            label.text = "\(number)"
        }
    }
    @IBAction func bt5(){
        if(ope == 0){
            number = number*10+5
            label.text = "\(number)"
        }
        
    }
    @IBAction func bt6(){
        if(ope == 0){
            number = number*10+6
            label.text = "\(number)"
        }
    }
    @IBAction func bt7(){
        if(ope == 0){
            number = number*10+7
            label.text = "\(number)"
        }
    }
    @IBAction func bt8(){
        if(ope == 0){
            number = number*10+8
            label.text = "\(number)"
        }
        
    }
    @IBAction func bt9(){
        if(ope == 0){
            number = number*10+9
            label.text = "\(number)"
        }
        
    }
    @IBAction func bt0(){
        if(ope == 0){
            number = number*10+0
            label.text = "\(number)"
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