//
//  ApartmentDetailView.swift
//  laboratorium_7_zadanie_2
//
//  Created by apple on 05/05/2035.
//

import SwiftUI

struct ApartmentDetailView: View {
    let apartment:Apartment
    
    var body: some View {
        VStack{
            
            Image(uiImage: apartment.image ?? UIImage(imageLiteralResourceName: "apartment_1"))
            
            Text(apartment.name)
                .font(.system(size:40,weight:.semibold))
                .foregroundColor(Color.gray)
            
            List{
                Section(header:Text("Powierzchnia")){
                    HStack{
                        Text("powierzchnia:")
                            .foregroundColor(.gray)
                        Text("\(String(format:"%.2f",apartment.surface))")
                    }
                    HStack{
                        Text("ilość pokoi:")
                            .foregroundColor(.gray)
                        Text("\(apartment.roomCount)")
                    }
                    HStack{
                        Text("dwupiętrowe:")
                            .foregroundColor(.gray)
                        Text("\(apartment.doubleStacked ? "tak" : "nie")")
                    }
                }
                
            }
        }
    }
}

struct ApartmentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ApartmentDetailView(apartment: Apartment(name: "Apartment name", surface: 160.0, roomCount: 4, doubleStacked: true, image: UIImage(named: "apartment_1")))
    }
}
