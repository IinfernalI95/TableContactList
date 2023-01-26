//
//  DataManager.swift
//  TableViewHW7
//
//  Created by Artur on 25.01.2023.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    let names = [
        "Arthur","Andrey","Igor",
        "Alexandr","Sergey","Dmitriy",
        "Stive","Mark","Bill",
        "Michael","Arnold"
    ]
    //
    let surnames = [
        "Pirojkov","Lenickiy","Podonok",
        "Michailevich","Safonov","Hilko",
        "Jobs","Csukerberg","Geits",
        "Bey","Shvarcneger"
    ]
    
    let emails = [
        "Pirojok@mail.com","Lenickiy@mail.com","Podonok@mail.com",
        "ugodnik217@mail.com","Safonov@mail.com","Hilko@mail.com",
        "Jobs@mail.com","Csukerberg@mail.com","Geits@mail.com",
        "Bey@mail.com","Shvarcneger@mail.com"
    ]
    
    let phones = [
        "+380 999 99 99","+380 999 99 99","+380 999 99 99",
        "+380 999 99 99","+380 999 99 99","+380 999 99 99",
        "+380 888 88 88","facebook call","+380 777 77 77",
        "+380 999 99 99","+380 *** ** **"
    ]
    
}
