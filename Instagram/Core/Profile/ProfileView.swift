import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header
                VStack(spacing: 10) {
                    // pic and stats
                    HStack {
                        Image("profile-photo-1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            UserStatView(value: 3, title: "Posts")
                            
                            UserStatView(value: 500, title: "Followers")
                            
                            UserStatView(value: 100, title: "Following")
                        }
                    }
                    .padding(.horizontal, 20)
                    
                    // name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Erica")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Health enthusiast")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    
                    // action button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundStyle(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    
                    Divider()
                }
                
                // post grid view
                LazyVGrid(columns: gridItems, spacing: 1) {
                    let itemWidth = (UIScreen.main.bounds.width - 2) / 3
                    ForEach(0 ... 15, id: \.self) { _ in
                        Image("grid-photo-1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: itemWidth, height: itemWidth)
                            .clipped()
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
