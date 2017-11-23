//
//  ViewController.swift
//  SwiftUndoManager
//
//  Created by Adarsh V C on 23/11/17.
//  Copyright © 2017 Adarsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testView: UIView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonActionUndo(_ sender: Any) {
        
        undoManager?.undo()
    }
    
    @IBAction func buttonActionRedo(_ sender: Any) {
        
        undoManager?.redo()
    }
    
    @IBAction func buttonActionRed(_ sender: Any) {
        
        changeColor(color: UIColor.red)
    }
 
    @IBAction func buttonActionBlue(_ sender: Any) {
        
        changeColor(color: UIColor.blue)
    }
    
    @IBAction func buttonActionGreen(_ sender: Any) {
        
        changeColor(color: UIColor.green)
    }
    
    @IBAction func buttonActionBlack(_ sender: Any) {
        
        changeColor(color: UIColor.black)
    }
    
    func changeColor(color: UIColor) {
        
        let oldColor = self.testView.backgroundColor ?? UIColor.white
        undoManager?.registerUndo(withTarget: self, handler: { (targetSelf) in
            targetSelf.changeColor(color: oldColor)
        })
        testView.backgroundColor = color
    }
}
