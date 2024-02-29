//Структуры
//Представьте, что вы создаете приложение, которое будет отслеживать местоположение. Создайте структуру ‘GPS’ с двумя переменными свойствами, latitute(широта) и longitude(долгота), со значениями по умолчанию 0.0.
//Создайте экземпляр переменной ‘GPS’ с именем ‘somePlace’. Он должен быть инициализирован без предоставления каких-либо значении. Распечатайте широту и долготу ‘somePlace’, которые должны быть равны 0.0 для обоих.
//Измените широту ‘somePlace’ на 51.514004 и долготу на 0.125226, затем распечатайте обновленные значения.
struct GPS {
    var latitude = 0.0
    var longitude = 0.0
}

var somePlace = GPS()
print(somePlace.latitude, somePlace.longitude)

somePlace.latitude = 51.514004
somePlace.longitude = 0.125226

print(somePlace.latitude, somePlace.longitude)

//Представьте, что вы делаете социальное приложение для обмена книгами. Создайте структуру ‘Book’ с четырьмя свойствами: ‘title’ (название), ’author’ (автор), ‘pages’ (страницы) и ‘price’ (цена). Значения по умолчанию для названия и автора должны быть пустой строкой. страницы по умолчанию должны быть равны 0, а цена по умолчанию должна быть равна 0.0.
//Создайте переменную экземпляр Book с именем ‘favoriteBook’ без указания каких-либо значении. Распечатайте название любимой книги. Отражает ли оно в настоящее время название вашей любимой книги? Возможно нет. Измените все четыре свойства ‘favoriteBook’, чтобы они отражали вашу любимую книгу. Затем, используя свойства ’favoriteBook’, распечатайте факты о книге.

struct Book {
    var title = ""
    var author = ""
    var pages = 0
    var price = 0.0
    
    // для 10 задания
    func description () {
        print(title, author, pages, price)
    }
}

var favoriteBook = Book()
print(favoriteBook.title)

favoriteBook.author = "Александр Дюма"
favoriteBook.title = "Граф Монте-Кристо"
favoriteBook.pages = 1088
favoriteBook.price = 4431

print(favoriteBook.author, favoriteBook.title, favoriteBook.pages, favoriteBook.price)

//Ваше приложение для отслеживания фитнеса не было бы хорошим фитнес-трекером, если бы оно не помогало пользователям отслеживать свои тренировки. Чтобы отслеживать пробежку пользователя, вам нужно будет иметь какую-то структуру данных, которая может содержать информацию о тренировке. Для простоты вы сосредоточитесь конкретно на тренировках по бегу.
//Создайте структуру RunningWorkout. Он должен иметь свойства переменных для расстояния(distance), времени(time) и высота подъема(elevation). Все три свойства должны иметь значения по умолчанию 0.0.
//Создайте переменный экземпляр RunningWorkout с именем firstRun без указания каких-либо аргументов. Распечатайте все три свойства при firstRun. Это хороший пример того, когда уместно использовать значения по умолчанию, учитывая, что все тренировки по бегу начинаются с изменения расстояния, времени и высоты, равного 0.
//Теперь представьте, что на протяжении всего забега вы преодолеваете дистанцию в 2396 метров за 15,3 минуты и набираете высоту в 94 метра. Соответствующим образом обновите значения свойств firstrun. Выведите отчет о вашем запуске, используя значения каждого свойства.
struct RunningWorkout {
    var distance = 0.0
    var time = 0.0
    var elevation = 0.0
}

var firstRun = RunningWorkout()
print(firstRun.distance, firstRun.elevation, firstRun.time)

firstRun.distance = 2396
firstRun.time = 15.3
firstRun.elevation = 94
print(firstRun.distance, firstRun.elevation, firstRun.time)

//4. Вы создали структуру GPS со значениями по умолчанию для свойств широты и долготы. Создайте свою структуру GPS снова, но на этот раз не указывайте значения по умолчанию. Оба свойства должны быть типа Double.
//Теперь создайте константный экземпляр GPS с именем someWhere и используйте инициализатор memberwise, чтобы установить широту на 51.514004, а долготу на 0.125226. Выведите значения каждого свойства somePlace.

