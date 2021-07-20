require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



joueur1 = Player.new("José")

joueur2 = Player.new("Michel")

while joueur1.point_de_vie > 0 && joueur2.point_de_vie >0 
  if joueur1.point_de_vie > 0 
    joueur1.attaque(joueur2)
    joueur2.etat_du_joueur
  end
  if joueur2.point_de_vie > 0
    joueur2.attaque(joueur1)
    joueur1.etat_du_joueur  
  end
    
    
end


   


    
    
  



























# puts joueur1.nom



# puts joueur1.blessure(5)

# puts joueur1.etat_du_joueur

# puts joueur1.blessure(5)



# puts joueur2.nom

# puts joueur2.etat_du_joueur

# puts joueur2.blessure(5)

# puts joueur2.etat_du_joueur

# puts joueur2.blessure(5)


