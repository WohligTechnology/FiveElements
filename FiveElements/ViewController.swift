//
//  ViewController.swift
//  FiveElements
//
//  Created by Chintan Shah on 06/11/15.
//  Copyright © 2015 Wohlig Technology. All rights reserved.
//

import UIKit
import RichEditorView

let bounds = UIScreen.mainScreen().bounds
let width = bounds.size.width
let height = bounds.size.height


class ViewController: UIViewController  {

    let attractionNames = ["Buckingham Palace",
        "The Eiffel Tower",
        "The Grand Canyon",
        "Windsor Castle",
        "Empire State Building"]
    
    var editor:RichEditorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editor = RichEditorView(frame: CGRectMake(0,40,width,height-90))
               editor.setHTML("<h1>Jagruti is Great")
        self.view.addSubview(editor)
        
        
        let toolbar = RichEditorToolbar(frame: CGRectMake(0,height - 50, width, 50))
        toolbar.options = RichEditorOptions.someOptions()
        toolbar.editor = editor
        self.view.addSubview(toolbar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of! any resources that can be recreated.
    }
    
    

}

