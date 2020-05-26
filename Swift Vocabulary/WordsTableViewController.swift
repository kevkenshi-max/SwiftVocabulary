//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by vyni on 5/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named storage that our programs can manipulate."), VocabularyWord(word: "Constant", definition: "Refer to fixed values that a program may not alter during its execution"), VocabularyWord(word: "Function", definition: "self-contained chunks of code that perform a specific task.")]
    
    
    
    

    // MARK: - Table view data source

        // Can you tell me what information I need to display? -Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }
    
        // How should the cells look?
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
           let cell = tableView.dequeueReusableCell(withIdentifier: "Wordcell", for: indexPath)
        
           let words = vocabWords[indexPath.row]
        
           cell.textLabel?.text = words.word
        
           return cell
       }
    
    
    // MARK: - Navigation

        // The goal of this function is to give a word to the detail view control so that it could show the word in its background
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // CHeck the segue identifier to know which view controller you are segueing to
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            // Get the new view controller using segue.destination
            let detailedVC = segue.destination as? DefinitionViewController
            
            // Get the information you want to pass to the new view controller
            if let indexpath = tableView.indexPathForSelectedRow {
            
                let vocabWord = vocabWords[indexpath.row]
            
                // Pass the selected object to the new view controller
                detailedVC?.vocabWord = vocabWord
        }

      }
    
   }

}


