require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

joueur1 = HumanPlayer.new("sylvain")
joueur2 = Player.new("José")
joueur3 = Player.new("Michel")

joueur1.recherche_arme
joueur.recherche_point_vie