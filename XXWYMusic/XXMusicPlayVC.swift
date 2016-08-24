//
//  XXMusicPlayVC.swift
//  XXWYMusic
//
//  Created by shun on 16/8/23.
//  Copyright © 2016年 shun. All rights reserved.
//

import UIKit

class XXMusicPlayVC: UIViewController,UIGestureRecognizerDelegate {

    override func loadView() {
        super.loadView()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("XXMusicPlayVC")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        self.navigationController?.view.sendSubview(toBack: (self.navigationController?.navigationBar)!)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.view.bringSubview(toFront: (self.navigationController?.navigationBar)!)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
