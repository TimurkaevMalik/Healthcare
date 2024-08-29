//
//  NetworkServiceError.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 29.08.2024.
//

import Foundation


enum NetworwServiceError: Error {
    case codeError(_ value: String)
    case responseError(_ value: String)
    case invalidRequesr(_ value: String)
}
