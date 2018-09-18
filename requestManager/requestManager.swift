//
//  requestManager.swift
//  requestManagerTests
//
//  Created by Srikanth Solipeta on 9/17/18.
//  Copyright © 2018 apex. All rights reserved.
//

import Foundation
import Alamofire


public class RequestManager {
    public static let shared = RequestManager()
    private var actors: Any?
    public func MakeRequest(url: String) -> Any?  {
        if let url = URL(string: url) {
            Alamofire.request(url, method: HTTPMethod.get, parameters:nil).responseJSON { (data) in
                self.actors = data.result.value

            }
        }
        return actors
    }
}
