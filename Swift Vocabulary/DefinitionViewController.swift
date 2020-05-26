//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by vyni on 5/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
  
   
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var definition: UITextView!
    // This is the "mailbox" for us to get the word from the table view control
    
    var vocabWord: VocabularyWord?
    
    func updateViews() {
        guard let unwrappedVocabWord = vocabWord else {
            return
        }
        label.text = unwrappedVocabWord.word
        definition.text = unwrappedVocabWord.definition
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }
}
