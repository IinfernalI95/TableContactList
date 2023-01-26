//
//  Person.swift
//  TableViewHW7
//
//  Created by Artur on 13.01.2023.
//

struct Person {
    let name: String
    let surName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name)  \(surName)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        return [
            Person(name: "Arthur", surName: "Pirojkov", email: "Pirojok@mail.com", phoneNumber: "+380 999 99 99"),
            Person(name: "Andrey", surName: "Lenickiy", email: "Lenickiy@mail.com", phoneNumber: "+380 999 99 99"),
            Person(name: "Igor", surName: "Podonok", email: "Podonok@mail.com", phoneNumber: "+380 999 99 99"),
            Person(name: "Alexandr", surName: "Michailevich", email: "ugodnik217@mail.com", phoneNumber: "+380 999 99 99"),
            Person(name: "Sergey", surName: "Safonov", email: "Safonov@mail.com", phoneNumber: "+380 999 99 99"),
            Person(name: "Dmitriy", surName: "Hilko", email: "Hilko@mail.com", phoneNumber: "+380 999 99 99"),
            Person(name: "Stive", surName: "Jobs", email: "Jobs@mail.com", phoneNumber: "+380 888 88 88"),
            Person(name: "Mark", surName: "Csukerberg", email: "Csukerberg@mail.com", phoneNumber: "facebook call"),
            Person(name: "Bill", surName: "Geits", email: "Geits@mail.com", phoneNumber: "+380 777 77 77"),
            Person(name: "Michael", surName: "Bey", email: "Bey@mail.com", phoneNumber: "+380 999 99 99"),
            Person(name: "Arnold", surName: "Shvarcneger", email: "Shvarcneger@mail.com", phoneNumber: "+380 *** ** **")
        ]
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []

        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()

        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surName: surnames[index],
                                email: emails[index],
                                phoneNumber: phones[index])
            persons.append(person)
        }

        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "email"
}
