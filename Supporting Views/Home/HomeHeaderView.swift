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

struct HomeHeaderView: View {
    @ObservedObject var account: Account
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: -8) {
                Text("Hi, Jose Flores")
                    .customFont(.custom(.bold, 24))
                Text("Bienvenido a tu app.")
                    .customFont(.custom(.demibold, 16))
            }.foregroundColor(.basePrussianBlue)
            Spacer()
            Image("avatar")
        }.padding(.horizontal, 20)
        .padding(.bottom, 15)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView(account: MockAccountPreviewService
                        .creditAccount)
    }
}
