class Question < ApplicationRecord
  validates_presence_of :category, :body, :email, :city, :phone, :age, :gender, :last_name, :first_name, :patronymic_name
  validates :body, length: { in: 10..50000 }
  validates :chronic_diseases, length: { in: 0..50000 }
  validates :contact, length: { in: 0..10000 }
  validates :last_name, :first_name, :patronymic_name, length: { in: 2..20 }

  enum categories: { Аритмия: 0, Тахикардия: 1, Брадикардия: 2, Экстрасистолия: 3, Электрокардиостимулятор: 4, Катетерная_деструкция_абляция: 5, Мерцательная_аритмия: 6,
   Ишемическая_болезнь_сердца: 7, Порок_сердца: 8, Другое: 9}
  CATEGORIES_LIST = ["Аритмия", "Тахикардия", "Брадикардия", "Экстрасистолия", "Электрокардиостимулятор", "Катетерная деструкция/абляция",
   "Мерцательная аритмия", "Ишемическая болезнь сердца", "Порок сердца", "Другое"]

  enum genders: { Мужской: 0, Женский: 1 }
  GENDERS_LIST = ["Мужской", "Женский"]

end
