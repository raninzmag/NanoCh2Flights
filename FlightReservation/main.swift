//
//  main.swift
//  FlightReservation
//
//  Created by Ranin Mag on 01/06/1443 AH.
//

import Foundation

class flightDateInput{
    var d: String = ""
    var m : String = ""
    var y : String = ""
    init(d:String, m:String,y:String){
        self.d = d
        self.m = m
        self.y = y
    }//init ENDS
    
}// class flightDateInput ENDS
let userDeptDate = flightDateInput(d: "", m: "", y: "")
let userArrDate = flightDateInput(d: "", m: "", y: "")

print("""
------------------ Welcome Traveler -----------------------------
---------- Let me help you find your next advanture ✈️ ----------
Please tell me first:
""")
var userOption = ""
whileLoop: while true {
    print("are you having company [1] 💃🏻 or alone wolf traveler [0] 🐺? EXIT[9]")
    if let userInput = readLine(){
        userOption = userInput
        switch userInput {
        case "0": print("alone wolf That's Great 🐺")
            tripTypes()
            break whileLoop
        case "1": travelersNumber()
            tripTypes()
            break whileLoop
        case "9":
            break whileLoop
        default: print("ERROR !! please select choice ")
        }//switch ends
    }//if ends
}//whileLoop ends

if userOption == "0" || userOption == "1"   {
    print("""
    ------------------------------------------------------------------
                    SAFE FLIGHT ✈️❤️
            Thank you for using our program
    ------------------------------------------------------------------
    """)
}//if (user inputs = 0 or 1 ) ENDS


var travelersNum : String = "" //Global variable

func travelersNumber(){
    print("please enter how many travelers?")
    if let userInput = readLine(){
        travelersNum = userInput
        if Int (travelersNum) == nil{
            print("ERROR!!")
            travelersNumber()
        } else{
            print("So, you are travelling with \(travelersNum) of your friends ! what a great company 😍")
        }//else ends
        
    } //if ends
}//travelersNum ENDS

func tripTypes(){
    print("""
    Please determine your trip type ✈️ :
    one way trip [1] or round trip [2] ?
    """)
    var userTrip: String = ""
    if let userInput = readLine(){
        userTrip = userInput
        if Int (userTrip) == nil {
            print("ERROR!!")
            tripTypes()
        }else{
            switch userTrip {
            case "1": print("One way trip then 😍")
                userDateInput()
                //   flightDetails()
                break
            case "2": print("Round trip then 😍")
                userDateInput()
                // flightDetails()
                break
                
            default: print("ERROR !! please select choice ")
                tripTypes()
            }//switch ends
        }
        
    }//if ends
}//func tripTypes ENDS

func userDateInput(){
    print("Please enter departure date:")
    print("Day:")
    var deptDay = ""
    var userInput = readLine()!
    deptDay = userInput
    userDeptDate.d == deptDay
    print("Month:")
    var deptMonth = readLine()!
    print("Year:")
    var deptYear = readLine()!
    print("Please enter arrival date:")
    print("Day:")
    var arrDay = readLine()!
    print("Month:")
    var arrMonth = readLine()!
    print("Year:")
    var arrYear = readLine()!
    
    
    userDeptDate.m = deptMonth
    userDeptDate.y = deptYear
    userArrDate.d = arrDay
    userArrDate.m = arrMonth
    userArrDate.y = arrYear
    print("Great 🥰 \(arrDay)")
    
    
    
}//func userDateInput Ends
//
//func flightDetails(){
//    var userDate1 = readLine()
//    userDate1 = userDeptDate.userDateInput()
//
//}//fun ends
