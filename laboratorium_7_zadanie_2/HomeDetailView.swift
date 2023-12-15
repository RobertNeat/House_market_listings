//  HomeDetailView.swift
//  laboratorium_7_zadanie_2

import SwiftUI

struct HomeDetailView: View {
    
    let home:Home
    
    var body: some View {
        VStack{
            
            Image(uiImage: home.image ?? UIImage(imageLiteralResourceName: "home_1"))
            
            Text(home.name)
                .font(.system(size:40,weight:.semibold))
                .foregroundColor(Color.gray)
            
            List{
                Section(header:Text("Powierzchnia")){
                    HStack{
                        Text("powierzchnia zabudowy:")
                            .foregroundColor(.gray)
                        Text("\(String(format:"%.2f",home.surface))")
                    }
                    HStack{
                        Text("powierzchnia działki:")
                            .foregroundColor(.gray)
                        Text("\(String(format:"%.2f",home.plotSize))")
                    }
                }
                Section(header:Text("Wnętrze")){
                    HStack{
                        Text("ilość pokoi:")
                            .foregroundColor(.gray)
                        Text("\(home.roomCount)")
                    }
                    HStack{
                        Text("ilość pięter:")
                            .foregroundColor(.gray)
                        Text("\(home.floorCount)")
                    }
                }
            }
            
        }
    }
}

struct HomeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailView(home: Home(name: "Home name",
                                            surface: 200.0,
                                            roomCount: 5,
                                            plotSize: 800.0,
                                            floorCount: 2,
                                            image: UIImage(named: "house_1")
                                           ))
    }
}
