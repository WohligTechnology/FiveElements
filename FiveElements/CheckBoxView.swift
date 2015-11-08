//
//  CheckBoxView.swift
//  
//
//  Created by Chintan Shah on 06/11/15.
//
//

import UIKit


class CheckBoxView: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        //createCheckbox()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func eraseNow(sender: AnyObject) {
        let mycurve = mainCurve as! CurveView
        mycurve.lineColor = UIColor.grayColor()
       mycurve.lineWidth = 3.0;
    }
    
    @IBAction func changeColor(sender: AnyObject) {
        let mycurve = mainCurve as! CurveView
        mycurve.lineColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
        
    }
    @IBAction func changeWidth(sender: AnyObject) {
        let mycurve = mainCurve as! CurveView
        mycurve.lineWidth = 20.0;
    }
    
    func createCheckbox() {
        let cb = Checkbox(frame: CGRect(x: 20, y: 100, width: 30, height: 30))
        cb.borderColor = UIColor.grayColor()
        cb.borderWidth = 1
        cb.checkColor = UIColor.grayColor()
        cb.checkWidth = 3
        self.view.addSubview(cb)
        let textfield = UITextField(frame: CGRectMake(70,100,width - 80,30 ))
        textfield.layer.borderColor = UIColor.grayColor().CGColor
        textfield.layer.borderWidth = 0
        self.view.addSubview(textfield)
        textfield.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("Return Called");
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
