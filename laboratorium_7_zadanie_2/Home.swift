//  Home.swift

import Foundation
import UIKit
struct Home:Hashable{//Dom
    let id = UUID() //zeby mozna bylo elementy identyfikować na podstawie id a nie name (moze teraz byc wiele takich samych ofert o tym samym name)
    let name:String//nazwa
    let surface:Double//powierzchnia
    let roomCount:Int//liczba pokoi
    let plotSize:Double//wielkosc dzialki
    let floorCount:Int //liczba pieter
    let image:UIImage? //obraz
    
    func hash(into hasher: inout Hasher){
        hasher.combine(id)
    }
    
    static func == (lhs: Home, rhs: Home) -> Bool{
        return lhs.id == rhs.id
        && lhs.name == rhs.name
        && lhs.surface == rhs.surface
        && lhs.roomCount == rhs.roomCount
        && lhs.plotSize == rhs.plotSize
        && lhs.floorCount == rhs.floorCount
        && lhs.image == rhs.image
    }

}

let homes:[Home] = [
       Home(name:"Fliffside lakehouse", surface: 500.34, roomCount: 8, plotSize: 883.23, floorCount: 2,image: UIImage(named: "house_1")),
       Home(name: "Forest house", surface: 230.30, roomCount: 2, plotSize: 400, floorCount: 2, image: UIImage(named: "house_2")),
       Home(name: "Mountain hidaway", surface: 392.91, roomCount: 4, plotSize: 809.9, floorCount: 1, image: UIImage(named: "house_3")),
       Home(name: "Frodo elfhouse", surface: 180.4, roomCount: 3, plotSize: 390.5, floorCount: 2, image: UIImage(named: "house_4")),
       Home(name: "Triangle tenthouse", surface: 250.4, roomCount: 4, plotSize: 528.82, floorCount: 1, image: UIImage(named: "house_5")),
       Home(name: "Lake cube", surface: 258.3, roomCount: 3, plotSize: 910.3, floorCount: 1, image: UIImage(named: "house_6"))
   ]
