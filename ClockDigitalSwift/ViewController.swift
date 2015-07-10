//
//  ViewController.swift
//  ClockDigitalSwift
//
//  Created by MAEDAHAJIME on 2015/07/10.
//  Copyright (c) 2015年 MAEDA HAJIME. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbClock: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // タイマー生成、開始　即時の実行
        let tmr:NSTimer = NSTimer.scheduledTimerWithTimeInterval(
            1.0,                                    // 時間の間隔
            target: self,                           // タイマーの実際の処理の場所
            selector: Selector("tickTimer:"),       // メソッド タイマーの実際の処理
            userInfo: nil,
            repeats: true)                          // 繰り返し
        
        // タイマーを開始する 即時の実行
        tmr.fire()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // タイマー処理
    func tickTimer(timer: NSTimer){
        
        // 現在日時の取得
        let dt:NSDate = NSDate()
        
        // 表示書式の設定
        let df:NSDateFormatter = NSDateFormatter()

        df.dateFormat = "yyyy/MM/dd\nhh:mm:ss"
        
        // 選択日時の表示
        var str:NSString = df.stringFromDate(dt)
        
        // 時計表示
        self.lbClock.text = str as String
    }
}

