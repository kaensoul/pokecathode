NurseMornText:
	text "¡Bienvenido al"
	line "Centro #MON"
	cont "en esta calida"
	cont "mañana!"
	done

NurseDayText:
	text "¡Bienvenido al"
	line "centro #MON!"
	done

NurseNiteText:
	text "Buenas noches,"
	line "atendemos las"
	cont "24 horas."

	para "Ni te imaginas"
	line "lo mucho que"
	cont "espero el cambio"
	cont "de turno."
	done

PokeComNurseMornText:
	text "Good morning!"

	para "This is the #-"
	line "MON COMMUNICATION"

	para "CENTER--or the"
	line "#COM CENTER."
	done

PokeComNurseDayText:
	text "Hello!"

	para "This is the #-"
	line "MON COMMUNICATION"

	para "CENTER--or the"
	line "#COM CENTER."
	done

PokeComNurseNiteText:
	text "Good to see you"
	line "working so late."

	para "This is the #-"
	line "MON COMMUNICATION"

	para "CENTER--or the"
	line "#COM CENTER."
	done

NurseAskHealText:
	text "¿Necesitan tus"
	line "#MON un"
	cont "descanso?"
	done

NurseTakePokemonText:
	text "Será rápido."
	done

NurseReturnPokemonText:
	text "Listo, tus amigos"
	line "ya se sienten a"
	cont "la perfección."
	done

NurseGoodbyeText:
	text "¡Vuelve siempre"
	line "que quieras!"
	done

; not used
	text "We hope to see you"
	line "again."
	done

NursePokerusText:
	text "¡Oh!"

	para "Al parecer tus"
	line "compañeros tienen"
	cont "#RUS."

	para "Aunque el nombre"
	line "suene a virus,"

	para "se a descubierto"
	line "que los #MON"
	cont "infectados por"
    cont "el #RUS crecen"
	
	para "más rápido que"
	line "los demás."
	
	para "Se les puede"
	line "llamar parásitos"
	cont "beneficiosos o"
	cont "simbiontes."
	done

PokeComNursePokerusText:
	text "¡Oh!"

	para "Al parecer tus"
	line "compañeros tienen"
	cont "#RUS."

	para "Aunque el nombre"
	line "suene a virus,"

	para "se a descubierto"
	line "que los #MON"
	cont "infectados por"
    cont "el #RUS crecen"
	
	para "más rápido que"
	line "los demás."
	
	para "Se les puede"
	line "llamar parásitos"
	cont "beneficiosos o"
	cont "simbiontes."
	done

DifficultBookshelfText:
	text "Nada interesante."
	done

PictureBookshelfText:
	text "No hay tiempo"
	line "para historietas."
	done

MagazineBookshelfText:
	text "MAD, People,"
	line "TIME..."

	para "¿Quien lee en el"
	line "mundo moderno?"
	done

TeamRocketOathText:
	text "TEAM ROCKET OATH"

	para "Steal #MON for"
	line "profit!"

	para "Exploit #MON"
	line "for profit!"

	para "All #MON exist"
	line "for the glory of"
	cont "TEAM ROCKET!"
	done

IncenseBurnerText:
	text "What is this?"

	para "Oh, it's an"
	line "incense burner!"
	done

MerchandiseShelfText:
	text "Productos de"
	line "Silph S.A."
	done

TownMapText:
	text "Es un mapa."
	done

WindowText:
	text "Debo hacer algo"
	line "con mi cabello."
	done

TVText:
	text "Esta apagada."
	done

HomepageText:
	text "#MON JOURNAL"
	line "HOME PAGE…"

	para "It hasn't been"
	line "updated…"
	done

; not used
	text "#MON RADIO!"

	para "Call in with your"
	line "requests now!"
	done

TrashCanText:
	text "Eeeh... I didn't"
	line "need to see this."
	done

; not used
	text "A #MON may be"
	line "able to move this."
	done

; not used
	text "Maybe a #MON"
	line "can break this."
	done

PokecenterSignText:
	text "Heal Your #MON!"
	line "#MON CENTER"
	done

MartSignText:
	text "For All Your"
	line "#MON Needs"

	para "#MON MART"
	done

ContestResults_ReadyToJudgeText:
	text "We will now judge"
	line "the #MON you've"
	cont "caught."

	para $56
	line $56

	para "We have chosen the"
	line "winners!"

	para "Are you ready for"
	line "this?"
	done

ContestResults_PlayerWonAPrizeText:
	text "<PLAYER>, the No.@"
	text_from_ram wStringBuffer3
	text_start
	line "finisher, wins"
	cont "@"
	text_from_ram wStringBuffer4
	text "!"
	done

ReceivedItemText:
	text "<PLAYER> received"
	line "@"
	text_from_ram wStringBuffer4
	text "."
	done

ContestResults_JoinUsNextTimeText:
	text "Please join us for"
	line "the next Contest!"
	done

ContestResults_ConsolationPrizeText:
	text "Everyone else gets"
	line "a BERRY as a con-"
	cont "solation prize!"
	done

ContestResults_DidNotWinText:
	text "We hope you do"
	line "better next time."
	done

ContestResults_ReturnPartyText:
	text "We'll return the"
	line "#MON we kept"

	para "for you."
	line "Here you go!"
	done

ContestResults_PartyFullText:
	text "Your party's full,"
	line "so the #MON was"

	para "sent to your BOX"
	line "in BILL's PC."
	done

GymStatue_CityGymText:
	text_from_ram wStringBuffer3
	text_start
	line "#MON GYM"
	done

GymStatue_WinningTrainersText:
	text "Lider: @"
	text_from_ram wStringBuffer4
	text_start
	para "Ganadores:"
	line "<RIVAL>"
	cont "Lisargy"
	cont "<PLAYER>"
	done

CoinVendor_WelcomeText:
	text "Welcome to the"
	line "GAME CORNER."
	done

CoinVendor_NoCoinCaseText:
	text "Do you need game"
	line "coins?"

	para "Oh, you don't have"
	line "a COIN CASE for"
	cont "your coins."
	done

CoinVendor_IntroText:
	text "Do you need some"
	line "game coins?"

	para "It costs ¥1000 for"
	line "50 coins. Do you"
	cont "want some?"
	done

CoinVendor_Buy50CoinsText:
	text "Thank you!"
	line "Here are 50 coins."
	done

CoinVendor_Buy500CoinsText:
	text "Thank you! Here"
	line "are 500 coins."
	done

CoinVendor_NotEnoughMoneyText:
	text "You don't have"
	line "enough money."
	done

CoinVendor_CoinCaseFullText:
	text "Whoops! Your COIN"
	line "CASE is full."
	done

CoinVendor_CancelText:
	text "No coins for you?"
	line "Come again!"
	done

BugContestPrizeNoRoomText:
	text "Oh? Your PACK is"
	line "full."

	para "We'll keep this"
	line "for you today, so"

	para "come back when you"
	line "make room for it."
	done

HappinessText3:
	text "Se ve que tu y"
	line "ese #MON se"
	cont "llevan bien."
	done

HappinessText2:
	text "Un #MON al"
	line "principio del"

	para "equipo se encariña"
	line "rápido."
	done

HappinessText1:
	text "Tu #MON"
	line "no parece feliz."
	done

RegisteredNumber1Text:
	text "<PLAYER> registró"
	line "@"
	text_from_ram wStringBuffer3
	text "en el #GEAR."
	done

RegisteredNumber2Text:
	text "<PLAYER> registró"
	line "@"
	text_from_ram wStringBuffer3
	text "en el #GEAR."
	done
