//
//  ViewController.swift
//  TicTacToe
//
//  Created by Kamil Niemczyk on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var playerMark: UILabel!
    
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
    
    //MARK: - Properties
    
    var actualPlayerIsX = true
    var end = false
    var drawCounter = 0
    
    var choicesPlayerX = [String]()
    var choicesPlayerO = [String]()

    let xButtonTitle = NSMutableAttributedString(string: "X", attributes: [
        NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 60),
        NSAttributedString.Key.foregroundColor: UIColor.white
    ])
    
    let oButtonTitle = NSMutableAttributedString(string: "O", attributes: [
        NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 60),
        NSAttributedString.Key.foregroundColor: UIColor.white
    ])
    
    //MARK: - Logic
    
    func playerMove(sender: UIButton) {
        let buttonTitle = sender.currentAttributedTitle
        if buttonTitle == nil {
            guard let label = sender.titleLabel?.text else { return }
            if actualPlayerIsX {
                choicesPlayerX.append(label)
                sender.setAttributedTitle(xButtonTitle, for: .normal)
                checkIfWon(choicesOfPlayer: choicesPlayerX)
                if end {
                    wonAlert(playerName: "X")
                } else {
                    changePlayer()
                }
                
            } else {
                choicesPlayerO.append(label)
                sender.setAttributedTitle(oButtonTitle, for: .normal)
                checkIfWon(choicesOfPlayer: choicesPlayerO)
                if end {
                    wonAlert(playerName: "O")
                } else {
                    changePlayer()
                }
            }
        } else {
            let alert = UIAlertController(title: "Not allowed", message: "You can't choose this spot", preferredStyle: .alert)
            let action = UIAlertAction(title: "Okay", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
        }
    }
    
    func checkIfWon(choicesOfPlayer: Array<String>) {
        
        if      ["A1", "A2", "A3"].allSatisfy(choicesOfPlayer.contains) { end = true }
        else if ["B1", "B2", "B3"].allSatisfy(choicesOfPlayer.contains) { end = true }
        else if ["C1", "C2", "C3"].allSatisfy(choicesOfPlayer.contains) { end = true }
        else if ["A1", "B1", "C1"].allSatisfy(choicesOfPlayer.contains) { end = true }
        else if ["A2", "B2", "C2"].allSatisfy(choicesOfPlayer.contains) { end = true }
        else if ["A3", "B3", "C3"].allSatisfy(choicesOfPlayer.contains) { end = true }
        else if ["A1", "B2", "C3"].allSatisfy(choicesOfPlayer.contains) { end = true }
        else if ["C1", "B2", "A3"].allSatisfy(choicesOfPlayer.contains) { end = true }
        else { end = false }
        
        drawCounter += 1
    }
    
    func changePlayer() {
        if drawCounter == 9 {
            drawAlert()
        }
        actualPlayerIsX.toggle()
        
        if actualPlayerIsX {
            playerMark.text = "X"
        } else {
            playerMark.text = "O"
        }
    }
    
    func wonAlert(playerName: String) {
        let alert = UIAlertController(title: "Player \(playerName) won!", message: "Game over", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Play again", style: .default) { (_) in
            self.restartGame()
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    func drawAlert() {
        let alert = UIAlertController(title: "It's a draw!", message: "Game over", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Play again", style: .default) { (_) in
            self.restartGame()
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    func restartGame() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
        var viewcontrollers = self.navigationController!.viewControllers
        viewcontrollers.removeLast()
        viewcontrollers.append(vc)
        self.navigationController?.setViewControllers(viewcontrollers, animated: true)
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

