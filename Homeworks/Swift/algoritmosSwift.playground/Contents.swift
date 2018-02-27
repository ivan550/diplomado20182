//: Algoritmos en Swift

import UIKit
/* Dice si el número es primo o no */
func primeNumbers(_ numero: Int){
    var result:Bool = true
    for i in 2 ..< numero-1 {
        if numero%i == 0{
            result=false
        }
    }
    if(result){
        return print("Es primo")
    }
    return print("No es primo")
}

/* Serie de fibonnaci*/
func fibonacci(_ n: Int) {
    var num1 = 0
    var num2 = 1
    
    for _ in 2...n {
        let num = num1 + num2
        num1 = num2
        num2 = num
        print(num2, terminator:",")
    }
}

/* Palabras palíndromo */
func palindromo(_ str:inout String){
    let strReversed = str.replacingOccurrences(of: " ", with: "").lowercased()
    str = str.replacingOccurrences(of: " ", with: "").lowercased()
    
    if str == String(strReversed.reversed()){
        return  print("Es palindromo")
    }
    return print("No es palíndromo")
}
/* Comparar cadena */
func compareString(_ cadena2: String, _ cadena1:String)-> Bool{
    if cadena1.count != cadena2.count{
        print("No Coinciden")
        return false
    }
    for char in cadena1{
        if let i = cadena2.index(of: char) {
            
        }else{
            print("No Coinciden")
            return false
        }
    }
    print("\nCoinciden")
    return true
    
}
var palabra="Anita lava la tina"

primeNumbers(3)
fibonacci(10)
compareString("opla","alop")
palindromo(&palabra)




