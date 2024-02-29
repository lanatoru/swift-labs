//Задание 1
//1.1 Создайте цикл for-in, который принимает значения от 1 до 100 и печатает каждое из них.

import Foundation
for index in 1...100 {
    print(index)
}
//1.2 Создайте константу alphabet, который равен "ABCDEFGHIJKLMNOPQRSTUVWXYZ". Напечатайте каждую букву с его индексом.
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
for(i,letter) in alphabet.enumerated() {
    print("\(i) - \(letter)")
}
//1.3 Создайте словарь [String: String], где ключи - это названия стран, а значения - их столицы. Включите как минимум три пары ключ/значение в свою коллекцию, затем используйте цикл for-in, чтобы перебрать пары и вывести ключи и значения в предложении.
//(Например: “Столица Казахстана - Астана”)

var countries = ["Казахстан": "Астана", "Кыргызстан": "Бишкек", "Россия": "Москва"]
// tuple(кортеж)
for(state, capital) in countries {
    print("Столица \(state) -  \(capital)")
}


//Задание 2
//Предположим, что ваше приложение содержит список различных упражнении, которые можно отслеживать. Вы хотите отобразить каждый элемент списка пользователю. Используйте цикл for-in, чтобы пройти по упражнениям ниже и распечатать каждое упражнение.
let movements: [String] = ["Walking", "Running", "Swimming", "Cycling", "Skiing", "Climbing"]
for movement in movements {
    print(movement)
}
//Теперь предположим, что ваше приложение использует словарь, чтобы отслеживать средний пульс во время каждого из движений в movements. Ключи соответствуют движениям, перечисленным выше, а значения соответствуют среднему пульсу. Циклом for-in переберите и печатайте сообщения, сообщающие пользователю его/её средний пульс во время каждого упражнения.
var movementHeartRates: [String: Int] = ["Walking": 80, "Running": 120, "Swimming": 135, "Cycling": 128, "Skiing": 114, "Climbing": 129]
for(movement, heartRate) in movementHeartRates {
    print("Ваш средний пульс во время \(movement) равен \(heartRate)")
}

//Задание 3
//Создайте цикл while, который имитирует бросание кубика с шестью гранями до тех пор, пока не выпадет единица. После каждого броска распечатайте значение. (Подсказка: используйте Int.random(in: 1...6), чтобы сгенерировать случайное число от 1 до 6).
var number: Int
while true {
    number = Int.random(in: 1...6)
    print(number)
    if number == 1 {
        break
    }
}


//Задание 4
//Вам может понадобиться помощь вашего приложения для отслеживания фитнеса, чтобы помочь бегунам отслеживать и улучшать свой темп. Беговой темп - это количество шагов, которое бегун делает за минуту. Чтобы помочь с этим, вы решаете разрешить пользователю вводить частоту, после чего ваше приложение будет воспроизводить звук с каждым интервалом, необходимым для выполнения следующего шага.
//Для этого создайте константу ‘cadence’ (частота бега) и переменную ‘testSteps’. Используйте цикл while, чтобы вывести "Сделайте шаг" на консоль 10 раз. После того, как вы успешно напечатаете "Сделайте шаг" в консоли 10 раз, добавьте следующий код в конец вашего цикла while: Thread.sleep(forTimeInterval: 60/’частота бега’). Это приведет к паузе между каждой итерацией цикла while, так что инструкции print действительно будут выполняться в нужном темпе.
//Воссоздайте приведенный выше пример частоты бега, используя цикл repeat-while.

let cadence = 100.0
var testSteps = 0

while testSteps < 10 {
    print("Сделайте шаг")
    testSteps += 1
    Thread.sleep(forTimeInterval: 60/cadence)
}

print("Repeat-while cycle")

repeat {
    print("Сделайте шаг")
    testSteps += 1
    
    Thread.sleep(forTimeInterval: 60/cadence)
} while testSteps < 10

//Задание 5
//Создайте словарь [String: String], где ключами являются названия городов, а значениями - их заглавные буквы (например Almaty: Ala ). Включите в свою коллекцию по крайней мере 4 пары ключ/ значение, причем одна из них является вашим родным городом. Затем пройдитесь по этому словарю снова, печатая ключи и значения в предложении, но добавьте оператор if, который будет проверять, является ли текущая итерация вашим родным городом. Если это так, напечатайте ("Я нашел свой город!") и выйдите из цикла.
var cities = ["Almaty": "ALA", "Taraz": "TRZ", "Astana": "AST", "Semei": "SEM"]

for(city, naming) in cities {
    print("\(city) - \(naming)")
    
    if naming == "TRZ" {
        print("Я нашел свой город! \(city)")
        break
    }
}


//Задание 6
//Вы решаете, что хотите, чтобы пользователи вашего приложения могли вводить диапазон сердечного ритма, который они хотели бы достичь, и затем вы хотите, чтобы приложение предлагало упражнения, при выполнении которых в прошлом пользователь достигал этого диапазона сердечного ритма. Словарь movementHeartRates ниже содержит ключи, соответствующие движениям, которые приложение отслеживает, и значения, соответствующие среднему сердечному ритму пользователя, который ваш фитнес-трекер исторически мониторил во время выполнения данного упражнении.
//Пройдитесь по словарю movementHeartRates ниже и если сердечный ритм не попадает в диапазон между lowHR и highHR, продолжайте переходить к следующему движению и сердечному ритму. В противном случае, напечатайте "Вы могли бы сделать <ВСТАВЬТЕ ЗДЕСЬ ДВИЖЕНИЕ>".

let lowHR = 90
let highHR = 130
//var movementHeartRates: [String: Int] = ["Walking": 80, "Running": 120, "Swimming": 135, "Cycling": 128, "Skiing": 114, "Climbing": 129] - есть выше во втором задании

for(exercise, rate) in movementHeartRates {
    if rate >= lowHR && rate <= highHR {
        print("Вы могли бы сделать \(exercise)")
    }
}

//Задание 7
//Создайте константу text равную тексту - "Столица Казахстана - Астана". Посчитайте и выведите количество буквы "а" в тексте.
//

let text = "Столица Казахстана - Астана"
var n = 0
for char in text.lowercased() {
    if char == "а" {
        n += 1
    }
}
print(n)

//Задание 8
//Создайте константу array равную [0, 1, 2, 3, 4, 1, 5, 6, 2, 1]. Посчитайте и выведите количество цифры 1 в массиве.

let array = [0, 1, 2, 3, 4, 1, 5, 6, 2, 1]
var index = 0
for num in array {
    if num == 1 {
        index += 1
    }
}
print(index)