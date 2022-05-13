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

struct ContentView: View {
    @EnvironmentObject var model: CreateAccountViewModel
    
    var body: some View {
        ZStack {
            CreateAccountView()
            
            if model.hasAccounts() {
                AccountListView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CreateAccountViewModel()) // (1)
    }
}
