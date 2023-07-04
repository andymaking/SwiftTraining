//
//  Class43AsyncImage.swift
//  tunde_class_one
//
//  Created by Andima Udoh on 30/06/2023.
//

import SwiftUI

struct Class43AsyncImage: View {
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: "https://media.licdn.com/dms/image/C4D03AQFmuDYmPBm9rQ/profile-displayphoto-shrink_800_800/0/1656655542741?e=2147483647&v=beta&t=RdbBHjIuMdACv1YWJQrwAbg9vk1slIcI_akFJjKSKrk")) { image in
                image.resizable().scaledToFit().clipShape(RoundedRectangle(cornerRadius: 12))
            } placeholder: {
                Color.gray.overlay {
                    ProgressView()
                }
            }
            .frame(width: 200, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            AsyncImage(url: URL(string: "https://media.licdn.com/dms/image/C4D03AQFmuDYmPBm9rQ/profile-displayphoto-shrink_800_800/0/1656655542741?e=2147483647&v=beta&t=RdbBHjIuMdACv1YWJQrwAbg9vk1slIcI_akFJjKSKrk"), transaction: .init(animation: .easeOut)) {
                phase in
                
                switch phase {
                case .success(let image):
                    image.resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 12)
                    )
                case .failure(let error):
                    Color.gray
                        .opacity(0.75)
                        .overlay {
                            Image(systemName: "photo")
                                .font(.system(size: 30, weight: .bold))
                    }
                case .empty:
                    Color.gray.overlay {
                        ProgressView()
                    }
                @unknown default: EmptyView()
                }
                
//                if let image = phase.image {
//                        image.resizable().scaledToFit().clipShape(RoundedRectangle(cornerRadius: 12)
//                        )
//                } else if phase.error != nil {
//                    Color.gray.opacity(0.75).overlay {
//                        Image(systemName: "photo").font(.system(size: 30, weight: .bold))
//                    }
//                } else {
//                    Color.gray.overlay {
//                        ProgressView()
//                    }
//                }
            }
            .frame(width: 200, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 12)).transition(.opacity.combined(with: .scale))
            
            AsyncImage(url: URL(string: "https://media.licdn.com/dms/image/C4D03AQFmuDYmPBm9rQ/profile-displayphoto-shrink_800_800/0/1656655542741?e=2147483647&v=beta&t=RdbBHjIuMdACv1YWJQrwAbg9vk1slIcI_akSKrk")) {
                phase in
                
                if let image = phase.image {
                        image.resizable().scaledToFit().clipShape(RoundedRectangle(cornerRadius: 12)
                        )
                } else if phase.error != nil {
                    Color.gray.opacity(0.75).overlay {
                        Image(systemName: "photo").font(.system(size: 30, weight: .bold))
                    }
                } else {
                    Color.gray.overlay {
                        ProgressView()
                    }
                }
            }
            .frame(width: 200, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 12))
                       

        }
    }
}

struct Class43AsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        Class43AsyncImage()
    }
}
