import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            ZStack {
                BackgroundImageView()
                
                VStack {
                    TopBarView()
                    Spacer().frame(height: 50)
                    
                    VStack(spacing: 20) {
                        LogoView()
                        
                        CustomTextField(
                            imageName: "person",
                            placeholder: "username",
                            text: $username
                        )
                        
                        CustomSecureField(
                            imageName: "lock",
                            placeholder: "Password",
                            text: $password
                        )
                        
                        Spacer().frame(height: 30)
                        
                        CustomButton(title: "Log In", backgroundColor:.test, foregroundColor: .white)
                        CustomButton(title: "Become a Client", backgroundColor: .clear, foregroundColor: .test2)
                        
                        Text("Forgot Your username or password?")
                            .font(.title3)
                            .foregroundColor(.test2)
                            .padding()
                    }
                    .padding(.bottom, 150)
                }
                .padding([.top ],60)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundImageView: View {
    var body: some View {
        Image("background")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

struct TopBarView: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {}) {
                Image("side")
                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
            }
        }
        .padding(.trailing, 20)
    }
}

struct LogoView: View {
    var body: some View {
        Image("Gnial")
            .resizable()
            .frame(width: 120, height: 70)
            .padding(.bottom, 40)
    }
}

struct CustomTextField: View {
    let imageName: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .padding(.horizontal, 15)
                .frame(width: 20, height: 20)
            TextField(placeholder, text: $text).fontWeight(.medium).padding(.horizontal,10)
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.black, lineWidth: 1)
        )
        .frame(width: 350, height: 20)
        .padding()
    }
}

struct CustomSecureField: View {
    let imageName: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .padding(.horizontal, 15)
                .frame(width: 20, height: 20)
            SecureField(placeholder, text: $text).fontWeight(.medium).padding(.horizontal,10)
        }
        .frame(width: 320, height: 22)
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.black, lineWidth: 1)
        )
        .padding()
    }
}

struct CustomButton: View {
    let title: String
    let backgroundColor: Color
    let foregroundColor: Color
    
    var body: some View {
        Button(action: {}, label:{
            Text(title)
          }).font(.title2)
            .frame(width: 210, height: 20)
            .padding(.horizontal, 60)
            .padding(.vertical, 12)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(40)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(foregroundColor, lineWidth: backgroundColor == .clear ? 2 : 3)
            )
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
