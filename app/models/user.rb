class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	  mount_uploader :photo, PhotoUploader

	  validates_presence_of :name, message: ": Pole \"Imię i nazwisko\" nie może być puste"
	  validates :name, format: { with: /[A-Z]\p{L}{1,} [A-Z]\p{L}{1,}/, message: ": W polu \"Imię i nazwisko\" należy wpisać imię
	  i nazwisko oddzielone spacją, zaczynające się od wielkich liter"}
	  validates_presence_of :email, messsage: ": Pole \"E-mail\" nie może być puste"
end
