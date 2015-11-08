//
//  AudioControllerViewController.swift
//  FiveElements
//
//  Created by Chintan Shah on 06/11/15.
//  Copyright © 2015 Wohlig Technology. All rights reserved.
//

import UIKit


import RichEditorView




class AudioController: UIViewController {
    
    @IBOutlet weak var ScrView: UIScrollView!
    
    var vLayout:VerticalLayout!
    var editor:RichEditorView!
    let attractionNames = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo sit amet lectus quis porta. Phasellus sit amet vehicula mauris. Sed porttitor semper nisl faucibus finibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at mi tincidunt, cursus libero vitae, maximus nunc. Ut eget posuere metus. Vivamus ullamcorper mauris non ante vestibulum bibendum. Pellentesque suscipit nisi lacus, vel elementum quam aliquet eget. Aenean eu consequat magna, sed iaculis urna. Praesent sed turpis consectetur, varius metus in, bibendum ex. Nunc mattis gravida leo vitae fermentum. Curabitur diam sem, venenatis sed aliquam eget, blandit ut felis. Curabitur vitae mi vel lorem convallis vulputate finibus nec purus. Vestibulum quis urna vestibulum, vehicula quam eu, posuere erat. Aliquam eu nulla nec purus ornare tincidunt hendrerit sit amet lacus. Fusce sagittis massa ac metus interdum mattis. Etiam porttitor tellus in metus venenatis feugiat. Nullam aliquet dui id sem sagittis, sed fringilla lectus hendrerit. Etiam gravida justo elit.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo sit amet lectus quis porta. Phasellus sit amet vehicula mauris. Sed porttitor semper nisl faucibus finibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at mi tincidunt, cursus libero vitae, maximus nunc. Ut eget posuere metus. Vivamus ullamcorper mauris non ante vestibulum bibendum.",
        "Pellentesque suscipit nisi lacus, vel elementum quam aliquet eget. Aenean eu consequat magna, sed iaculis urna. Praesent sed turpis consectetur, varius metus in, bibendum ex. Nunc mattis gravida leo vitae fermentum. Curabitur diam sem, venenatis sed aliquam eget, blandit ut felis. Curabitur vitae mi vel lorem convallis vulputate finibus nec purus. Vestibulum quis urna vestibulum, vehicula quam eu, posuere erat.",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo sit amet lectus quis porta. Phasellus sit amet vehicula mauris.",
        "Empire State Building"]
    
    var i=0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vLayout = VerticalLayout(width: view.frame.width)
        
        vLayout.backgroundColor = UIColor.cyanColor()
        self.ScrView.insertSubview(vLayout, atIndex: 0)
        
        editor = RichEditorView(frame: CGRectMake(0,40,width,28))
        editor.setHTML("Type Here")
        let p = editor.runJS("document.queryCommandValue('Bold')")
        print("Console");
        print(p);
        print("Console End")
        editor.delegate = self;
        
        vLayout.addSubview(editor)

        
        let view1 = UIView(frame: CGRectMake(0,50,50,100))
        view1.backgroundColor = UIColor.blueColor()
        
        vLayout.addSubview(view1)
        
        changeHeight()
        
        
    }
    
    func changeHeight() {
        
        vLayout?.layoutSubviews()
        self.ScrView.contentSize = vLayout.frame.size
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}

extension AudioController: RichEditorDelegate {
    
    
    func richEditor(editor: RichEditorView, heightDidChange height: Int) {
        
        editor.frame.size = CGSize(width: width, height: CGFloat(height))
        self.changeHeight()
    }
    
    func richEditor(editor: RichEditorView, contentDidChange content: String) {
    }
    
    func richEditorTookFocus(editor: RichEditorView) { }
    
    func richEditorLostFocus(editor: RichEditorView) { }
    
    func richEditorDidLoad(editor: RichEditorView) { }
    
    func richEditor(editor: RichEditorView, shouldInteractWithURL url: NSURL) -> Bool { return true }
    
    func richEditor(editor: RichEditorView, handleCustomAction content: String) { }

}

