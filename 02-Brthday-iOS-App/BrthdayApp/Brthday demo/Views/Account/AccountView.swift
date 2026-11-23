//
//  AccountView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-31.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

struct AccountView: View {
    @Binding var currentShowingView: String
    
    @AppStorage("uid") var userID: String = ""
    
    @State private var username = ""
    @State private var email = String(Auth.auth().currentUser?.email ?? "")
    @State private var password = ""
    
    @State private var showingAlert = false
    @State private var alertMessage = ""
    
    @State private var emailChange = false
    @State private var newEmail = ""
    
    @State private var usernameChange = false
    @State private var newUsername = ""
    
    let db = Firestore.firestore()
    
    private func isValidUsername(_ username: String) -> Bool {
        let usernameRegex = "^[a-zA-Z0-9_]{4,}$"
        let usernamePredicate = NSPredicate(format: "SELF MATCHES %@", usernameRegex)
        return usernamePredicate.evaluate(with: username)
    }
    
    private func fetchUsername() {
            guard !userID.isEmpty else { return }
            let docRef = db.collection("users").document(userID)

            docRef.getDocument { document, error in
                if let document = document, document.exists {
                    if let username = document.data()?["username"] as? String {
                        self.username = username
                    }
                } else {
                    print("Document does not exist")
                }
            }
        }

    private func changeUsername(to newUsername: String) {
        guard !userID.isEmpty else { return }
        let userRef = db.collection("users").document(userID)

        // setData with merge creates the user's document the first time and updates it after that
        // (updateData fails with "No document to update" because sign up never creates the document)
        userRef.setData(["username": newUsername], merge: true) { error in
            if let error = error {
                // Keep the sheet open and show what went wrong
                print("Error updating username: \(error)")
                alertMessage = error.localizedDescription
                showingAlert.toggle()
            } else {
                // Username saved to Firestore
                self.username = newUsername
                self.newUsername = ""
                usernameChange = false // Close the username change sheet
            }
        }
    }
    
    var body: some View {
        VStack {
            HStack (alignment: .center) {
                Spacer()
                Text("ACCOUNT")
                    .foregroundColor(.black)
                    .font(.title2)
                    .bold()
                    
                Spacer()
            }
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder()
                    .frame(height: 1)
            }
        }
        
