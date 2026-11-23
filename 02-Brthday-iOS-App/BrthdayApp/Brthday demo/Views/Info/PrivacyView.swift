//
//  PrivacyView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-30.
//

import SwiftUI

struct PrivacyView: View {
    @Binding var currentShowingView: String
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                Group {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            self.currentShowingView = "HomeView"
                        }
                    }) {
                        Image("smallBrthdayLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                    }
                    
                    Spacer()

                    
                    Text("PRIVACY")
                        .foregroundColor(.black)
                        .font(.title3)
                        .bold()
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.leading)
                        .padding(.trailing)
                    
                    Spacer()

                    
                    Button(action: {
                        withAnimation {
                            self.currentShowingView = "DropDownMenu"
                        }
                    }) {
                        Image(systemName:"line.3.horizontal")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .bold()
                    }
                    Spacer()
                }
                }
                VStack {
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder()
                        .frame(height: 1)
                }
                
                Spacer()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack (alignment: .leading) {
                        Text("PRIVACY")
                            .bold()
                            .foregroundColor(Color(.orange))
                            .font(.system(size: 30))
                            .padding()
                            .multilineTextAlignment(.leading)
                        
                        Text("PERSONAL IDENTIFICATION INFORMATION")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("WE MAY COLLECT PERSONAL IDENTIFICATION INFORMATION FROM USERS IN A VARIETY OF WAYS, INCLUDING, BUT NOT LIMITED TO, WHEN USERS VISIT OUR APP, REGISTER ON THE APP, RESPOND TO A SURVEY, AND IN CONNECTION WITH OTHER ACTIVITIES, SERVICES, FEATURES OR RESOURCES WE MAKE AVAILABLE ON OUR APP. USERS MAY BE ASKED FOR, AS APPROPRIATE, NAME, EMAIL ADDRESS, MAILING ADDRESS, PHONE NUMBER. WE WILL COLLECT PERSONAL IDENTIFICATION INFORMATION FROM USERS ONLY IF THEY VOLUNTARILY SUBMIT SUCH INFORMATION TO US. USERS CAN ALWAYS REFUSE TO SUPPLY PERSONAL IDENTIFICATION INFORMATION, EXCEPT THAT IT MAY PREVENT THEM FROM ENGAGING IN CERTAIN SITE RELATED ACTIVITIES.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        
                        Text("NON-PERSONAL IDENTIFICATION INFORMATION")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("WE MAY COLLECT NON-PERSONAL IDENTIFICATION INFORMATION ABOUT USERS WHENEVER THEY INTERACT WITH OUR APP. NON-PERSONAL IDENTIFICATION INFORMATION MAY INCLUDE THE TYPE OF PHONE AND TECHNICAL INFORMATION ABOUT USERS MEANS OF CONNECTION TO OUR APP, SUCH AS THE OPERATING SYSTEM AND THE INTERNET SERVICE PROVIDERS UTILIZED AND OTHER SIMILAR INFORMATION.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        
                        Text("HOW WE USE COLLECTED INFORMATION")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("BRTHDAY MAY COLLECT AND USE USERS PERSONAL INFORMATION FOR THE FOLLOWING PURPOSES:\nTO RUN AND OPERATE OUR APP, WE MAY NEED YOUR INFORMATION TO DISPLAY CONTENT ON THE APP CORRECTLY.\nTO PERSONALIZE USER EXPERIENCE WE MAY USE INFORMATION IN THE AGGREGATE TO UNDERSTAND HOW OUR USERS AS A GROUP USE THE SERVICES AND RESOURCES PROVIDED ON OUR APP.\nTO SEND PERIODIC EMAILS WE MAY USE THE EMAIL ADDRESS TO SEND USER INFORMATION AND UPDATES PERTAINING TO THEIR ORDER. IT MAY ALSO BE USED TO RESPOND TO THEIR INQUIRIES, QUESTIONS, AND/OR OTHER REQUESTS.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        
                        Text("HOW WE PROTECT YOUR INFORMATION")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("WE ADOPT APPROPRIATE DATA COLLECTION, STORAGE AND PROCESSING PRACTICES AND SECURITY MEASURES TO PROTECT AGAINST UNAUTHORIZED ACCESS, ALTERATION, DISCLOSURE OR DESTRUCTION OF YOUR PERSONAL INFORMATION, USERNAME, PASSWORD, TRANSACTION INFORMATION AND DATA STORED ON OUR APP.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                    }
                    VStack (alignment: .leading) {
                        Text("SHARING YOUR PERSONAL INFORMATION")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("WE DO NOT SELL, TRADE, OR RENT USERS PERSONAL IDENTIFICATION INFORMATION TO OTHERS. WE MAY SHARE GENERIC AGGREGATED DEMOGRAPHIC INFORMATION NOT LINKED TO ANY PERSONAL IDENTIFICATION INFORMATION REGARDING VISITORS AND USERS WITH OUR BUSINESS PARTNERS, TRUSTED AFFILIATES AND ADVERTISERS FOR THE PURPOSES OUTLINED ABOVE.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        
                        Text("CHANGES TO THIS PRIVACY POLICY")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("BRTHDAY HAS THE DISCRETION TO UPDATE THIS PRIVACY POLICY AT ANY TIME. WHEN WE DO, WE WILL POST A NOTIFICATION ON THE MAIN PAGE OF OUR APP. WE ENCOURAGE USERS TO FREQUENTLY CHECK THIS PAGE FOR ANY CHANGES TO STAY INFORMED ABOUT HOW WE ARE HELPING TO PROTECT THE PERSONAL INFORMATION WE COLLECT. YOU ACKNOWLEDGE AND AGREE THAT IT IS YOUR RESPONSIBILITY TO REVIEW THIS PRIVACY POLICY PERIODICALLY AND BECOME AWARE OF MODIFICATIONS.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        
                        Text("YOUR ACCEPTANCE OF THESE TERMS")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("BY USING THIS APP, YOU SIGNIFY YOUR ACCEPTANCE OF THIS POLICY. IF YOU DO NOT AGREE TO THIS POLICY, PLEASE DO NOT USE OUR APP. YOUR CONTINUED USE OF THE APP FOLLOWING THE POSTING OF CHANGES TO THIS POLICY WILL BE DEEMED YOUR ACCEPTANCE OF THOSE CHANGES.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        
                        Text("CONTACTING US")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("IF YOU HAVE ANY QUESTIONS ABOUT THIS PRIVACY POLICY, THE PRACTICES OF THIS APP, OR YOUR DEALINGS WITH THIS APP, PLEASE CONTACT US.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        
                        Group {
                            Image("brthdayName")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300, height: 70)
                                .foregroundColor(.black)
                                .font(.title3)
                                .bold()
                            
                                .frame(maxWidth: .infinity)
                                .padding()
                            
                                .background( RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder()
                                             
                                )
                                .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
}
