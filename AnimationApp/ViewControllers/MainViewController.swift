//
//  ViewController.swift
//  AnimationApp
//
//  Created by Anton Kuzmin on 16.03.2023.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {

    @IBOutlet var springView: SpringView! {
        didSet {
            springView.layer.cornerRadius = 15
        }
    }
    
    @IBOutlet var springButton: SpringButton! {
        didSet {
            springButton.layer.cornerRadius = 15
            springButton.setTitle("Run", for: .normal)
        }
    }
    
    @IBOutlet var animationParamsLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setAnimationParamsToView(animation)
    }
    
    @IBAction func springButtonPressed(_ sender: SpringButton) {
        animateWithParams(animation)
        setAnimationParamsToView(animation)
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run " + animation.preset, for: .normal)
    }
    
    private func setAnimationParamsToView(_ animation: Animation) {
        animationParamsLabel.text = """
        preset = \(animation.preset)
        curve = \(animation.curve)
        force = \(string(animation.force))
        duration = \(string(animation.duration))
        delay = \(animation.delay)
        """
    }
    
    private func string(_ value: CGFloat) -> String {
        String(format: "%.2f", value)
    }
    
    ///Animate view with randomly generated params
    private func animateWithParams(_ animation: Animation) {
        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        
        springView.animate()
    }
}
