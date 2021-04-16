class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

      t.string :title #title이라는 값은 string으로 받음
      t.text :content #content라는 값은 text로 받음 

      t.timestamps #시간 관련된 정보
    end
  end
end
