import SwiftUI

struct FruitModel: Identifiable {
    var id = UUID().uuidString
    let ImageName: String
    let name: String
    let price: Int
    let isFavorite: Bool
}

let Fruits = [
    FruitModel(ImageName: "apple", name: "사과", price: 3000, isFavorite: true),
    FruitModel(ImageName: "Peach", name: "복숭아", price: 2000, isFavorite: false)
]

struct characterModel: Identifiable {
    var id = UUID().uuidString
    let ImageName: String
    let name: String
    let price: Int
    let isFavorite: Bool
}

//MARK: BODY
struct TypealiasView: View {
    let background = Color.gray
    
    var body: some View {
        ZStack {
            background
            
            HStack {
                fruitsRow(item: Fruits[0])
                fruitsRow(item: Fruits[1])
            }
        }
        .ignoresSafeArea()
    }
}

struct fruitsRow: View {
    var item: FruitModel
    
    var body: some View {
        VStack(spacing: 20) {
            Image(item.ImageName)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 150, height: 150)
            
            Text(item.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("Peach"))

            Text("￦\(item.price)")
                .font(Font.title2.weight(.semibold))
                
            if item.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .imageScale(.large)
            } else {
                Image(systemName: "star")
                    .foregroundColor(.white)
                    .imageScale(.large)
            }
            
        }
    }
}
