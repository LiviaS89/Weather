import SwiftUI

struct VremeaRows: View {
    var vremea : Vremea
    var body: some View {
        
        VStack (alignment: .leading, spacing: 10) {
            
            HStack (alignment: .center, spacing: 5) {
                Image (vremea.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .leading)
                
                VStack {
                    Text(vremea.city.uppercased())
                        .bold()
                        .padding(.horizontal, 10)
                    
                    Text (vremea.temperature)
                        .foregroundColor(.red)
                        .padding(.horizontal,10)
                    
                }
            }
        }
    }
}
