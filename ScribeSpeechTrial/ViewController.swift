//
//  ViewController.swift
//  ScribeSpeechTrial
//
//  Created by Lennard Neuwirth on 3/11/17.
//  Copyright © 2017 Lionsreach Studios, LLC. All rights reserved.
//

import UIKit
import Speech
import AVFoundation

class ViewController: UIViewController {

	@IBOutlet weak var activitySpinner: UIActivityIndicatorView!
	@IBOutlet weak var transcriptionField: UITextView!
	
	var audioPlayer: AVAudioPlayer!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		activitySpinner.isHidden = true
		
	}
	
	func requestSpeechAuth() {
		SFSpeechRecognizer.requestAuthorization {  authStatus in
			if authStatus == SFSpeechRecognizerAuthorizationStatus.authorized {
				if let path = Bundle.main.url(forResource: "test", withExtension: "m4a") {
					do {
						let sound = try AVAudioPlayer(contentsOf: path)
						self.audioPlayer = sound
						sound.play()
					} catch let err as NSError{
						print(err)
					}
				}
			}
		}
	}

}

