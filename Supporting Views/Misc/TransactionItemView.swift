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

struct TransactionItemView: View {
    var body: some View {
        ZStack {
            RoundedBackgroundView()

            HStack {
                HStack {
                    Image("icon-card")

                    VStack(alignment: .leading) {
                        Text("Payment").customFont(.custom(.bold, 20))
                        HStack(spacing: 3) {
                            Text("Payment from").customFont(.custom(.medium, 14))
                            Text("Gerry").customFont(.custom(.bold, 14))
                        }
                    }.padding(.leading, 20)
                }

                Spacer()

                VStack(alignment: .trailing) {
                    Text("- $105.68")
                        .customFont(.custom(.bold, 20))
                        .foregroundColor(.baseGreen)
                    Text("Andre").customFont(.custom(.medium, 14))
                }
            }
            .foregroundColor(.baseHokiBlue)
            .padding(.horizontal, 15)
            .frame(height: 80)

        }
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

struct TransactionItemView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionItemView()
            .previewLayout(.fixed(width: 600, height: 80))
    }
}
