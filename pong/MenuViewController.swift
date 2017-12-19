//
//  MenuViewController.swift
//  pong
//
//  Created by Adam Moghal on 18/12/2017.
//  Copyright © 2017 Adam Moghal. All rights reserved.
//

import Foundation
import UIKit


enum gameType{
    case easy
    case medium
    case hard
    case player2
}

class MenuViewController : UIViewController{


    @IBAction func player2(_ sender: Any) {
        moveToGame(game: .player2)
    }


    @IBAction func easy(_ sender: Any) {
    moveToGame(game: .easy)
    }

    @IBAction func medium(_ sender: Any) {
    
    moveToGame(game: .medium)
    }

    @IBAction func hard(_ sender: Any) {
    moveToGame(game: .hard)
    }

    func moveToGame(game: gameType){
    let gameVC = self.storyboard?.instantiateViewController(withIdentifier: "gameVC") as! GameViewController
    
        currentGameType = game
        
        self.navigationController?.pushViewController(gameVC, animated: true)
        
    }
}
