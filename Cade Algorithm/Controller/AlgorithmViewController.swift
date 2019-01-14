//  ViewController.swift
//  Cade Algorithm
//  Created by Jackman, Cade on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
import UIKit

public class AlgorithmViewController : UIViewController
{
    @IBOutlet weak var swiftImage: UIImageView!
    
    @IBOutlet weak var algorithmLable: UILabel!
    
    public override func viewDidLoad() -> Void {
        
        super.viewDidLoad()
        
        formatAlgorithm()
    }
    private func formatAlgorithm() -> Void {
        let title : String = "How to create an app!"
        
        let stepOne : String = "First, you are going to want to open XCode, then hit create new project."
        let stepTwo : String = "Second, you should create the project, with the appropriate name, and location."
        let stepThree : String = "Third, This is an option that is not required, but can be seen as very helpful. You want to select Assets, AppDelegate, and Info.plist, and create new group, name this group “Resources”, then select your “ViewController” and create a new group for that and call it “Controller”, finally select “Main.storyboard”, and “LaunchScreen.storyboard”, and create a new group, and name that one View."
        let stepFour : String = "Fourth, select your overall project folder at the top (It’s the blueprint) and select “select info.plist” and hit select."
        let stepFive : String = "Fifth, you are going to want to add components to your main.storyboard, by hitting the object library, and simply dragging components into the box, this is what your app will look like."
        let stepSix : String = "Finally, Code away!"
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix]
        let attributesDictionary = [NSAttributedString.Key.font : algorithmLable.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary as [NSAttributedString.Key : Any])
        
        for step in algorithm {
            let bullet : String = "🤓"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string : formattedStep)
            let outlineStyle = createOutlineStyle()
            attributedStringStep.addAttributes([NSAttributedString.Key.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
        algorithmLable.attributedText = fullAttributedString
        
        
    }
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        return outlineStyle
        
    }
}
