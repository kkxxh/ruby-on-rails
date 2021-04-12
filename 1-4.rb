#private, public

=begin
public : 이름, 나이, 성별, 취미 등 공개해도 되는 정보

private 
: 주민등록번호, 계좌번호, 비밀번호, 학번, 수험번호 등 공개하면 안되는 정보
object 밖에서 접근할 수 없음

=end

class Person
    def initialize(name,age)
        @name = name
        @age = age
    end

    public #외부에서 접근 가능
    def run 
        "#{@age}살의 #{@name}가 달립니다"
    end

    def check_password(password)
        if password == your_password
            puts "성공적으로 로그인하셨습니다!"
        else
            puts "비밀번호가 틀렸습니다"
        end
    end

    private #외부에서 접근할 수 없음
    def your_password
        @password = "123456" #인스턴스 변수 password
    end
end

p = Person.new("kkxxh", 24)
puts p.run
# puts p.your_password #your_password가 private으로 지정되면 오류 발생 (NoMethodError)
# #1-4.rb:27:in `<main>': private method `your_password' called for #<Person:0x00007f83ef897dd8 @name="kkxxh", @age=24> (NoMethodError)
puts p.check_password("12345")
puts p.check_password("123456")