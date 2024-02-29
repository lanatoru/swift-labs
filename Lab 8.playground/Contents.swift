//1. Данные упражнения основаны на игре, в которой космический корабль избегает
//препятствий в космосе. Корабль находится внизу и может перемещаться только
//влево и вправо, а препятствия "падают" сверху вниз. В течение упражнений вы
//создадите классы, которые представляют различные типы космических кораблей,
//которые могут использоваться в игре.
//
//Первым шагом необходимо создать класс 'Spaceship' с тремя свойствами: 'name',
//'health' и 'position'. По умолчанию значение 'name' должно быть пустой строкой, а
//'health' должен быть равен 0. Положение корабля будет представлено целым
//числом, где отрицательные числа помещают корабль дальше влево, а
//положительные числа - дальше вправо. Значение по умолчанию для 'position'
//должно быть 0.

class Spaceship {
    var name = ""
    var health = 0
    var position = 0
    
    init(name: String, health: Int, position: Int) {
        self.name = name
        self.health = health
        self.position = position
    }
    
    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Извините, ваш корабль был сбит слишком много раз. Хотите сыграть еще раз?")
        }
    }
}

//Создайте константу с названием 'falcon' и сделайте ее экземпляром класса
//'Spaceship'. После установите name на "Falcon".

//let falcon = Spaceship()
//falcon.name = "Falcon"
let  falcon = Spaceship(name: "Falcon", health: 7, position: 5)


//Вернитесь и добавьте классу 'Spaceship' метод 'moveLeft()'. Этот метод должен
//сдвинуть корабль на одну позицию влево. Добавьте такой же метод с именем
//'moveRight()', который будет сдвигать корабль на одну позицию вправо. После
//того, как эти методы будут созданы, используйте их, чтобы сдвинуть корабль
//'falcon’ дважды влево и один раз вправо. Выведите в консоль новое положение
//корабля falcon после каждого изменения позиции.

falcon.moveLeft()
print(falcon.position)
falcon.moveLeft()
print(falcon.position)
falcon.moveRight()
print(falcon.position)

//Последнее, что нужно классу 'Spaceship' это добавить метод для обработки
//ситуации, когда корабль попадает под удар. Вернитесь и добавьте метод 'wasHit()' к
//Spaceship. Этот метод должен уменьшать здоровье корабля на 5, а затем, если
//здоровье меньше или равно 0, печатать "Извините, ваш корабль был сбит слишком
//много раз. Хотите сыграть еще раз?". Как только этот метод будет создан, вызовите
//его для falcon и напечатайте значение здоровья корабля.

falcon.wasHit()
print(falcon.health)


//2. Создайте новый класс 'Fighter', который наследуется от класса 'Spaceship'. Добавьте
//переменное свойство 'weapon', значение по умолчанию которого является пустой
//строкой, и переменное свойство 'remainingFirePower', значение по умолчанию
//которого равно 5.

class Fighter: Spaceship {
    var weapon: String
    var remainingFirePower = 5
    
    init(weapon: String, remainingFirePower: Int, name: String, health: Int, position: Int) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("У вас больше нет оружейной мощности")
        }
    }
}
//Создайте новый экземпляр класса Fighter с именем 'destroyer'. 'destroyer' сможет
//стрелять по приближающимся объектам, чтобы избежать столкновений с ними.
//После присвойте 'weapon' значение "лазер" и 'remainingFirePower' значение 10.
//Обратите внимание, что поскольку класс Fighter наследуется от Spaceship, он также
//имеет свойства как 'name', 'health' и 'position', а также методы для 'moveLeft()',
//'moveRight()' и 'wasHit()', хотя вы не добавляли их в класс Fighter. Зная это,
//установите 'name' значение "Destroyer", напечатайте 'position', затем вызовите
//'moveRight()' и снова напечатайте 'position'.

//var destroyer = Fighter()
//destroyer.weapon = "Laser"
//destroyer.remainingFirePower = 10
//destroyer.name = "Destroyer"

var destroyer = Fighter(weapon: "Laser", remainingFirePower: 10, name: "Destroyer", health: 11, position: 3)
print(destroyer.position)
destroyer.moveRight()
print(destroyer.position)

//Попытайтесь распечатать 'weapon' на falcon. Почему это не работает? Ответьте на
//этот вопрос в виде комментарии или по команде print ниже и удалите любой код,
//который не компилируется.
print("falcon обладает свойствами базового класса Spaceship, не имея доступа к свойствами подклассов Spaceship")


//Добавьте метод к классу Fighter с названием 'fire()'. Этот метод должен проверять,
//является ли значение 'remainingFirePower' больше нуля, и если это так, то должен
//уменьшать 'remainingFirePower' на единицу, а если 'remainingFirePower' меньше
//нуля, выведите на экран сообщение "У вас больше нет оружейной мощности".
//Вызовите метод 'fire()' на экземпляре ‘destroyer’ несколько раз и после каждого
//вызова метода напечатайте значение 'remainingFirePower'.

destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)


//3. Определите новый класс ShieldedShip, который наследуется от Fighter. Добавьте
//туда свойство shieldStrength со значением по умолчанию 25. Создайте новый
//экземпляр ShieldedShip под названием 'defender’. Установите 'name' на "Defender",
//'weapon' на "Cannon". Вызовите 'moveRight()' и распечатайте позицию, затем
//вызовите 'fire()' и распечатайте 'remainingFirePower'.

class ShieldedShip: Fighter {
    var shieldStrength = 25
    
    init(shieldStrength: Int, weapon: String, remainingFirePower: Int, name: String, health: Int, position: Int ) {
        self.shieldStrength = shieldStrength
        super.init(weapon: weapon, remainingFirePower: remainingFirePower, name: name, health: health, position: position)
    }
    
    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
}

//var defender = ShieldedShip()
//defender.name = "Defender"
//defender.weapon = "Cannon"

var defender = ShieldedShip(shieldStrength: 23, weapon: "Cannon", remainingFirePower: 14, name: "Defender", health: 9, position: 1)

defender.moveRight()
print(defender.position)
defender.fire()
print(defender.remainingFirePower)

//Вернитесь к вашему классу ShieldedShip и переопределите метод wasHit(). Теперь
//этот метод должен проверять, больше ли 'shieldStrength' нуля. Если да, уменьшите
//shieldStrength на 5. В противном случае уменьшите 'health' на 5. Вызовите метод
//'wasHit()' на 'defender' и выведите значения 'shieldStrength' и 'health'.
//Когда 'shieldStrength' равнен 0, метод 'wasHit()' просто уменьшает значение 'health'
//на 5. Точно это же и делает метод 'wasHit()' в классе Spaceship! Вместо того чтобы
//переписывать его, можно было вызвать метод в суперклассе. Вернитесь к вашему
//методу 'wasHit()' в классе ShieldedShip и удалите код, где вы уменьшаете значение
//health на 5, заменив его вызовом метода в суперклассе. Вызовите метод 'wasHit()' на
//'defender', затем выведите значения 'shieldStrength' и 'health'.

defender.wasHit()
print(defender.shieldStrength)
print(defender.health)




//4. Заметьте, что каждый класс ниже имеет ошибку, которая говорит "Class has no
//initializers". В отличие от структур, классы не имеют инициализаторов по
//умолчанию. Вы можете избавиться от ошибки, предоставив значения по
//умолчанию для всех свойств как мы делали ранее, но лучше написать собственный
//инициализатор, это общепринятая и лучшая практика.
//
//
//
//Перейдите к классу Spaceship и добавьте инициализатор, который принимает значение для каждого свойства Spaceship и устанавливает свойства соответственно.
//
//
//Теперь создайте экземпляр для Spaceship ниже, назвав его falcon. Затем задайте все
//параметры. Название корабля должно быть "Falcon", а остальное на ваш выбор.
//Написание инициализаторов для подклассов может быть чутка сложным. Но нужно
//просто знать что мы пишем свои инициализаторы когда у свойств класса нет значении по умолчанию. А инициализация это просто подготовительный процесс экземпляра класса и т.д. для дальнейшего использования. Еще ваш инициализатор должен не только установить свойства, объявленные в подклассе, но также установить все
//неинициализированные свойства классов, от которых он наследуется.
//Перейдите к классу Fighter и напишите инициализатор, который принимает значения для каждого свойства Fighter и для каждого свойства Spaceship. Установите свойства
//соответственно. (Подсказка: инициализация свойств суперкласса выполняется с помощью super.init после того, как инициализируете все свойства подкласса).
//
//
//
//Суперкласс - это класс, от которого другой класс наследует свойства и методы
//
//Затем создайте экземпляр Fighter ниже под названием ‘destroyer’. Заполните все
//параметры. Имя корабля должно быть "Destroyer".
//Теперь точно так же и к классу ShieldedShip напишите инициализатор. Не забудьте, что
//свойства класса Fighter мы инициализируем с помощью super.init.
//
//
//
//Дальше нужно создать константу 'sameShip’ и установить ее равной константе ‘falcon’
//которую мы создавали до этого. Выведите на консоль позицию(position) ‘sameShip’ и
//‘falcon’, затем вызовите moveLeft() на sameShip и снова выведите позицию sameShip и
//falcon. Изменились ли обе позиции? Почему? Если мы использовали структуры вместо
//классов, было бы то же самое? Предоставьте ваш ответ как комментарии или через
//оператор print ниже.
//
let sameShip = falcon
print(sameShip.position)
print(falcon.position)

sameShip.moveLeft()
print(sameShip.position)
print(falcon.position)
print("Обе позиции изменились, поскольку классы являются ссылочным типом и при инициализации эти константы стали тождественны. При использовании структур значения констант были бы разными, поскольку являлись бы разными экземплярами, а в данном случае они ссылаются на один. ")
