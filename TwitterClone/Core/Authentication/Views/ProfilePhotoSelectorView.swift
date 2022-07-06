//
//  ProfilePhotoSelectorView.swift
//  TwitterClone
//
//  Created by mac on 2022-07-04.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Create your account",
                           title2: "Add a profile photo")
            
            Button {
                print("pick a photo")
            } label: {
                Image("addphoto")
                     
                    
                    
            }

            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