struct GPS2 {
    var latitude: Double
    var longitude: Double
}

var someWhere = GPS2(latitude: 51.514004, longitude: 0.125226)
print(someWhere.latitude, someWhere.longitude)
//5.  Вы также создали структуру книги со свойствами title, author, pages и price. Создайте эту структуру снова без значений по умолчанию. Присвойте каждому свойству соответствующий тип. Объявите экземпляр favoriteBook и передайте значения вашей любимой книги, используя инициализатор memberwise. Распечатайте информацию о вашей любимой книге, используя свойства favoriteBook.
struct Book2 {
    var title = ""
    var author = ""
    var pages = 0
    var price = 0.0
}

var favouriteBook = Book2(title: "Граф Монте-Кристо", author: "Александр Дюма", pages: 1088, price: 4431)
print(favouriteBook.author, favouriteBook.title, favouriteBook.pages, favouriteBook.price)

//6. Создайте структуру Laptop(ноутбук) с тремя переменными свойствами:  screenSize (размер экрана) типа Int, repairCount типа Int и yearPurchased типа Int. screenSize по умолчанию равен 13, repairCount по умолчанию равно 0, и оставьте yearPurchased без значения по умолчанию. Объявите два экземпляра Laptop, используя два предоставленных инициализатора memberwise.

struct Laptop {
    var screenSize = 13
    var repairCount = 0
    var yearPurchased: Int
}

var firstLaptop = Laptop(screenSize: 16, repairCount: 0, yearPurchased: 2020)
var secondLaptop = Laptop(screenSize: 13, repairCount: 1, yearPurchased: 2018)

//7. Создайте структуру Height с двумя переменными свойствами, heightInInches и heightInCentimeters. Оба должны быть типа Double.
//Создайте два инициализатора. Один инициализатор примет Double, который представляет высоту в дюймах. Другой инициализатор примет Double, который представляет высоту в сантиметрах. Каждый инициализатор должен принимать переданное значение и использовать его для установки свойства, соответствующего переданной единице измерения. Затем он должен установить другое свойство, вычислив правильное значение из переданного значения. Подсказка: 1 дюйм = 2,54 сантиметра.
//Например: Если вы используете инициализатор для дюймов, чтобы передать высоту 65, инициализатор должен установить heightInInches равной 65, а heightInCentimeters - 165,1.
//Теперь создайте переменный экземпляр Height с именем someonesHeight. Используйте инициализатор для дюймов, чтобы установить высоту равной 65. Распечатайте значение высоты в сантиметрах и убедитесь, что оно равно 165,1.
//Теперь создайте переменный экземпляр Height с именем myHeight и инициализируйте его своим собственным height. Убедитесь, что оба параметра -heightInInches и heightInCentimeters - являются точными.

struct Height1 {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    init(inches: Double) {
        heightInInches  = inches
        heightInCentimeters = inches * 2.54
    }
    
    init(centimeters: Double) {
        heightInInches = centimeters / 2.54
        heightInCentimeters = centimeters
    }
}

var someonesHeight = Height1(inches: 65)
print(someonesHeight.heightInCentimeters)

var myHeight = Height1(centimeters: 175)
print(myHeight.heightInInches) // 175/2.54 = 68.8976


//8. Для большинства приложений вам потребуется структура данных для хранения информации о пользователе. Создайте пользовательскую структуру, которая имеет свойства для получения основной информации о пользователе. Добавьте свойства name (имя пользователя), age (возраст), height (рост), weight (вес) и activityLevel (уровень активности). name- String, age  - значением Int, weight и height - типом Double, а activityLevel - значением Int, которое будет представлять оценку 1-10 того, насколько они активны.
//Создайте переменный экземпляр User и назовите его своим именем. Используйте инициализатор memberwise для передачи информации о себе. Затем распечатайте ваш экземпляр.

struct User {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: Int
}

