import SwiftUI

struct ForecastDetails: View {
    var vremea: Vremea
    @State var opinie = ""
    
    var body: some View {
        
        ZStack {
            
            VStack {
                VStack (alignment: .center, spacing: 8) {
                    Text (vremea.description.uppercased())
                        .foregroundColor(.blue)
                        .padding(.top, 20)
                    
                    Image (vremea.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .center)
                }
                
                HStack {
                    
                    VStack (alignment: .leading, spacing: 10) {
                        Text ("Umiditate: \(vremea.humidity)")
                            .foregroundColor(.orange)
                        
                        Text ("Precipitații: \(vremea.precipitation)")
                            .foregroundColor(.pink)
                        
                        Text ("Vânt: \(vremea.wind)")
                            .foregroundColor(.green)
                        
                        TextField ("Comentariu", text: $opinie)
                        if !opinie.isEmpty {
                            Text ("Mulțumesc pentru comentariu!")
                        }
                    }
                    .padding(.horizontal, 12)
                    Spacer ()
                }
                Spacer ()
                
                Button ("Prognoza meteo pentru 7 zile"){
                    print ("https://www.vremea.net")
                }
                .foregroundColor(.black)
                .padding(.all, 10)
                .background(Color (.blue))
                .opacity(0.5)
                .clipShape(Capsule())
                
                Spacer()
            }
        }
    }
}





