//
//  ViewController.swift
//  Flashcards
//
//  Created by Abdul Manaam on 9/19/21.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var commandLabel: UILabel!
//  override func viewDidLoad() {
//    super.viewDidLoad()
//    // Do any additional setup after loading the view.
//    if let flashcard = deck.drawRandomCard() {
//        self.flashcard = flashcard
//        commandLabel?.text = flashcard.command
//    }
//  }
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    if let flashcard = deck.drawRandomCard() {
      self.flashcard = flashcard
      commandLabel?.text = flashcard.command
    }
  }
  let deck = Deck()
  var flashcard: Flashcard?
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "showDefinition" {
      let showDefinition:DefinitionViewController = segue.destination as! DefinitionViewController
      showDefinition.flashcard = self.flashcard
    }
  }

}