var yuliya = User(name: "Yuliya", age: 25, height: 175, weight: 62, activityLevel: 6)
print(yuliya.name, yuliya.age, yuliya.height, yuliya.weight, yuliya.activityLevel)

//9. В предыдущих упражнениях вы работали с расстоянием в примере приложения для отслеживания фитнеса в виде простого числа. Однако расстояние может быть представлено с использованием различных единиц измерения. Создайте структуру Distance, которая будет представлять расстояние в различных единицах измерения. Как минимум, у него должно быть свойство meters и свойство feet. Создайте инициализатор, соответствующий каждому свойству (т.е. если у вас есть только два свойства для метров и футов, тогда у вас будет два инициализатора), которые будут принимать расстояние в одной единице измерения и присваивать правильное значение обеим единицам измерений. Подсказка: 1 метр = 3,28084 фута.
//Например: Если вы используете инициализатор для метров и установите расстояние 1600, инициализатор должен установить значение метров равным 1600, а футов - 5249,344.
//Теперь создайте экземпляр Distance с именем mile. Используйте инициализатор для метров, чтобы установить расстояние равным 1600. Распечатайте значение параметра для футов и убедитесь, что оно равно 5249,344.
//Теперь создайте другой экземпляр Distance и задайте ему какое-нибудь другое расстояние. Убедитесь, что оба свойства установлены правильно.

struct Distance {
    var meters: Double
    var feet: Double
    
    init(inMeters: Double) {
        meters = inMeters
        feet = inMeters * 3.28084
    }
    
    init(inFeet: Double) {
        meters = inFeet / 3.28084
        feet = inFeet
    }
}

var mile = Distance(inMeters:1600)
print(mile.feet)

var distance = Distance(inFeet: 5236.123)
print(distance.meters) // 5236.123 / 3.28084 = 1595.9702


//10. У вас уже есть структура Book, добавьте туда метод с именем description, который будет выводить факты о книге. Затем создайте экземпляр Book и вызовите этот метод для этого экземпляра.
var newBook = Book(title: "Ведьмак", author: "Анджей Сапковский", pages: 1344, price: 13200)
newBook.description()

//11. Ниже для вас была создана структура Poste, представляющая собой обычную публикацию в социальных сетях. Добавьте изменяющий метод к сообщению с именем like, который увеличит количество лайков на единицу. Затем создайте экземпляр Post и вызовите для него функцию like(). Распечатайте свойство likes до и после вызова метода, чтобы увидеть, было ли увеличено значение или нет.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        likes += 1
    }
}

var newPost = Post(message: "hello!", likes: 23, numberOfComments: 2)

print(newPost.likes)
newPost.like()
print(newPost.likes)

//12. Ниже для вас была создана структура RunningWorkout. Добавьте метод для выполнения тренировки под названием postWorkoutStats, который выводит подробную информацию о пробежке. Затем создайте экземпляр RunningWorkout и вызовите функцию postWorkoutStats().

struct RunningWorkout2 {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats() {
        print(distance, time, elevation)
    }
}

var firstWorkout = RunningWorkout2(distance: 15.4, time: 2.2, elevation: 68)
firstWorkout.postWorkoutStats()

//13. Ниже для вас была создана структура Steps, представляющая данные отслеживания шагов за день. В нем указано целевое количество шагов на день и количество шагов, сделанных на данный момент. Создайте метод для шагов с именем takeStep(), который увеличивает значение шагов на единицу. Затем создайте экземпляр Steps и вызовите takeStep(). Выведите значение экземпляра свойства steps до и после вызова метода.
struct Steps {
    var steps: Int
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var todaySteps = Steps(steps: 7823, goal: 10000)
print(todaySteps.steps)
todaySteps.takeStep()
print(todaySteps.steps)



//14. Создайте структуру Rectangle, который имеет два свойства: width(ширина) и height(высоты). Добавьте вычисляемое свойство, которое вычисляет площадь прямоугольника (т.е. ширину * высоту). Создайте экземпляр Rectangle и выведите свойство area.

struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {
        return width * height
    }
}
 var rectangle = Rectangle(width: 17, height: 19)