        NavigationView {
            ZStack {
                VStack {
                    Form {
                        Section(header: Text("Account")) {
                            TextWithLabel(label: "Username", text: username)
                                .padding(.vertical, 8)
                            Button(action: {
                                usernameChange.toggle()
                            }) {
                                Text("Change Username")
                            }
                            
                            TextWithLabel(label: "Email", text: email)
                                .padding(.vertical, 8)
                            Button(action: {
                                emailChange.toggle()
                            }) {
                                Text("Change Email")
                            }
                            
                            TextWithLabel(label: "Password", text: "********")
                                .padding(.vertical, 8)
                            Button(action: {
                                // Handle password change action
                                Auth.auth().sendPasswordReset(withEmail: email) { error in
                                    if let error = error {
                                        // Handle password reset error
                                        print(error)
                                        alertMessage = error.localizedDescription
                                        showingAlert.toggle()
                                    } else {
                                        // Password reset email sent successfully
                                        print("Password reset email sent")
                                        alertMessage = "Password reset email sent to \(email). You may need to check spam."
                                        showingAlert.toggle()
                                    }
                                }
                            }) {
                                Text("Change Password")
                            }
                        }
                    }
                    Spacer()
                    signOutButton
                        .foregroundColor(.black)
                        .font(.title3)
                        .bold()
                    
                        .frame(maxWidth: .infinity)
                        .padding()
                    
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .strokeBorder()
                                .frame(width: 350, height: 60)
                                .foregroundColor(.black)
                        )
                        .padding(.bottom, 48)
                }
                .navigationBarTitle("Settings")
                .padding()
                .background(Color(UIColor.systemGroupedBackground))
                .onAppear {
                    fetchUsername()
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Alert"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                }
                .sheet(isPresented: $emailChange) {
                    VStack {
                        Text("Change Email")
                            .font(.title)
                            .padding(.bottom, 16)
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Current Email")
                            Text(email)
                                .font(.callout)
                                .foregroundColor(.gray)
                            Text("New Email")
                            HStack {
                                TextField("New Email", text: $newEmail)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                                Spacer()
                                if (newEmail.count != 0) {
                                    Image(systemName: newEmail.isValidEmail() ? "checkmark" : "xmark")
                                        .fontWeight(.bold)
                                        .foregroundColor(newEmail.isValidEmail() ? .green : .red)
                                }
                            }
                            
                            Text("Password")
                            SecureField("Password", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        .padding()
                        
                        Button(action: {
                            handleChangeEmail()
                        }) {
                            Text("Save")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .padding()
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Alert"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                    }
                }
                .sheet(isPresented: $usernameChange) {
                    VStack {
                        Text("Change Username")
                            .font(.title)
                            .padding(.bottom, 16)
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Current Username")
                            Text(username)
                                .font(.callout)
                                .foregroundColor(.gray)
                            Text("New Username")
                            HStack {
                                TextField("New Username", text: $newUsername)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                                Spacer()
                                
                                if (newUsername.count != 0) {
                                    Image(systemName: isValidUsername(newUsername) ? "checkmark" : "xmark")
                                        .fontWeight(.bold)
                                        .foregroundColor(isValidUsername(newUsername) ? .green : .red)
                                }
                                
                            }
                        }
                        .padding()
                        
                        Button(action: {
                            handleChangeUsername()
                        }) {
                            Text("Save")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .padding()
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Alert"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                    }
                }
                HStack {
                    BottomNavBarItem(image: Image(systemName: "gift")) {withAnimation{self.currentShowingView = "NewView"}}
                        .foregroundColor(Color.black)
                    BottomNavBarItem(image: Image(systemName: "house")) {withAnimation{self.currentShowingView = "HomeView"}}
                        .foregroundColor(Color.black)
                    BottomNavBarItem(image: Image(systemName: "cart")) {withAnimation{self.currentShowingView = "CartView"}}
                        .foregroundColor(Color.black)
                }
                .padding()
                .background(Color.white)
                .clipShape(Capsule())
                .padding(.horizontal)
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6)
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
            
            
    var signOutButton: some View {
        Button(action: {
            let firebaseAuth = Auth.auth()
            do {
                try firebaseAuth.signOut()
                withAnimation {
                    userID = ""
                }
            } catch let signOutError as NSError {
                print(signOutError)
            }
        }) {
            Text("Sign Out")
        }
    }
            
    private func handleChangeEmail() {
        let user = Auth.auth().currentUser
        let credential = EmailAuthProvider.credential(withEmail: email, password: password)
        
        user?.reauthenticate(with: credential) { _, error in
            if let error = error {
                // Handle reauthentication error
                print(error)
                alertMessage = error.localizedDescription
                showingAlert.toggle()
            } else {
                user?.updateEmail(to: newEmail) { error in
                    if let error = error {
                        // Handle email update error
                        print(error)
                        alertMessage = error.localizedDescription
                        showingAlert.toggle()
                    } else {
                        // Email updated successfully
                        email = newEmail
                        alertMessage = "Email updated successfully."
                        showingAlert.toggle()
                    }
                }
            }
        }
    }
    
    private func handleChangeUsername() {
        // Username must be at least 4 letters, numbers, or underscores
        if isValidUsername(newUsername) {
            // Save to Firestore, the sheet closes once the save succeeds
            changeUsername(to: newUsername)
        } else {
            // Display an error message indicating an invalid username
            alertMessage = "Invalid username. Please choose a different username."
            showingAlert.toggle()
        }
    }
}

struct TextWithLabel: View {
    let label: String
    let text: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(label)
                .font(.caption)
                .foregroundColor(.gray)
            Text(text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}



