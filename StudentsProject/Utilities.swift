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
struct TextsInUse {
    public static let Empty = ""
    public static let EmptyFields = "*Complete all fields"
    public static let NotNumber = "*Id and age should be numbers"
    public static let NotSaved = "*Could not save"
}
