/**
 Materia: Dispositivos Móviles II
 Examen Final
 Alumnos:
 Jose Flores Guerra
 Gerardo Gomez Mariscal
 Sebastian Acosta Arellano
 Carlos Jesus Abonce Juarez
 */

import SwiftUI

struct HomeSubmenuView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("QUICK SERVICES")
                    .customFont(.custom(.bold, 20))
                    .padding(.bottom, 2)
                    .foregroundColor(.basePrussianBlue)
                Spacer()
            }.padding(.all)

            Divider().padding(.bottom, 10)

            HStack {
                Button(action: {

                }) {
                    VStack {
                        Image("icon-send")
                        Text("ADD NEW").customFont(.custom(.demibold, 12))
                    }
                    .frame(width: 75, height: 80)
                    .background(Color.white)
                    .cornerRadius(10)
                }

                Button(action: {

                }) {
                    VStack {
                        Image("icon-receive")
                        Text("CARDS").customFont(.custom(.demibold, 12))
                    }
                    .frame(width: 75, height: 80)
                    .background(Color.white)
                    .cornerRadius(10)
                }

                Button(action: {

                }) {
                    VStack {
                        Image("icon-invoices")
                        Text("LOCATIONS").customFont(.custom(.demibold, 12))
                    }
                    .frame(width: 75, height: 80)
                    .background(Color.white)
                    .cornerRadius(10)
                }

                Button(action: {
                }) {
                    VStack {
                        Image("icon-bills")
                        Text("TRANSACTIONS").customFont(.custom(.demibold, 12))
                    }
                    .frame(width: 75, height: 80)
                    .background(Color.white)
                    .cornerRadius(10)
                }
                Spacer()
            }
            
            .foregroundColor(.basePrussianBlue)
            
        }
        .padding(.horizontal, 10)
        .background(Color.baseWhite)
    }
}

struct HomeSubmenuView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSubmenuView()
            .previewLayout(.fixed(width: 420, height: 140))
    }
}
