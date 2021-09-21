//
//  ViewController.swift
//  CovidApp
//
//  Created by Daniel Washington Ignacio on 21/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    var controller: CovidInfoController = CovidInfoController()
    
    
    @IBOutlet weak var affectedLabel: UILabel!
    @IBOutlet weak var deathLabel: UILabel!
    @IBOutlet weak var recoveredLabel: UILabel!
    @IBOutlet weak var activeLabel: UILabel!
    @IBOutlet weak var seriousLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var totalTestResults: UILabel!
    @IBOutlet weak var onVentilatorCurrently: UILabel!
    @IBOutlet weak var onVentilatorCumulative: UILabel!
    
    @IBOutlet weak var states: UILabel!
    @IBOutlet weak var negativeIncrease: UILabel!
    @IBOutlet weak var hospitalized: UILabel!
    
    @IBOutlet weak var topWhiteView: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var bottomWhiteView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var purpleView: UIView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.topWhiteView.layer.cornerRadius = 10
        self.image.layer.cornerRadius = 10
        self.bottomWhiteView.layer.cornerRadius = 40
        self.orangeView.layer.cornerRadius = 10
        self.redView.layer.cornerRadius = 10
        self.greenView.layer.cornerRadius = 10
        self.blueView.layer.cornerRadius = 10
        self.purpleView.layer.cornerRadius = 10
        
        
        
        self.controller.getCovid{ result, error in
            
            if result {
                //self.myTableView.reloadData()
                self.affectedLabel.text =
                    "\(self.controller.arrayCovidInfo.first?.positive ?? 0)"
                self.deathLabel.text =
                    "\(self.controller.arrayCovidInfo.first?.death ?? 0)"
                self.recoveredLabel.text =
                    "\(self.controller.arrayCovidInfo.first?.negative ?? 0)"
                self.activeLabel.text =
                    "\(self.controller.arrayCovidInfo.first?.pending ?? 0)"
                self.seriousLabel.text =
                    "\(self.controller.arrayCovidInfo.first?.deathIncrease ?? 0)"
                self.dateLabel.text =
                    "Date: \(self.controller.arrayCovidInfo.first?.date ?? 0)"
                self.totalTestResults.text =
                    "Total Test Results: \(self.controller.arrayCovidInfo.first?.totalTestResults ?? 0)"
                self.onVentilatorCurrently.text =
                    "On Ventilator Currently: \(self.controller.arrayCovidInfo.first?.onVentilatorCurrently ?? 0)"
                self.onVentilatorCumulative.text =
                    "On Ventilator Cumulative: \(self.controller.arrayCovidInfo.first?.onVentilatorCumulative ?? 0)"
                self.states.text =
                    "States: \(self.controller.arrayCovidInfo.first?.states ?? 0)"
                self.negativeIncrease.text =
                    "Negative Increase: \(self.controller.arrayCovidInfo.first?.negativeIncrease ?? 0)"
                self.hospitalized.text =
                    "Hospitalized: \(self.controller.arrayCovidInfo.first?.hospitalized ?? 0)"
                
            }else{
                print(error)
            }
        
        }
        
        
    }


}

