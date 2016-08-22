//
//  MusicListVC.swift
//  SwappingSlides
//
//  Created by G on 22/08/16.
//  Copyright © 2016 gaberdios. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.yellow
    }

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        
        let songTitle = "Final Countdown"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
            
        }
    }
}
