# ClosureDemo

# First Closure Call

myClosure(param: "Kalidoss") { (message, status) in
  if status {
    print("Response:", message)
  }else{
    print("Failure")
  }

}


# Second Closure Call


closureDemo(datas: ["Kali","Doss"]) { (stringArray) in
  print("\n String array --> :", stringArray)
}

