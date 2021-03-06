//
//  ViewController.swift
//  ClosureDemo
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblClosureResponse: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: First Closure Call
        myClosure(param: "Kalidoss") { (message, status) in
            if status {
                print("Response:", message)
                lblClosureResponse.text = message
            }else{
                print("Failure")
                lblClosureResponse.text = "Failure"

            }
            
        }
        
        //MARK: Second Closure Call
        closureDemo(datas: ["Kali","Doss"]) { (stringArray) in
            print("\n String array --> :", stringArray)
        }
    }
    

    
    //MARK: Closure with String
    
    func myClosure(param: String, closure: (_ myMessage: String ,_ Status: Bool) -> () ){
        closure("Welcome \(param)", true)
    }
    
    
    //MARK: Closure with Array
    func closureDemo(datas:[String], Handlers: (_ datas: [String]) -> ()){
        Handlers(datas)
    }
    
    
}

