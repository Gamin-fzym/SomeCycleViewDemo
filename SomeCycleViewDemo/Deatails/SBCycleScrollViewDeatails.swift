//
//  SBCycleScrollViewDeatails.swift
//  SomeCycleViewDemo
//
//  Created by Gamin on 2020/3/7.
//  Copyright © 2020 gamin.com. All rights reserved.
//

import UIKit

class SBCycleScrollViewDeatails: UIViewController, CycleScrollViewDelegate {

    var picModels: Array<Any>?;

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSBCycleScrollView();
    }

    func setupSBCycleScrollView() {
        var picMarr = Array<Any>();
        if let tempArr = picModels {
            for model in tempArr {
                picMarr.append((model as! GAPictureModel).path ?? "");
            }
        }

        // 配置
        var options = CycleOptions();
        options.currentPageDotColor = .blue;
        options.radius = 10;
        options.pageStyle = PageControlStyle.jalapeno;
        
        // 初始化
        let frame = CGRect(x: 0, y: 64, width: UIScreen.main.bounds.width, height: 220);
        // 推荐方式,通过代理和占位图初始化,常用于图片异步获取的时候
        let cycleScrollView = CycleScrollView.initScrollView(frame: frame, delegate: self, placehoder: UIImage(named: "pic_placeholder.jpg"), cycleOptions: options);
        cycleScrollView.imageURLStringsGroup = picMarr as! [String];
        view.addSubview(cycleScrollView);
    }
    
    // MARK:SBCycleScrollViewDelegate
    
    func didSelectedCycleScrollView(_ cycleScrollView : CycleScrollView, _ Index : NSInteger) {
        print("点击了第\(Index)张图片")
    }
    
}
