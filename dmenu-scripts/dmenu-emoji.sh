#!/bin/bash

set -e

case "$1" in
  "list")
    data=$(sed '0,/^__DATA__$/d' "$0")
    echo "$data"
    ;;
  "copy")
    input=$(tee)
    if [ ! -z "$input" ]; then
      emoji=${input: -1}
      echo -n "$emoji" | xclip -selection c
      command -v notify-send > /dev/null && notify-send -t 200 "$emoji copied!"
    fi
    ;;
  "")
    bash $0 list | dmenu -p 'Emoji: ' | bash $0 copy
    ;;
esac

exit

__DATA__
grinning face                                   π
smiling face with open mouth                    π
smiling face with open mouth & smiling eyes     π
grinning face with smiling eyes                 π
smiling face with open mouth & closed eyes      π
smiling face with open mouth & cold sweat       π
face with tears of joy                          π
rolling on the floor laughing                   π€£
smiling face                                   βΊοΈ
smiling face with smiling eyes                  π
smiling face with halo                          π
slightly smiling face                           π
upside-down face                                π
winking face                                    π
relieved face                                   π
smiling face with heart-eyes                    π
face blowing a kiss                             π
kissing face                                    π
kissing face with smiling eyes                  π
kissing face with closed eyes                   π
face savouring delicious food                   π
face with stuck-out tongue & winking eye        π
face with stuck-out tongue & closed eyes        π
face with stuck-out tongue                      π
money-mouth face                                π€
hugging face                                    π€
nerd face                                       π€
smiling face with sunglasses                    π
clown face                                      π€‘
cowboy hat face                                 π€ 
smirking face                                   π
unamused face                                   π
disappointed face                               π
pensive face                                    π
worried face                                    π
confused face                                   π
slightly frowning face                          π
frowning face                                  βΉοΈ
persevering face                                π£
confounded face                                 π
tired face                                      π«
weary face                                      π©
face with steam from nose                       π€
angry face                                      π 
pouting face                                    π‘
face without mouth                              πΆ
neutral face                                    π
expressionless face                             π
hushed face                                     π―
frowning face with open mouth                   π¦
anguished face                                  π§
face with open mouth                            π?
astonished face                                 π²
dizzy face                                      π΅
flushed face                                    π³
face screaming in fear                          π±
fearful face                                    π¨
face with open mouth & cold sweat               π°
crying face                                     π’
disappointed but relieved face                  π₯
drooling face                                   π€€
loudly crying face                              π­
face with cold sweat                            π
sleepy face                                     πͺ
sleeping face                                   π΄
face with rolling eyes                          π
thinking face                                   π€
lying face                                      π€₯
grimacing face                                  π¬
zipper-mouth fce                               π€
nauseated face                                  π€’
sneezing face                                   π€§
face with medical mask                          π·
face with thermometer                           π€
face with head-bandage                          π€
smiling face with horns                         π
angry face with horns                           πΏ
ogre                                            πΉ
goblin                                          πΊ
pile of poo                                     π©
ghost                                           π»
skull                                           π
skull and crossbones                           β οΈ
alien                                           π½
alien monster                                   πΎ
robot face                                      π€
jack-o-lantern                                  π
smiling cat face with open mouth                πΊ
grinning cat face with smiling eyes             πΈ
cat face with tears of joy                      πΉ
smiling cat face with heart-eyes                π»
cat face with wry smile                         πΌ
kissing cat face with closed eyes               π½
weary cat face                                  π
crying cat face                                 πΏ
pouting cat face                                πΎ
open hands                                      π
raising hands                                   π
clapping hands                                  π
folded hands                                    π
handshake                                       π€
thumbs up                                       π
thumbs down                                     π
oncoming fist                                   π
raised fist                                     β
left-facing fist                                π€
right-facing fist                               π€
crossed fingers                                 π€
victory hand                                   βοΈ
sign of the horns                               π€
OK hand                                         π
backhand index pointing left                    π
backhand index pointing right                   π
backhand index pointing up                      π
backhand index pointing down                    π
index pointing up                              βοΈ
raised hand                                     β
raised back of hand                             π€
raised hand with fingers splayed                π
vulcan salute                                   π
waving hand                                     π
call me hand                                    π€
flexed biceps                                   πͺ
middle finger                                   π
writing hand                                   βοΈ
selfie                                          π€³
nail polish                                     π
ring                                            π
lipstick                                        π
kiss mark                                       π
mouth                                           π
tongue                                          π
ear                                             π
nose                                            π
footprints                                      π£
eye                                             π
eyes                                            π
speaking head                                   π£
bust in silhouette                              π€
busts in silhouette                             π₯
baby                                            πΆ
boy                                             π¦
girl                                            π§
man                                             π¨
woman                                           π©
blond-haired woman                            π±ββ
blond-haired person                             π±
old man                                         π΄
old woman                                       π΅
man with Chinese cap                            π²
woman wearing turban                          π³ββ
person wearing turban                           π³
woman police officer                          π?ββ
police officer                                  π?
woman construction worker                     π·ββ
construction worker                             π·
woman guard                                   πββ
guard                                           π
woman detective                             π΅οΈββοΈ
detective                                       π΅
woman health worker                           π©ββ
man health worker                             π¨ββ
woman farmer                                  π©βπΎ
man farmer                                    π¨βπΎ
woman cook                                    π©βπ³
man cook                                      π¨βπ³
woman student                                 π©βπ
man student                                   π¨βπ
woman singer                                  π©βπ€
man singer                                    π¨βπ€
woman teacher                                 π©βπ«
man teacher                                   π¨βπ«
woman factory worker                          π©βπ­
man factory worker                            π¨βπ­
woman technologist                            π©βπ»
man technologist                              π¨βπ»
woman office worker                           π©βπΌ
man office worker                             π¨βπΌ
woman mechanic                                π©βπ§
man mechanic                                  π¨βπ§
woman scientist                               π©βπ¬
man scientist                                 π¨βπ¬
woman artist                                  π©βπ¨
man artist                                    π¨βπ¨
woman firefighter                             π©βπ
man firefighter                               π¨βπ
woman pilot                                   π©ββ
man pilot                       β¦a
