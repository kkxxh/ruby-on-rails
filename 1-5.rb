#attribute_accessor
#attr_accessor
#object의 정보를 읽을 수 있어야하고(reader), 쓸 수 있어야한다(writer)

class Person   
    def initialize(name,age)
        @name = name
        @age = age
    end

    def name #reader
        @name
    end

    def name=(value) #writer
        @name = value
    end

    def age #reader
        @age
    end

    def age=(value)#writer
        @age=value
    end
end

#attr_reader : read 할 수 있게 해줌
#attr_writer : write 할 수 있게 해줌

class Person2
    attr_reader :name , :age
    #person.name으로 정보 read 할 수 있게 해줌
    attr_writer :name , :age
    #person.age = 22와 같이 정보를 write할 수 있게 해줌

    def initialize(name,age)
        @name = name
        @age = age
    end
end

p2 = Person2.new("kkxxh", 24)
puts p2.name
puts p2.age

#attr_reader만 쓰면 정보를 다시 쓸 수 없음

class Person3
    attr_accessor :name, :age #attr_accessor은 attr_reader와 attr_writer을 합친것

    def initialize(name,age)
        @name = name
        @age = age
    end
end

p3 = Person.new("elsa",23)
puts p3.name # name # reader
puts p3.age

p3.name = "엘사" #name = (value) # writer
p3.age = 20 
puts p3.name
puts p3.age