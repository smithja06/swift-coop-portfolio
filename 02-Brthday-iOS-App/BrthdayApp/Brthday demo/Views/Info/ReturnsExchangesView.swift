//
//  ReturnsExchangesView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-30.
//

import SwiftUI

struct ReturnsExchangesView: View {
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
                    
                    Text("RETURNS & EXCHANGES")
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
                        Text("RETURNS & EXCHANGES")
                            .bold()
                            .foregroundColor(Color(.orange))
                            .font(.system(size: 30))
                            .padding()
                            .multilineTextAlignment(.leading)
                        
                        Text("RETURNS")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("OUR POLICY LASTS 21 DAYS. IF 21 DAYS HAVE GONE BY SINCE YOUR PURCHASE, UNFORTUNATELY WE CAN’T OFFER YOU A REFUND OR EXCHANGE.\nTO BE ELIGIBLE FOR A RETURN, YOUR ITEM MUST BE UNUSED AND IN THE SAME CONDITION THAT YOU RECEIVED IT. IT MUST ALSO BE IN THE ORIGINAL PACKAGING.\nSEVERAL TYPES OF GOODS ARE EXEMPT FROM BEING RETURNED. PERISHABLE GOODS SUCH AS FOOD, FLOWERS, NEWSPAPERS OR MAGAZINES CANNOT BE RETURNED. WE ALSO DO NOT ACCEPT PRODUCTS THAT ARE INTIMATE OR SANITARY GOODS, HAZARDOUS MATERIALS, OR FLAMMABLE LIQUIDS OR GASES.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                             
                        Text("ADDITIONAL NON-RETURNABLE ITEMS:\nGIFT CARDS\nDOWNLOADABLE SOFTWARE PRODUCTS\nSOME HEALTH AND PERSONAL CARE ITEMS")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                          
                        Text("TO COMPLETE YOUR RETURN, WE REQUIRE A RECEIPT OR PROOF OF PURCHASE. PLEASE DO NOT SEND YOUR PURCHASE BACK TO THE MANUFACTURER.\nTHERE ARE CERTAIN SITUATIONS WHERE ONLY PARTIAL REFUNDS ARE GRANTED (IF APPLICABLE)\nBOOK WITH OBVIOUS SIGNS OF USE\nCD, DVD, VHS TAPE, SOFTWARE, VIDEO GAME, CASSETTE TAPE, OR VINYL RECORDS, MISC OR ANY OTHER ACCESSORIES THAT HAS BEEN OPENED\nANY ITEM NOT IN ITS ORIGINAL CONDITION, IS DAMAGED OR MISSING PARTS FOR REASONS NOT DUE TO OUR ERROR\nANY ITEM THAT IS RETURNED MORE THAN 21 DAYS AFTER DELIVERY")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        
                        Text("REFUNDS (IF APPLICABLE)")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("ONCE YOUR RETURN IS RECEIVED AND INSPECTED, WE WILL SEND YOU AN EMAIL TO NOTIFY YOU THAT WE HAVE RECEIVED YOUR RETURNED ITEM. WE WILL ALSO NOTIFY YOU OF THE APPROVAL OR REJECTION OF YOUR REFUND.\nIF YOU ARE APPROVED, THEN YOUR REFUND WILL BE PROCESSED, AND A CREDIT WILL AUTOMATICALLY BE APPLIED TO YOUR CREDIT CARD OR ORIGINAL METHOD OF PAYMENT, WITHIN A CERTAIN AMOUNT OF DAYS.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        
                        Text("LATE OR MISSING REFUNDS (IF APPLICABLE)")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("IF YOU HAVEN’T RECEIVED A REFUND YET, FIRST CHECK YOUR BANK ACCOUNT AGAIN.\nTHEN CONTACT YOUR CREDIT CARD COMPANY, IT MAY TAKE SOME TIME BEFORE YOUR REFUND IS OFFICIALLY POSTED.\nNEXT CONTACT YOUR BANK. THERE IS OFTEN SOME PROCESSING TIME BEFORE A REFUND IS POSTED.\nIF YOU’VE DONE ALL OF THIS AND YOU STILL HAVE NOT RECEIVED YOUR REFUND YET, PLEASE CONTACT US ON THE CONTACT TAB IN THE DROPDOWN MENU OR AT BRTHDAY@OUTLOOK.COM.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                    }
                    VStack (alignment: .leading) {
                        Text("SALE ITEMS (IF APPLICABLE)")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("ONLY REGULAR PRICED ITEMS MAY BE REFUNDED, UNFORTUNATELY SALE ITEMS CANNOT BE REFUNDED.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        
                        Text("EXCHANGES (IF APPLICABLE)")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("WE ONLY REPLACE ITEMS IF THEY ARE DEFECTIVE OR DAMAGED.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        Text("GIFTS")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("IF THE ITEM WAS MARKED AS A GIFT WHEN PURCHASED AND SHIPPED DIRECTLY TO YOU, YOU’LL RECEIVE A GIFT CREDIT FOR THE VALUE OF YOUR RETURN. ONCE THE RETURNED ITEM IS RECEIVED, A GIFT CERTIFICATE WILL BE MAILED TO YOU.\nIF THE ITEM WASN’T MARKED AS A GIFT WHEN PURCHASED, OR THE GIFT GIVER HAD THE ORDER SHIPPED TO THEMSELVES TO GIVE TO YOU LATER, WE WILL SEND A REFUND TO THE GIFT GIVER AND HE WILL FIND OUT ABOUT YOUR RETURN.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        Text("SHIPPING")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("YOU WILL BE RESPONSIBLE FOR PAYING FOR YOUR OWN SHIPPING COSTS FOR RETURNING YOUR ITEM. SHIPPING COSTS ARE NON-REFUNDABLE. IF YOU RECEIVE A REFUND, THE COST OF RETURN SHIPPING WILL BE DEDUCTED FROM YOUR REFUND.\nDEPENDING ON WHERE YOU LIVE, THE TIME IT MAY TAKE FOR YOUR EXCHANGED PRODUCT TO REACH YOU, MAY VARY.\nIF YOU ARE SHIPPING AN ITEM OVER $75, YOU SHOULD CONSIDER USING A TRACKABLE SHIPPING SERVICE OR PURCHASING SHIPPING INSURANCE. WE DON’T GUARANTEE THAT WE WILL RECEIVE YOUR RETURNED ITEM.")
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