print(rectangle.area)


//15. В приведенной ниже структуре Height высота представлена как в дюймах, так и в сантиметрах. Однако, если значение heightInInches изменено, то значения heightInCentimeters также должны быть скорректированы в соответствии с ним. Добавьте didSet к каждому свойству, которое будет проверять, соответствует ли другое свойство тому, каким оно должно быть, и, если нет, устанавливает правильное значение.
//Создайте экземпляр Height, а затем измените одно из его свойств. Распечатайте другое свойство, чтобы убедиться, что оно было скорректировано соответствующим образом.

struct Height {
    var heightInInches: Double {
        didSet {
            heightInCentimeters = heightInInches*2.54
        }
    }
    
    var heightInCentimeters: Double {
        didSet {
            heightInInches = heightInCentimeters/2.54
        }
    }
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches*2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters/2.54
    }
    
    
}

var height = Height(heightInCentimeters: 200)
print(height.heightInInches) // 200/2.54 = 78.74





//16. Приведенная ниже структура RunningWorkout содержит информацию о беговых тренировках ваших пользователей. Однако вы решаете добавить информацию о среднем времени прохождения мили. Добавьте вычисляемое свойство под названием averageMileTime, которое использует расстояние и время для вычисления среднего времени прохождения мили пользователем. Предположим, что расстояние указано в метрах, а 1600 метров - это миля.
//Создайте экземпляр Running Workout и распечатайте свойство среднего времени прохождения мили. Убедитесь, что он работает правильно.
struct RunningWorkout3 {
    var distance: Double
    var time: Double
    var elevation: Double
    
    var averageMileTime: Double {
        return distance / 1600
    }
}

var runningWorkout = RunningWorkout3(distance: 4300, time: 54, elevation: 36)
print(runningWorkout.averageMileTime) // 4300/1600 = 2.6875

//В приведенной ниже структуре Steps добавьте willSet к свойству steps, которое будет проверять, равно ли новое значение цели, и, если это так, печатает поздравительное сообщение. Создайте экземпляр Steps, где steps равно 9999, а goal - 10000, затем вызовите takeStep() и посмотрите, напечатано ли ваше сообщение на консоли.
struct Steps2 {
    var steps: Int {
        willSet(newSteps) {
            if newSteps == goal {
                print("Congratulations. You have reached goal")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var mySteps = Steps2(steps: 9999, goal: 10000)
mySteps.takeStep()


//17. Представьте, что у вас есть приложение, которое требует от пользователя входа в систему. У вас может быть пользовательская структура, аналогичная показанной ниже. Однако, в дополнение к отслеживанию конкретной пользовательской информации, вам может понадобиться способ узнать, кто является текущим пользователем, вошедшим в систему.
//Создайте свойство currentUser в приведенной ниже структуре и назначьте его как User и заполните его вашими данными. Теперь вы можете получить доступ к текущему пользователю через структуру User. Распечатайте свойства текущего пользователя.
struct User2 {
        
    var userName: String
    var email: String
    var age: Int
    
    static var currentUser = User2(userName: "june", email: "june@io", age: 20)
    
    static func logIn(user: User2) {
        currentUser = user
        print("\(currentUser.userName) has logged in")
    }
}
        
print(User2.currentUser.userName, User2.currentUser.email, User2.currentUser.age)
//Существуют другие свойства и действия, связанные с пользовательской структурой, которые могут быть хорошими кандидатами для свойства типа или метода. Одним из них может быть способ входа в систему. Вернитесь назад и создайте метод типа с именем logIn(user:), где пользователь имеет тип User. В теле метода присвойте переданному пользователю свойство сurrentUser и распечатайте "\(currentUser.userName) вошел в систему."
//Ниже вызовите метод logIn(user:) и передайте другой экземпляр пользователя, отличный от того, который вы назначили текущему пользователю выше. Обратите внимание на распечатку в консоли.

var newUser = User2(userName: "bill", email: "bill11@io", age: 20)
User2.logIn(user: newUser)
