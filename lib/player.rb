

class Player
    attr_accessor :nom, :point_de_vie
    

    def initialize (nom)
        @nom = nom
        @point_de_vie = 10
    end

    def etat_du_joueur 
            puts "#{@nom} a #{@point_de_vie} point de vie"
        
    end

    def blessure(point)
          @point_de_vie = @point_de_vie - point
          
        if @point_de_vie <= 0
            puts "Le joueur #{@nom} a été tué"
        
    end
    #    return etat_du_joueur 
    end
 
    def attaque(joueur)
        puts "le joueur #{@nom} attaque le joueur #{joueur.nom}"
        numero = compute_damage
        joueur.blessure(numero)
        puts "il lui inflige #{numero} points de vie"
        
    end
        
      def compute_damage
        return rand(1..6)
    end

end


