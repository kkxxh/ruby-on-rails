#ruby로 작성하면 rails가 sql로 번역해준다

#Object - Relational Mappers
#rails에서 사용한 ORM 프레임워크를 Active Record

=begin
SQL (Structured Query Languae)
데이터 베이스와 작업을 하고 싶을 때 쓰는 언어
SQL DB는 관계형(relational)DB
ex )PostgresSQL, MySQL등도 모두 관계형 데이터베이스
=end

=begin
(SQL)
SELECT * FROM users WHERE name= "kkxxh" ORDER_BY created at
(RAILS ORM)
User.where(name:"kkxxh").order("created_at")
=end

=begin
#application_record.rb
class ApplicationRecord <ActiveRecord::Base
    self.abstract_class = true
end

#user.rb
class User < ApplicationRecord
=end