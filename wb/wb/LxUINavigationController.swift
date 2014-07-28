//
//  LxUINavigationController.swift
//  wb
//
//  Created by 吕杏素 on 14-7-28.
//  Copyright (c) 2014年 吕杏素. All rights reserved.
//

import UIKit

class LxUINavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }


    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func pushViewController(viewController: UIViewController!, animated: Bool) {
        
        if self.viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed=true
            
            //var btn=UIBarButtonItem.MUitemWithImageName(ImageName:"a",hightImageName:"b",target:self,action:Selector("back"))
            
            //let btn=UIButton()
            
            // btn.setBackgroundImage(UIImage(named: "navigationbar_pop"), forState: UIControlState.Normal)
            // btn.setBackgroundImage(UIImage(named: "navigationbar_pop_highlighted"), forState: UIControlState.Highlighted)
            //btn.size=btn.currentBackgroundImage.size
            // btn.frame.size=btn.currentBackgroundImage.size
            // btn.addTarget(self, action: Selector("back"), forControlEvents: UIControlEvents.TouchUpInside)
            
            //var UIBarButtonItem(customView: btn)
            
            var btn=withbutbar("navigationbar_pop", hightImageName: "navigationbar_pop_highlighted", target: self, action: Selector("back"))
            viewController.navigationItem.leftBarButtonItem=btn
            
            viewController.navigationItem.rightBarButtonItem=UIBarButtonItem(title: "more", style: UIBarButtonItemStyle.Done, target: self, action: Selector("backroot"))
        }
        super.pushViewController(viewController, animated: true)
    }
    
    func back(){
        self.popViewControllerAnimated(true)
        //println("88888")
    }
    func backroot(){
        self.popToRootViewControllerAnimated(true)
    }
    func withbutbar(ImageName:String,hightImageName:String,target:AnyObject,action:Selector) -> UIBarButtonItem{
        let btn=UIButton()
        
        btn.setBackgroundImage(UIImage(named: ImageName), forState: UIControlState.Normal)
        btn.setBackgroundImage(UIImage(named: hightImageName), forState: UIControlState.Highlighted)
        btn.frame.size=btn.currentBackgroundImage.size
        btn.addTarget(target, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        
        
        println("this btn")
        return UIBarButtonItem(customView: btn)
        //return UIBarButtonItem(customView: btn)
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
