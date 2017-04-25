function crepo
	blih -u iulian.rotaru@epitech.eu repository create $argv[1]
blih -u iulian.rotaru@epitech.eu repository setacl $argv[1] ramassage-tek r
blih -u iulian.rotaru@epitech.eu repository setacl $argv[1] alif_m rwa
blih -u iulian.rotaru@epitech.eu repository getacl $argv[1]
git clone git@git.epitech.eu:/rotaru_i/$argv[1]
end
