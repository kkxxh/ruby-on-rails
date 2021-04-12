
#String은 클래스
word = String.new('insome')#'insome'이라는이름을 가진 문자열이 인스턴스로 생성
word2 = String.new('nia')

puts word
puts word2

# .reverse :문자열을 뒤집는 함수
puts word.reverse
puts word2.reverse






class Person
    @@person_count = 0 #클래스 변수

    def initialize(name) #초기화함수(필수, 생성자)
        @name = name
        #puts name
        @@person_count += 1
    end
#     #initialize함수가 없다면 오류 발생
# '''
# Traceback (most recent call last):
#         2: from 1-2.rb:22:in <main>'
#         1: from 1-2.rb:22:in `new'
# 1-2.rb:22:in `initialize': wrong number of arguments (given 1, expected 0) (ArgumentError)
# '''   
    def run
        #puts "#{name} is running" #인스턴스 변수(@)로 고쳐서 오류 해결
        puts "#{@name} is running"
    end

    def self.number_of_instance #앞의 self를 입력하지 않으면 오류 발생
        puts "#{@@person_count}명의 사람이 생성되었습니다!"
    end

end

Person.number_of_instance

person = Person.new("chanha")
person.run

Person.number_of_instance

person2 = Person.new("kkxxh")
person2.run

Person.number_of_instance

# 지역 변수 오류. initialize 함수의 name과 run함수의 name이 매칭되지 않음 -> 인스턴스 변수(@)로 고쳐서 오류 해결
# '''
# Traceback (most recent call last):
#         1: from 1-2.rb:29:in `<main>'
# 1-2.rb:24:in `run': undefined local variable or method `name' for #<Person:0x00007f8586887a80> (NameError)
# '''

#인스턴스 변수(@)
#인스턴스안에 소속된 모든 메소드안에서 활용 가능한 변수(메소드 밖에서는 사용 불가)


#클래스 변수(@@)
#클래스 안 전체에서 사용 가능한 변수 인스턴스 변수의 범위를 포함한다(메소드 밖에서도 사용 가능)
