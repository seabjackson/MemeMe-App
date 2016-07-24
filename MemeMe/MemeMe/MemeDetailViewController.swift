//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by lily on 7/12/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var meme: Meme!
    var selectedMemeIndex: Int?

    @IBOutlet weak var deleteButton: UIToolbar!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func deleteMeme(sender: AnyObject) {
        if let indexPath = selectedMemeIndex {
            (UIApplication.sharedApplication().delegate as! AppDelegate).memes.removeAtIndex(selectedMemeIndex!)
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        tabBarController?.tabBar.hidden = true
        
        if let memedImage = meme.memedImage {
            imageView.image = memedImage
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(true)
        tabBarController?.tabBar.hidden = false
    }

    
}
