//
//  DetailsView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 21/02/2024.
//

import SwiftUI

struct DetailsView: View {
    
    @State private var check = false
    
    var body: some View {
        VStack{
            
            VStack(alignment : .trailing){
                Image("plant1")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: 300)
                    .scaledToFill()
                
                Button{
                    check.toggle()
                } label: {
                    
                    if check == true {
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .background(.white)
                            .cornerRadius(50)
                            .foregroundColor(Color(.systemGreen))
                            .shadow(color: Color(.systemGray), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .overlay{
                                RoundedRectangle(cornerRadius: 50)
                                .stroke(Color(.systemGray4), lineWidth : 1)
                            }
                            .padding(.trailing, 28)
                            .padding(.top, -35)
                    } else {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .background(.white)
                            .cornerRadius(50)
                            .foregroundColor(Color(.systemCyan))
                            .shadow(color: Color(.systemGray), radius: 20)
                            .overlay{
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color(.systemCyan), lineWidth : 1)
                            }
                            .padding(.trailing, 28)
                            .padding(.top, -35)
                    }
                }
            }
            
            VStack(alignment : .leading, spacing: 10){
                Text("Adobe Hot Pepper")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                
                HStack{
                    ZStack{
                        Text("Beginer friendly")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                    }
                    .background(.green)
                    .cornerRadius(20)
                                        
                    ZStack{
                        Text("Indoor Plant")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                    }
                    .background(.blue)
                    .cornerRadius(20)
                }
                
                ScrollView(showsIndicators: false){
                    VStack(alignment : .leading, spacing: 10){
                        VStack(alignment : .leading){
                            Text("ORIGIN")
                                .fontWeight(.semibold)
                                .textInputAutocapitalization(.characters)
                            
                            Text("It is thought that all peppers, hot and sweet, originally developed from the wild chiltepin pepper of Central America.")
                                .font(.subheadline)
                                .foregroundStyle(Color(.systemGray))
                        }
                        
                        VStack(alignment : .leading){
                            Text("PLANTING")
                                .fontWeight(.semibold)
                                .textInputAutocapitalization(.characters)
                            
                            Text("Plant the seedlings about 1 inch deeper than they were growing in their pots. The base of the stems will send out small roots, making stronger plants. Space your plants based on their mature size; hot peppers do not mind being a bit crowded. If you start your own hot pepper plants indoors, give them plenty of time to develop. Seed should be started eight to 12 weeks before your last frost date. The seeds can be slow to germinate. You should see the first sets of true leaves within about six weeks. At that point, you can transplant them into individual pots and continue growing them indoors.")
                                .font(.subheadline)
                                .foregroundStyle(Color(.systemGray))
                        }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top, 5)
            
            Spacer()
        }
    }
}

#Preview {
    DetailsView()
}
