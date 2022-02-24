import SwiftUI

struct Forecast: View {
    
    var forecasts = [ Vremea (city: "Sibiu", image: "soare",description: "însorit", temperature: "32 grade Celsius", precipitation: "10%", humidity: "11%", wind: "5km/h" ),
                      Vremea (city: "Timișoara", image: "ploaie", description: "ploaie", temperature: "15 grade Celsius", precipitation: "70%", humidity: "65%", wind: "27km/h" ),
                      Vremea (city: "Arad", image: "zapada", description: "Ninsoare", temperature: "0 grade Celsius", precipitation: "50%", humidity: "80%", wind: "20 km/h"),
                      Vremea (city: "Cluj", image: "ceata", description: "Ceață", temperature: "10 grade Celsius", precipitation: "40%", humidity: "58%", wind: "23 km/h"),
                      Vremea (city: "Iași", image: "innorat", description: "Înnorat", temperature: "17 grade Celsius", precipitation: "37%", humidity: "25%", wind: "18 km/h")]
    
    var body: some View {
        NavigationView {
            List (forecasts, id: \.city) { vremea in
                NavigationLink(destination: ForecastDetails (vremea: vremea)) {
                    VremeaRows (vremea: vremea)
                }
            }
            .navigationBarTitle("Meteo")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


