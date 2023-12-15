//  Apartment.swift

import Foundation
import UIKit

struct Apartment:Hashable{//Mieszkanie
    let id = UUID() //zeby mozna bylo elementy identyfikować na podstawie id a nie name (moze teraz byc wiele takich samych ofert o tym samym name)
    let name:String//nazwa
    let surface:Double//powierzchnia
    let roomCount:Int//liczba pokoi
    let doubleStacked:Bool//czy dwupoziomowy
    let image:UIImage?//obraz
    
    
    
    func hash(into hasher: inout Hasher){
        hasher.combine(id)
    }
    
    static func == (lhs: Apartment, rhs: Apartment) -> Bool{
        return lhs.id == rhs.id
        && lhs.name == rhs.name
        && lhs.surface == rhs.surface
        && lhs.roomCount == rhs.roomCount
        && lhs.doubleStacked == rhs.doubleStacked
        && lhs.image == rhs.image
    }

}

let apartments:[Apartment] = [
    Apartment(name: "Herbpartment", surface: 128.3, roomCount: 2, doubleStacked: false, image: UIImage(named: "apartment_1")),
    Apartment(name: "Sunny enclosure", surface: 209.8, roomCount: 5, doubleStacked: true, image: UIImage(named: "apartment_2")),
    Apartment(name: "Quiet safeplace", surface: 180.4, roomCount: 3, doubleStacked: false, image: UIImage(named: "apartment_3"))
]
