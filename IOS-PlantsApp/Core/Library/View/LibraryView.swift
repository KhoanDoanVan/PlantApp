//
//  LibraryView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 21/02/2024.
//

import SwiftUI

struct LibraryView: View {
    
    @State private var search = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView(showsIndicators : false){
                    HStack{
                        LazyVStack{
                            ForEach(0 ... 10, id : \.self){ library in
                                
                                VStack{
                                    NavigationLink(destination: DetailsView()){
                                        LibraryCellView()
                                    }
                                    .tint(.black)
                                }
                            }
                        }
                    }
                }
                .navigationTitle("Plant Library")
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text: $search, prompt: "Search")
                .refreshable {
                    print("DEBUG::Refreshable")
                }
                
                NavBarAlphabetView()
                    .position(CGPoint(x: UIScreen.main.bounds.width - 20, y: 310))
            }
        }
    }
}

#Preview {
    LibraryView()
}
