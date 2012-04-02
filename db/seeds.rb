# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

[
	"Aguascalientes", 
	"Baja California Norte", 
	"Baja California Sur", 
	"Campeche", 
	"Coahuila", 
	"Chiapas", 
	"Chihuahua", 
	"Distrito Federal", 
	"Durango", 
	"Estado de México", 
	"Guanajuato", 
	"Guerrero", 
	"Hidalgo", 
	"Jalisco", 
	"Michoacán", 
	"Morelos", 
	"Nayarit", 
	"Nuevo León", 
	"Oaxaca", 
	"Puebla", 
	"Querétaro", 
	"Quintana Roo", 
	"San Luis Potosí", 
	"Sinaloa", 
	"Sonora", 
	"Tabasco", 
	"Tamaulipas", 
	"Taxcala", 
	"Veracruz", 
	"Yucatán", 
	"Zacatecas"
].each do |state|
	State.create(:name => state)
end

df = State.find_by_name('Distrito Federal')
%w(Miguel\ Hidalgo Benito\ Juárez Cuauhtémoc).each do |m|
  df.municipalities.create(:name => m)
end
