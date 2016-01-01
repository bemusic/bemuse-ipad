//
//  ViewController.swift
//  Bemuse
//
//  Created by Thai Pangsakulyanont on 2016-01-01.
//  Copyright © 2016年 Thai Pangsakulyanont. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func viewDidAppear(animated: Bool) {
		let safari = SFSafariViewController(URL: NSURL(string: "http://localhost:8080")!)
		safari.delegate = self
		presentViewController(safari, animated: true, completion: nil)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	func safariViewControllerDidFinish(controller: SFSafariViewController) {
		// THANK YOU FOR PLAYING
		UIControl().sendAction(Selector("suspend"), to: UIApplication.sharedApplication(), forEvent: nil)
	}

}

