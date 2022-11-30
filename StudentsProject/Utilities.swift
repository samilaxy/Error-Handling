//
//  Utilities.swift
//  StudentsProject
//
//  Created by Noye Samuel on 30/11/2022.
//

import Foundation

enum ValidateType: Error {
    case emptyFields
    case notNumber
    case notSaved
}
struct Details {
    var id: String
    var age: String
    var school: String
}
