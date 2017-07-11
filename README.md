# ClosureDemo

//MARK: First Closure Call
myClosure(param: "Kalidoss") { (message, status) in
if status {
print("Response:", message)
}else{
print("Failure")
}

}


//MARK: Second Closure Call
closureDemo(datas: ["Kali","Doss"]) { (stringArray) in
print("\n String array --> :", stringArray)
}

