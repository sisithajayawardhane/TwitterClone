//
//  FeedView.swift
//  TwitterClone
//
//  Created by mac on 2022-05-15.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack(alignment:.bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0...20, id: \.self){ _ in
                        TweetRowView()
                            .padding()
                    }
                }
            }
            Button {
                showNewTweetView.toggle()
            } label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 50, height: 50)
                    
            }
            
            .background(.blue)
            .clipShape(Circle())
            .foregroundColor(.white)
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }

            
        }
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
