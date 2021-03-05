//Квадратное уравнение
 import UIKit

 var a = 3.0
 var b = 13.0
 var c = -10.0
 var x1 = 0.0
 var x2 = 0.0

 var d = pow(b,2)-4*a*c

 if (d<0){
     print ("Корней нет")
 }
 if (d==0){
     x1 = (-b+sqrt(d))/(2*a)
     print (x1)
 }
 if (d>0){
     x1=(-b+sqrt(d))/(2*a)
     x2=(-b-sqrt(d))/(2*a)
     print (x1,x2)
 }


 //Гипотенуза и площадь

 var kat1 = 5.0
 var kat2 = 8.0
 var g = sqrt(pow(kat1,2)+pow(kat2,2))
 print ("Гипотенуза равна = ",g)
 var s = (kat1*kat2)/2
 print ("Площадь равна = ",s)


 //Банковский депозит

 print ("Введите сумму депозита")
 var dep = readLine()
 print ("Введите желаемую сумму процентов")
 var perc = readLine()
 let y = 1
 for y in 1...5{
     print (y)
 }

 //хотел сделать по аналогии с javascript но что-то затупил с условием((
 //начал рыть инфу и в итоге залез в дебри и запутался чуток
 //вот как реализовал условие в javascript:
 // for(var y=1; y <= 5; y++){
 //dep = (dep + ((dep / 100) * perc));
 //total += y + " лет " + dep.toFixed(1) + " рублей\n";
 //}
 //
