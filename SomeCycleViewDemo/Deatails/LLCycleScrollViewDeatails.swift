//
//  LLCycleScrollViewDeatails.swift
//  SomeCycleViewDemo
//
//  Created by Gamin on 2020/3/7.
//  Copyright © 2020 gamin.com. All rights reserved.
//

import UIKit

class LLCycleScrollViewDeatails: UIViewController {

    var picModels: Array<Any>?;

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLLCycleScrollView();
    }

    func setupLLCycleScrollView() {
        var picMarr = Array<Any>();
        if let tempArr = picModels {
            for model in tempArr {
                picMarr.append((model as! GAPictureModel).path ?? "");
            }
        }

        let bannerDemo = LLCycleScrollView.llCycleScrollViewWithFrame(CGRect.init(x: 0, y: 64, width: UIScreen.main.bounds.width, height: 220));
        // 是否自动滚动
        bannerDemo.autoScroll = true;

        // 是否无限循环，此属性修改了就不存在轮播的意义了
        bannerDemo.infiniteLoop = true;

        // 滚动间隔时间(默认为2秒)
        bannerDemo.autoScrollTimeInterval = 3.0;

        // 等待数据状态显示的占位图
        bannerDemo.placeHolderImage = UIImage(named: "pic_waiting.jpg");

        // 如果没有数据的时候，使用的封面图
        bannerDemo.coverImage = UIImage(named: "pic_placeholder.jpg");

        // 设置图片显示方式=UIImageView的ContentMode
        bannerDemo.imageViewContentMode = .scaleToFill;

        // 设置滚动方向（ vertical || horizontal ）
        bannerDemo.scrollDirection = .horizontal;

        // 设置当前PageControl的样式 (.none, .system, .fill, .pill, .snake)
        bannerDemo.customPageControlStyle = .snake;

        // 非.system的状态下，设置PageControl的tintColor
        bannerDemo.customPageControlInActiveTintColor = UIColor.red;

        // 设置.system系统的UIPageControl当前显示的颜色
        bannerDemo.pageControlCurrentPageColor = UIColor.white;

        // 非.system的状态下，设置PageControl的间距(默认为8.0)
        bannerDemo.customPageControlIndicatorPadding = 10.0;
        
        //设置PageControl的距底部的距离(默认为11.0)
        bannerDemo.pageControlBottom = 15.0;

        // 设置PageControl的位置 (.left, .right 默认为.center)
        bannerDemo.pageControlPosition = .center;

        // 背景色
        bannerDemo.collectionViewBackgroundColor = .lightGray;

        // 添加到view
        view.addSubview(bannerDemo);

        // 模拟网络图片获取
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(2)) {
            bannerDemo.imagePaths = picMarr as! Array<String>;
        }
    }

}
