# Description:
#   mauricio commits suicide if offended
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   mauricio ql
#   mauricio matate
#
# Author:
#   jorgeepunan

ascii = ["\n
(҂._.)\n
<,╤╦╤─ ҉ - - - - :mauricio:\n
/--\'\n
",
"\n
━━━━━┓ ＼＼\n
┓┓┓┓┓┃\n
┓┓┓┓┓┃    |:mauricio:ノ ~ chaoooooo\n
┓┓┓┓┓┃ 　 /\n
┓┓┓┓┓┃  ノ)\n
┓┓┓┓┓┃\n
┓┓┓┓┓┃\n
",
"\n
    ______\n
  //       |\n
 ||  ✝     |\n
 || QEPD   |\n
 || mauricio   |\n
 ||        |\n
 ||/ / // |/\n
\n
",
"
:bomb: :bomb: :bomb:\n
:bomb: :mauricio: :bomb: :fire: ~ adiós mundo cruel\n
:bomb: :bomb: :bomb:\n
",
"\n
 _____\n
|     |\n
|     :mauricio:\n
|    /|\n
|    / |\n
|
|________\n

",
"\n
   ____________\n
  |            |\n
  |  PÚDRANSE  |\n
  |____________|\n
 ∧＿_∧  ||\n
(　´o`) ||\n
/ 　　づ”.\n
"
]

module.exports = (robot) ->
  robot.respond /ql|rql|ctm|m[áa]tate/gi, (msg) ->
    msg.send msg.random ascii
