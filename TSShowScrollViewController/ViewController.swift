//
//  ViewController.swift
//  TSShowScrollViewController
//
//  Created by Findys on 15/12/21.
//  Copyright © 2015年 Findys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let showview = TSShoowView()
        let imgArray = NSMutableArray()
        for _ in 0...7{
        let image = UIImage(named: "IMG_0034")
        imgArray.addObject(image!)
        }
        var txtArray = NSMutableArray()
        txtArray.addObject("1111111111111111111111111111111111111111")
        let view = showview.initView(self.view.frame, imgArray: imgArray, txtArray: txtArray)
        self.view = view
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

