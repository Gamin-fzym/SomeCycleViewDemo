//
//  SDCycleScrollViewDeatails.swift
//  SomeCycleViewDemo
//
//  Created by Gamin on 2020/3/7.
//  Copyright © 2020 gamin.com. All rights reserved.
//

import UIKit

class SDCycleScrollViewDeatails: UIViewController, SDCycleScrollViewDelegate {

    @IBOutlet weak var cycleScrollerView: SDCycleScrollView!
    var picModels: Array<Any>?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SDCycleScrollViewDeatails";
        setupCycleScrollView();
    }

    func setupCycleScrollView() {
        var picMarr = Array<Any>();
        if let tempArr = picModels {
            for model in tempArr {
                picMarr.append((model as! GAPictureModel).path ?? "");
            }
        }
        
        cycleScrollerView.delegate = self;
        cycleScrollerView.bannerImageViewContentMode = .scaleToFill;
        // 图片数组
        cycleScrollerView.localizationImageNamesGroup = picMarr;
        // 缺省图
        cycleScrollerView.placeholderImage = UIImage(named: "pic_placeholder.jpg");
        // 标题数组
        //cycleScrollerView.titlesGroup = titMarr;
        // 自动滚动时间间隔
        cycleScrollerView.autoScrollTimeInterval = 3.0;
        // 翻页 右下角
        cycleScrollerView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
        // 图片对应的标题的 背景色。（因为没有设标题）
        cycleScrollerView.titleLabelBackgroundColor = UIColor.clear;
        // 当前原点颜色
        cycleScrollerView.currentPageDotColor = UIColor.white;
        cycleScrollerView.pageDotColor = UIColor.lightGray;
        // 清除缓存
        SDCycleScrollView.clearImagesCache();
    }
    
    // MARK:SDCycleScrollViewDelegate
    
    func cycleScrollView(_ cycleScrollView: SDCycleScrollView!, didSelectItemAt index: Int) {
        print("1");
    }
    
}
