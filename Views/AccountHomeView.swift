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

struct AccountHomeView: View {
    @ObservedObject var account: Account
    
    var body: some View {
        ZStack {
            Color(.baseLightWhite)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    HomeHeaderView(account: account)
                    CardListRow(account: account)
                    HomeSubmenuView().padding(.bottom, 15)
                    AccountSummaryView(account: account)
                }
            }
        }
        
    }
}

struct AccountHomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AccountHomeView(account: MockAccountPreviewService.checkingAccount)
            AccountHomeView(account: MockAccountPreviewService.creditAccount)
        }
    }
}
