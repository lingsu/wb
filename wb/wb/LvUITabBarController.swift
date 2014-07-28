//
//  LvUITabBarController.swift
//  wb
//
//  Created by 吕杏素 on 14-7-27.
//  Copyright (c) 2014年 吕杏素. All rights reserved.
//

import UIKit

class LvUITabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homevc=LvHomeTableViewController()
        self.addOneView(homevc, title: "Home", imageName: "tabbar_home", selectImageName: "tabbar_home")
        
        let messagevc=LvMessageTableViewController()
        self.addOneView(messagevc, title: "Message", imageName: "tabbar_message_center", selectImageName: "tabbar_message_center")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func addOneView(chidlvc:UIViewController,title:String,imageName:String,selectImageName:String){
        
        //chidlvc.view.backgroundColor=UIColor(red:arc4random_uniform(256)/255.0, green:110.0, blue:arc4random_uniform(256)/255.0, alpha:1.0)
        
        //var sb=Float(arc4random_uniform(33))/255.0
        
        chidlvc.view.backgroundColor=UIColor(red: CGFloat(Float(arc4random_uniform(256))/255.0), green: CGFloat(Float(arc4random_uniform(256))/255.0), blue: CGFloat(Float(arc4random_uniform(256))/255.0), alpha: 1)
        
        // chidlvc.tabBarItem.title=title
        
        chidlvc.tabBarItem.image=UIImage(named: imageName)
        chidlvc.title=title
        
        
        
        var selectimage=UIImage(named: selectImageName)
        
        
        chidlvc.tabBarItem.selectedImage=selectimage
        
        
        IOS7()
        
        let nav=LxUINavigationController(rootViewController: chidlvc)
        
        self.addChildViewController(nav)
        
    }
    
    func IOS7()->Bool{
        
        let version=UIDevice.currentDevice().systemVersion
        if version {
            println(version)
        }
        
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
