class Consultation < ApplicationRecord
  validates_presence_of :subject, :importance, :category, :body, :email, :city, :phone, :last_name, :first_name, :patronymic_name, :age, :gender
  validates :body, length: { in: 10..50000 }
  validates :chronic_diseases, length: { in: 0..50000 }
  validates :contact, length: { in: 0..10000 }
  validates :last_name, :first_name, :patronymic_name, length: { in: 2..20 }

  enum categories: { Альтернативное_мнение: 0, Первичная_консультация: 1, Повторная_консультация: 2,
   Импланатция_или_проверка_ЭКС: 3, Катетерная_деструкция_абляция: 4, Другое: 5 }
  CATEGORIES_LIST = ["Альтернативное_мнение", "Первичная_консультация", "Повторная_консультация",
   "Импланатция_или_проверка_ЭКС", "Катетерная_деструкция_абляция", "Другое"]

  enum importances: { Не_срочно: 0, Нормально: 1, Срочно: 2, Очень_срочно: 3 }
  IMPORTANCES_LIST = ["Не_срочно", "Нормально", "Срочно", "Очень_срочно"]

  enum genders: { Мужской: 0, Женский: 1 }
  GENDERS_LIST = ["Мужской", "Женский"]

end
