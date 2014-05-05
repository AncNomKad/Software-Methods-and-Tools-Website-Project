class Ship < ActiveRecord::Base
	#include ActiveModel::Validations
 	#attr_accessible :ship_class, :ship_label, :manufacturer, :shields, :hitpoints, :description, :image

def self.ship_classes
    {'Fighters'=>'1','Bombers'=>'1','Transport'=>'1','Freighter'=>'1', 'Cruisers'=>'1', 'Capital ships'=>'1', 'Sentry Guns'=>'1'}
 end
 def self.sort_by(rate, field)
  		return Ship.where({:ship_class => rate.keys}).order(field)
  	end
end
