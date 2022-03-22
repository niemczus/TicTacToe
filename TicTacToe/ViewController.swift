//
//  ViewController.swift
//  TicTacToe
//
//  Created by Kamil Niemczyk on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Outlet A
    @IBOutlet weak var A1Button: UIButton!
    @IBOutlet weak var A2Button: UIButton!
    @IBOutlet weak var A3Button: UIButton!
    
    //MARK: - Outlet B
    @IBOutlet weak var B1Button: UIButton!
    @IBOutlet weak var B2Button: UIButton!
    @IBOutlet weak var B3Button: UIButton!
    
    //MARK: - Outlet C
    @IBOutlet weak var C1Button: UIButton!
    @IBOutlet weak var C2Button: UIButton!
    @IBOutlet weak var C3Button: UIButton!
    
    var actualPlayerIsX = true
    
    var choicesPlayerX = [String]()
    var choicesPlayerO = [String]()
    
    var randomSender: UIButton?
    
    let xButtonTitle = NSMutableAttributedString(string: "X", attributes: [
        NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 60),
        NSAttributedString.Key.foregroundColor: UIColor.white
    ])
    
    let oButtonTitle = NSMutableAttributedString(string: "O", attributes: [
        NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 60),
        NSAttributedString.Key.foregroundColor: UIColor.white
    ])
    
    func checkAndChange() {
        
        
    }
    
    func playerMove(sender: UIButton?) {
        let buttonTitle = sender?.currentAttributedTitle
        if buttonTitle == nil {
            if actualPlayerIsX {
                sender?.setAttributedTitle(xButtonTitle, for: .normal)
                actualPlayerIsX.toggle()
            } else {
                sender?.setAttributedTitle(oButtonTitle, for: .normal)
                actualPlayerIsX.toggle()
            }
        } else {
            print("Not allowed")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        A1Button.setTitle("", for: .normal)
        A2Button.setTitle("", for: .normal)
        A3Button.setTitle("", for: .normal)
        B1Button.setTitle("", for: .normal)
        B2Button.setTitle("", for: .normal)
        B3Button.setTitle("", for: .normal)
        C1Button.setTitle("", for: .normal)
        C2Button.setTitle("", for: .normal)
        C3Button.setTitle("", for: .normal)
    }
    
    //MARK: - Actions A
    @IBAction func didTapA1Button(_ sender: UIButton) {
        playerMove(sender: sender)
    }
    @IBAction func didTapA2Button(_ sender: UIButton) {
        playerMove(sender: sender)
    }
    @IBAction func didTapA3Button(_ sender: UIButton) {
        playerMove(sender: sender)
    }
    
    //MARK: - Actions B
    @IBAction func didTapB1Button(_ sender: UIButton) {
        playerMove(sender: sender)
    }
    @IBAction func didTapB2Button(_ sender: UIButton) {
        playerMove(sender: sender)
    }
    @IBAction func didTapB3Button(_ sender: UIButton) {
        playerMove(sender: sender)
    }
    
    //MARK: - Actions C
    @IBAction func didTapC1Button(_ sender: UIButton) {
        playerMove(sender: sender)
    }
    @IBAction func didTapC2Button(_ sender: UIButton) {
        playerMove(sender: sender)
    }
    @IBAction func didTapC3Button(_ sender: UIButton) {
        playerMove(sender: sender)
    }
    
    
}

