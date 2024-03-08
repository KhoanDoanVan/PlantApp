import SwiftUI

struct TreeView: View {
    @State private var selectedImage: Int = 0
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Plant shelf")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.top)
                
                ScrollViewReader { proxy in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 25) {
                            ForEach(0..<4) { index in
                                
                                if index == 0 {
                                    Image("plant\(index + 1)")
                                        .frame(width: 250)
                                        .scaledToFit()
                                        .cornerRadius(25)
                                        .shadow(color: Color(.systemGray2), radius: 10, x: 0, y: 2)
                                        .id(index)
                                        .onTapGesture {
                                            withAnimation {
                                                selectedImage = index
                                                proxy.scrollTo(index, anchor: .center)
                                            }
                                        }
                                        .padding(.leading, 70)
                                } else if index == 3 {
                                    Image("plant\(index + 1)")
                                        .frame(width: 250)
                                        .scaledToFit()
                                        .cornerRadius(25)
                                        .shadow(color: Color(.systemGray2), radius: 10, x: 0, y: 2)
                                        .id(index)
                                        .onTapGesture {
                                            withAnimation {
                                                selectedImage = index
                                                proxy.scrollTo(index, anchor: .center)
                                            }
                                        }
                                        .padding(.trailing, 70)
                                }
                                else {
                                    Image("plant\(index + 1)")
                                        .frame(width: 250)
                                        .scaledToFit()
                                        .cornerRadius(25)
                                        .shadow(color: Color(.systemGray2), radius: 10, x: 0, y: 2)
                                        .id(index)
                                        .onTapGesture {
                                            withAnimation {
                                                selectedImage = index
                                                proxy.scrollTo(index, anchor: .center)
                                            }
                                        }
                                }
                            }
                        }
                        .frame(height: 360)
                    }
                }
                
                PageControl(numberOfPages: 4, currentPage: $selectedImage)
                
                ContentControl()
                                
                Spacer()
            }
        }
    }
}

struct PageControl: View {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<numberOfPages) { page in
                Circle()
                    .fill(page == currentPage ? Color.gray : Color(.systemGray5))
                    .frame(width: 8, height: 8)
            }
        }
        .padding(.vertical, 10)
    }
}

struct ContentControl: View {
    var body: some View {
        VStack {
            Text("Adobe Hot Pepper")
                .font(.system(size: 22))
                .fontWeight(.semibold)
                .padding(.bottom)
            
            VStack(alignment: .leading) {
                HStack{
                    Image("icon1")
                    Text("Partial, Sun")
                        .font(.system(size: 18))
                }

                HStack{
                    Image("icon2")
                    Text("Water every 14-21 days")
                        .font(.system(size: 18))
                }

                HStack{
                    Image("icon3")
                    Text("Minimum 30°F | -1°C")
                        .font(.system(size: 18))
                }

                HStack{
                    Image("icon4")
                    Text("Propagation by offsets")
                        .font(.system(size: 18))
                }

                HStack{
                    Image("icon5")
                    Text("Non-toxic to humans")
                        .font(.system(size: 18))
                }
            }
        }

    }
}

struct TreeView_Previews: PreviewProvider {
    static var previews: some View {
        TreeView()
    }
}

