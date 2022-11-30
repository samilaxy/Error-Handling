//
//  StudentViewModel.swift
//  StudentsProject
//
//  Created by Noye Samuel on 30/11/2022.
//

import Foundation


class StudentViewModel {
    var student = [Details]()
    func validateStudent(age:String, id: String, sch: String) throws {
        if age.isEmpty || id.isEmpty || sch.isEmpty {
            throw ValidateType.emptyFields
        } else if !age.isNumber || !id.isNumber {
            throw ValidateType.notNumber
        } else if student.count >= 3  {
            print(student)
            throw ValidateType.notSaved
        }else{
            student.append(Details(id: id, age: age, school: sch))
            print(student.count)
        }
    }
}
