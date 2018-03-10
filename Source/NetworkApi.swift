//
//  NetworkApi.swift
//  VisualNacert
//
//  Created by Pablo Guardiola on 12/09/16.
//  Copyright © 2016 VisualNACert. All rights reserved.
//

import Foundation
import Alamofire

/*
 Class to make POST requests against server getting a JSON response.
 
 Parameters:
    - baseUrl: base url of server
    - operation: endpoint to add at the end of base url
    - parameters: parameters to send in the post request
 */

public final class NetworkApi: NSObject, URLSessionDelegate, URLSessionTaskDelegate, URLSessionDataDelegate {
    
    public enum NetworkApiError: String {
        case unknown = "Unknown error"
    }
    
    let baseURL: String = "http://monohgamub.cluster011.ovh.net/englishApp/index.php/en/app_controller/"
    
    private var request: DataRequest?
    
    //MARK: - POST
    public func post(operation: NetworkApi.Operation, parameters: [String: AnyObject]?, completion: @escaping ([String: AnyObject]?, _ error: NetworkApiError?) -> ()) {
        
        request?.cancel()
        
        let url = baseURL + operation.rawValue
        
        request = Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseJSON { response in
            
            if response.result.isSuccess {
                if let result = response.result.value as? [String: AnyObject] {
                    completion(result, nil)
                }
                else {
                    completion(nil, .unknown)
                }
            } else {
                completion(nil, .unknown)
            }
        }
    }
    
    public func cancel() {
        request?.cancel()
    }
    
    public enum Operation: String {
        case sample = "getGMTTimeInterval"
    }
}
