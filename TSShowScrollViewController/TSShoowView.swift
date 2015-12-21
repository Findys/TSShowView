//
//  TSShoowView.swift
//  TSShowScrollViewController
//
//  Created by Findys on 15/12/21.
//  Copyright © 2015年 Findys. All rights reserved.
//

import UIKit

class TSShoowView: UIView,UIScrollViewDelegate {
    var showView = UIScrollView()
    var txtView = UITextView()
    var backView = UIView()
    var imgArray:NSArray?
    var txtArray:NSArray?
    var viewFrame = CGRect()
    
    func initView(frame:CGRect,imgArray:NSArray,txtArray:NSArray?)->UIScrollView{
        print(frame)
        showView.frame = frame
        showView.pagingEnabled = true
        showView.scrollEnabled = true
        showView.contentSize = CGSize(width: frame.width*CGFloat(imgArray.count), height: frame.height)
        showView.backgroundColor = UIColor.blackColor()
        
        for i in 0...imgArray.count-1{
            let imgView = UIImageView()
            imgView.contentMode = UIViewContentMode.ScaleAspectFit
            imgView.frame = CGRect(x: frame.width*CGFloat(i), y: 0, width: frame.width, height: frame.height)
            imgView.image = imgArray[i] as? UIImage
            showView.addSubview(imgView)
        }
        
        let text = UILabel()
        let detail = txtArray![0] as! String
        text.text = detail
        let size = detail.boundingRectWithSize(CGSize(width: frame.width, height: 300), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName:text.font!], context: nil).size
        text.frame=CGRect(x: 10, y:0, width: frame.width-20, height: size.height+20)
        text.lineBreakMode=NSLineBreakMode.ByWordWrapping
        text.numberOfLines=0
        text.textColor=UIColor.whiteColor()
        text.font=UIFont.boldSystemFontOfSize(15)
        
        backView.frame=CGRectMake(0, frame.height-size.height-60, frame.width, size.height+60)
        backView.backgroundColor=UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.5)
        backView.addSubview(text)
        
        showView.addSubview(backView)
        return showView
    }

}
