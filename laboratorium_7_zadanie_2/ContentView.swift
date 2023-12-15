//  ContentView.swift
//  laboratorium_7_zadanie_2

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            List{
                Section(header:Text("Domy")){
                    ForEach(homes, id: \.self){home in //\.self
                        NavigationLink(destination:HomeDetailView(home:home)){
                            HStack{
                                Image(uiImage: home.image ?? UIImage(imageLiteralResourceName: "home_1"))
                                    .resizable()
                                    .frame(width:50,height:50)
                                    .cornerRadius(8)
                                Text(home.name)
                            }
                        }
                    }
                }
                
                Section(header:Text("Mieszkania")){
                    ForEach(apartments, id:\.name){apartment in
                        NavigationLink(destination:ApartmentDetailView(apartment:apartment)){
                            HStack{
                                Image(uiImage: apartment.image ?? UIImage(imageLiteralResourceName: "apartment_1"))
                                    .resizable()
                                    .frame(width:50,height:50)
                                    .cornerRadius(8)
                                Text(apartment.name)
                            }
                        }
                    }
                }
                 
            }
        }.navigationTitle("Nieruchomości")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
