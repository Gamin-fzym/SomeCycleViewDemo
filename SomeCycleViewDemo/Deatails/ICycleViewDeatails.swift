//
//  ICycleViewDeatails.swift
//  SomeCycleViewDemo
//
//  Created by Gamin on 2020/3/7.
//  Copyright © 2020 gamin.com. All rights reserved.
//

import UIKit

class ICycleViewDeatails: UIViewController, ICycleViewDelegate {

    var picModels: Array<Any>?;

    override func viewDidLoad() {
        super.viewDidLoad()
        setupICycleView();
        
    }
    
    let scaleForPlus: CGFloat = 1.0;
    
    func setupICycleView() {
        var picMarr = Array<Any>();
        if let tempArr = picModels {
            for model in tempArr {
                picMarr.append((model as! GAPictureModel).path ?? "");
            }
        }
        // 图片赋值
        defaultCycleView.pictures = picMarr as! [String];
        // pageControlStyle属性必须在设置 pictures 后赋值，因为指示器是根据 numberOfPages 计算Size的
        defaultCycleView.pageControlStyle = .bottom(bottom: 10);
        //defaultCycleView.pageControlStyle = .right(trailing: 20*scaleForPlus);
    }
    
    // 惰性初始化滚动视图
    lazy var defaultCycleView: ICycleView = {
        let cycleView = ICycleView(frame: CGRect(x: 0, y: 50, width: UIScreen.main.bounds.width, height: 220));
        cycleView.delegate = self;
        cycleView.pageIndicatorTintColor = .lightGray;
        cycleView.currentPageIndicatorTintColor = .blue;
        cycleView.imgViewWidth = UIScreen.main.bounds.size.width*scaleForPlus;
        cycleView.placeholderImage = UIImage(named: "placehoder.jpg");
        view.addSubview(cycleView);
        return cycleView;
    }()

    // MARK: ICycleViewDelegate
    // 图片点击
    func iCycleView(cycleView: ICycleView, didSelectItemAt index: Int) {
        print("你点击了第 \(index) 张图片")
    }

    // 图片自动滚动
    func iCycleView(cycleView: ICycleView, autoScrollingItemAt index: Int) {
        print("当前滚动的图片是第 \(index) 张")
    }

    // 自定义Cell
    /*
    func iCycleView(cycleView: ICycleView, collectionView: UICollectionView, cellForItemAt indexPath: IndexPath, picture: String) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCycleViewCell
        cell.imgView.kf.setImage(with: URL(string: picture))
        cell.titleLab.text = "自定义Cell\n第 \(indexPath.item) 张图片"
        return cell
    }
   */
}
