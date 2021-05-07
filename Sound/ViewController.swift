//
//  ViewController.swift
//  Sound
//
//  Created by 井ケ田　沙紀 on 2021/05/07.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムのサウンドを読み込んで、プレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //ドラムがタップされた時に呼ばれる
    @IBAction func tapDrumButton(){
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する
        drumSoundPlayer.play()
    }

}

