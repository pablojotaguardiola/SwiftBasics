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
    
    fileprivate let url: String
    
    private var request: DataRequest?
    
    public init(url: String) {
        self.url = url
    }
    
    //MARK: - POST
    public func post(parameters: [String: AnyObject]?, completion: @escaping ([String: AnyObject]?, _ error: NetworkApiError?) -> ()) {
        
        request?.cancel()
        
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
    
    public func get(parameters: [String: AnyObject]?, completion: @escaping (String?, _ error: NetworkApiError?) -> ()) {
        
        request?.cancel()
        
        request = Alamofire.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseString { response in
            
            if
                response.result.isSuccess,
                let resultString = response.value
            {
                completion(resultString, nil)
            } else {
                completion(nil, .unknown)
            }
        }
    }
    
    public func cancel() {
        request?.cancel()
    }
}


