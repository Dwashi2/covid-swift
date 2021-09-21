//
//  CovidInfoController.swift
//  CovidApp
//
//  Created by Daniel Washington Ignacio on 21/09/21.
//

import Foundation
import Alamofire


class CovidInfoController{
    
     var arrayCovidInfo: [CovidInfo] = []
    
    func count() -> Int{
        return self.arrayCovidInfo.count
    }
    
    func getCovid(completion: @escaping (Bool, Error?) -> Void){
        
        AF.request("https://api.covidtracking.com/v1/us/current.json").responseJSON { response in
            
            if response.response?.statusCode == 200 {
                
                if let data = response.data {
 
                    do {
                        
                        let result = try JSONDecoder().decode([CovidInfo].self, from: data)
                        
                        self.arrayCovidInfo = result
                        print(self.arrayCovidInfo)
                        completion(true, nil)
                        
                    }catch{
                        completion(false,error)
                    }
                    
                }else{
                    print("deu error")
                }
                
            }
            
        }
        
    }
    
    
    
}
