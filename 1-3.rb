#상속
#Object를 만들 때 장점 - 재활용 & 중복의 제거

class Person 
    @@person_count = 0

    def initialize(name)
        @name = name
        @@person_count += 1
    end

    def run
        puts "#{@name}가(이) 달립니다"
    end

    def self.number_of_instance
        puts "#{@person_count}명의 사람이 생성되었습니다!"
    end
end


class SoccerMan < Person #Person이라는 클래스 상속
    def kick
        puts "#{@name}가(이) 축구공을 찼습니다"
    end

    def run #run 메소드 재정의
        #puts "#{@name}가(이) 달립니다" 를 추가하고 싶으면 super 사용
        super #run이라는 원래 메소드를 물려받고 추가적으로 정의를 할 경우 사용
        puts "#{@name}가(이) 수비수를 제치고 달립니다"
    end
    
end

class BasketBallMan < Person #Person이라는 클래스 상속
    def shot
        puts "#{@name}가(이) 농구공을 던졌습니다"
    end

    def run #run 메소드 재정의
        super
        puts "#{@name}가(이) 농구공을 드리블 하며 달립니다"
    end
end

ronaldo = SoccerMan.new("호날두")
ronaldo.run #Person클래스를 상속받았으므로 run 함수 사용 가능
ronaldo.kick
#ronaldo.shot #오류 발생

jordan = BasketBallMan.new("조던")
jordan.run
jordan.shot


#상속받기 + 기능추가하기 : 꼭 덮어쓰지 않음 -> super

#두 개 이상의 상속은 불가능
#class Student < SoccerMan ; end
#class Student < BasketBallMan ; end

#두 개 이상의 상속을 하고 싶을 경우 -> Mix in