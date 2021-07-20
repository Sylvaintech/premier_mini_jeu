

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



class HumanPlayer < Player
    attr_accessor :nom, :point_de_vie, :niveau_arme
    

    def initialize(nom)
        @nom = nom
        @point_de_vie = 100
        @niveau_arme = 1
    end
    def etat_du_joueur 
            puts "#{@nom} a #{@point_de_vie} point de vie et une arme de niveau #{@niveau_arme}"
        
    end

    def recherche_arme
        numero = rand(1..6) 
        puts "Tu as trouvé une arme de niveau #{numero}"

        if numero > @niveau_arme
          @niveau_arme = numero 
            puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
        
        elsif  numero <= @niveau_arme
            puts  "elle n'est pas mieux que ton arme actuelle..."

        end
puts @niveau_arme
    end
        
    def recherche_point_vie
        numero = rand(1..6)

        if numero == 1
            puts "Tu n'as rien trouvé"

        elsif numero >= 2 && numero<= 5
            


    def compute_damage
        rand(1..6) * niveau_arme
    end

    
end
