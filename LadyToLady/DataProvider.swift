//
//  File.swift
//  LadyToLady
//
//  Created by Dionne Condor-Farrell on 19/05/2018.
//  Copyright © 2018 Dionne Condor-Farrell. All rights reserved.
//

import Foundation

struct MyData: Codable{
    var name: String
    var email: String
    var notes: String

}

func doStuff(data: MyData){
    
}

func doStuff(someoneElsesData: MyData){
    
}

class DataProvider{
    
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("MyData")

    //    func getName() -> String {
//        return "Sally"
//    }
//
//    func getEmail() -> String {
//        return "sally@mail.com"
//    }
//
//    func getNotes() -> String {
//        return "Some nice notes about me"
//    }
    
    func getMyData() -> MyData {
        print(DataProvider.ArchiveURL)
        do{
            let data = try Data( contentsOf: DataProvider.ArchiveURL)
            return try JSONDecoder().decode(MyData.self, from: data)
            
        }catch {
            return MyData(name: "Sally" , email: "sally@mail.com", notes: "Some nice notes about me")
        }
 
        
       // doStuff(data: <#T##MyData#>)
        //doStuff(someoneeslesData: MyData)
        //return MyData(name: "Sally", email: "sally@mail.com", notes: "Some nice notes about me")
    
    }
    
    func setMyData(_ data: MyData) {
        
        let encoder = JSONEncoder()
        try? encoder.encode(data).write(to: DataProvider.ArchiveURL)
        
        print("My Name is " + data.name)
        print("My Email is " + data.email)
        print("My Notes are " + data.notes)
        
    }
    
    
}
