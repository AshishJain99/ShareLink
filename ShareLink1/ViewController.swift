//
//  ViewController.swift
//  ShareLink1
//
//  Created by Ash on 06/02/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var buttonUI: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonUI.layer.cornerRadius = 5
    }

    func presentShareSheet(){
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
    
        guard let url = URL(string: "http://pandora.yilstaging.com/writable/uploads/20210127/1611811599_2ac19cd41e8387119d7e.mp3")
        else{
            return
        }
        let shareSheetVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        shareSheetVC.popoverPresentationController?.sourceView = sender
        shareSheetVC.popoverPresentationController?.sourceRect = sender.frame
        present(shareSheetVC, animated: true)

        
    }
}

