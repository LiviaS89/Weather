import SwiftUI

struct TextView: View {
    var text: String
    var image: String
    
    var body: some View {
        
        VStack {
            Text ("Vremea".uppercased())
                .foregroundColor(.blue)
                .font(Font.system(size: 35))
                .bold()
            
            Image ("meteo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal,12)
        }
    }
}
