//
//  CovidPerfil.swift
//  CovidApp
//
//  Created by Daniel Washington Ignacio on 21/09/21.
//

import Foundation


struct CovidInfo: Codable{
    var date, states, positive,negative,pending,hospitalizedCurrently,hospitalizedCumulative,inIcuCurrently, inIcuCumulative, onVentilatorCurrently, onVentilatorCumulative, death, hospitalized, totalTestResults,total, posNeg, deathIncrease, hospitalizedIncrease, negativeIncrease, positiveIncrease, totalTestResultsIncrease: Int
    var dateChecked, lastModified: String
}
