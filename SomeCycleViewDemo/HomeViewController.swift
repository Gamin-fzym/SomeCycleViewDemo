//
//  HomeViewController.swift
//  SomeCycleViewDemo
//
//  Created by Gamin on 2020/3/6.
//  Copyright © 2020 gamin.com. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var moniDataArr = Array<Any>();
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "首页";
        moniDataAction();
    }

    func moniDataAction() {
        for i in 0..<5 {
            let model = GAPictureModel();
            model.title = "图片名称" + String(i);
            if (i == 0) {
                model.path = "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3166143552,1954152447&fm=26&gp=0.jpg";
            } else if (i == 1) {
                model.path = "https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2444564646,984259896&fm=26&gp=0.jpg";
            } else if (i == 2) {
                model.path = "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1168648232,681655965&fm=26&gp=0.jpg";
            } else if (i == 3) {
                model.path = "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2339292197,2432002226&fm=26&gp=0.jpg";
            } else if (i == 4) {
                model.path = "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=677762285,3327576538&fm=26&gp=0.jpg";
            }
            moniDataArr.append(model);
        }
        
    }
    
    @IBAction func tapButtonAction(_ sender: Any) {
        let but = sender as! UIButton;
        let tag = but.tag;
        if (tag == 1000) {
            let vc = SDCycleScrollViewDeatails();
            vc.picModels = moniDataArr;
            navigationController?.pushViewController(vc, animated: true);
        } else if (tag == 1001) {
            let vc = ICycleViewDeatails();
            vc.picModels = moniDataArr;
            navigationController?.pushViewController(vc, animated: true);
        } else if (tag == 1002) {
            let vc = SBCycleScrollViewDeatails();
            vc.picModels = moniDataArr;
            navigationController?.pushViewController(vc, animated: true);
        } else if (tag == 1003) {
            let vc = LLCycleScrollViewDeatails();
            vc.picModels = moniDataArr;
            navigationController?.pushViewController(vc, animated: true);
        }
    }

}
