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
var userDeptDate = flightDateInput(d: "", m: "", y: "")
var userArrDate = flightDateInput(d: "", m: "", y: "")

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
                // userDateInput()
                flightDetails()
                break
            case "2": print("Round trip then 😍")
                //  userDateInput()
                flightDetails()
                flightDetails()
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
    let deptDay = readLine()!
    print("Month:")
    let deptMonth = readLine()!
    print("Year:")
    let deptYear = readLine()!
    print("Please enter arrival date:")
    print("Day:")
    let arrDay = readLine()!
    print("Month:")
    let arrMonth = readLine()!
    print("Year:")
    let arrYear = readLine()!
    userDeptDate.d = deptDay
    userDeptDate.m = deptMonth
    userDeptDate.y = deptYear
    userArrDate.d = arrDay
    userArrDate.m = arrMonth
    userArrDate.y = arrYear
}//func userDateInput Ends

func flightDetails(){
    print("Please enter departure date:")
    print("Day:")
    let deptDay = readLine()!
    print("Month:")
    let deptMonth = readLine()!
    print("Year:")
    let deptYear = readLine()!
    print("Please enter arrival date:")
    print("Day:")
    let arrDay = readLine()!
    print("Month:")
    let arrMonth = readLine()!
    print("Year:")
    let arrYear = readLine()!
    userDeptDate.d = deptDay
    userDeptDate.m = deptMonth
    userDeptDate.y = deptYear
    userArrDate.d = arrDay
    userArrDate.m = arrMonth
    userArrDate.y = arrYear
    
    print("Please enter departure city:")
    let depCity = readLine()!
    print("Please enter arrival city:")
    let arrCity = readLine()!
    print("""
      please select available time :
      [1] \(depCity):10:00 -> \(arrCity) : 11:50
      [2] \(depCity):13:00 -> \(arrCity) : 15:50
      [3] \(depCity):15:00 -> \(arrCity) : 17:50
      """)
    let userTimeChoice = readLine()!
    print("Thank you your reservation has been saved ✅ please enter [1] to see Flight details or [0] for starting over? EXIT[9]")
    let userInput = readLine()!
    switch userInput{
    case "1":
        print("""
    ------------------Flight details✈️-----------------------------
    Departure City: \(depCity)
    Departure Day: \(deptDay)
    Departure Month: \(deptMonth)
    Departure Year: \(deptYear)
    letival City: \(arrCity)
    Arrival Day: \(arrDay)
    Arrival Month: \(arrMonth)
    Arrival Year: \(arrYear)
    """)
        if userTimeChoice == "1"{
            print("Flight Time: \(depCity):10:00 -> \(arrCity) : 11:50")
        }else if userTimeChoice == "2"{
            print("Flight Time: \(depCity):13:00 -> \(arrCity) : 15:50")
        }else{
            print("Flight Time: \(depCity):15:00 -> \(arrCity) : 17:50")
        }
    case "0": tripTypes()
    default: break
    }
}//func ends
