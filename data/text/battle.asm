BattleText:: ; used only for BANK(BattleText)

BattleText_PlayerPickedUpPayDayMoney: ; 0x80730
	text "¡<PLAYER> ganó"
	line "¥@"
	deciram wPayDayMoney, 3, 6
	text "!"
	prompt
; 0x80746

WildPokemonAppearedText: ; 0x80746
	text "¡Un @"
	text_from_ram wEnemyMonNick
	text_start
	line "salvaje apareció!"
	prompt
; 0x8075c

HookedPokemonAttackedText: ; 0x8075c
	text "¡Tu pesca"
	line "@"
	text_from_ram wEnemyMonNick
	text_start
	cont "se resiste!"
	prompt
; 0x80778

PokemonFellFromTreeText: ; 0x80778
	text_from_ram wEnemyMonNick
	text " calló"
	line "de un árbol."
	prompt
; 0x80793

WildCelebiAppearedText: ; 0x80793
	text "Wild @"
	text_from_ram wEnemyMonNick
	text_start
	line "appeared!"
	prompt
; 0x807a9

WantsToBattleText:: ; 0x807a9
	text "¡<ENEMY>"
	line "quiere luchar!"
	prompt
; 0x807bd

BattleText_WildFled: ; 0x807bd
	text "¡ @"
	text_from_ram wEnemyMonNick
	text_start
	line "escapó!"
	prompt
; 0x807cf

BattleText_EnemyFled: ; 0x807cf
	text "¡ @"
	text_from_ram wEnemyMonNick
	text_start
	line "huyó!"
	prompt
; 0x807e2

HurtByPoisonText: ; 0x807e2
	text "¡<USER>"
	line "sufre por el"
	cont "veneno!"
	prompt
; 0x807f8

HurtByBurnText: ; 0x807f8
	text "¡<USER>"
	line "sufre por la"
	cont "quemadura!"
	prompt
; 0x8080e

LeechSeedSapsText: ; 0x8080e
	text "¡La energía de"
	line "<USER> es"
	cont "drenada!"
	prompt
; 0x80822

HasANightmareText: ; 0x80822
	text "¡<USER> tiene"
	line "una pesadilla!"
	prompt
; 0x80836

HurtByCurseText: ; 0x80836
	text "¡<USER> está"
	line "maldito!"
	prompt
; 0x8084d

SandstormHitsText: ; 0x8084d
	text "¡La arena lastima"
	line "a <USER>!"
	prompt
; 0x80864

PerishCountText: ; 0x80864
	text "<USER> va a"
	line "caer en @"
	deciram wd265, 1, 1
	text "turnos!"
	prompt
; 0x80880

BattleText_TargetRecoveredWithItem: ; 0x80880
	text "<TARGET>"
	line "se recupera con"
	cont "@"
	text_from_ram wStringBuffer1
	text "."
	prompt
; 0x80899

BattleText_UserRecoveredPPUsing: ; 0x80899
	text "<USER>"
	line "recuperó PP con"
	cont "@"
	text_from_ram wStringBuffer1
	text "."
	prompt
; 0x808b6

BattleText_TargetWasHitByFutureSight: ; 0x808b6
	text "¡<TARGET> fue"
	line "golpeado por una"
	cont "fuerza extraña!"
	prompt
; 0x808d2

BattleText_SafeguardFaded: ; 0x808d2
	text "¡<USER> ya"
	line "no es inmune a"
	cont "cambios de estado!"
	prompt
; 0x808e7

BattleText_MonsLightScreenFell: ; 0x808e7
	text_from_ram wStringBuffer1
	text " #MON's"
	line "LIGHT SCREEN fell!"
	prompt
; 0x80905

BattleText_MonsReflectFaded: ; 0x80905
	text_from_ram wStringBuffer1
	text " #MON's"
	line "REFLECT faded!"
	prompt
; 0x8091f

BattleText_RainContinuesToFall: ; 0x8091f
	text "Llueve en el"
	line "campo de batalla."
	prompt
; 0x80938

BattleText_TheSunlightIsStrong: ; 0x80938
	text "El Sol brilla"
	line "con fuerza."
	prompt
; 0x80951

BattleText_TheSandstormRages: ; 0x80951
	text "Una Tormenta de"
	line "Arena nos ataca."
	prompt
; 0x80967

BattleText_TheRainStopped: ; 0x80967
	text "La lluvia se"
	line "calma."
	prompt
; 0x8097a

BattleText_TheSunlightFaded: ; 0x8097a
	text "Ya no esta el"
	line "día soleado."
	prompt
; 0x8098f

BattleText_TheSandstormSubsided: ; 0x8098f
	text "La Tormenta de"
	line "Arena desapareció."
	prompt
; 0x809a8

BattleText_EnemyMonFainted: ; 0x809a8
	text "¡@"
	text_from_ram wEnemyMonNick
	text_start
	line "se debilitó!"
	prompt
; 0x809be

GotMoneyForWinningText:
	text "<PLAYER> ganó ¥@"
	deciram wBattleReward, 3, 6
	text_start
	line "por ganar."
	prompt

BattleText_EnemyWasDefeated: ; 0x809da
	text "¡<ENEMY>"
	line "perdió!"
	prompt
; 0x809eb

TiedAgainstText: ; 0x809eb
	text "¡Empataste contra"
	line "<ENEMY>!"
	prompt
; 0x809fc

SentSomeToMomText:
	text "<PLAYER> got ¥@"
	deciram wBattleReward, 3, 6
	text_start
	line "for winning!"
	cont "Sent some to MOM!"
	prompt

SentHalfToMomText:
	text "Sent half to MOM!"
	prompt

SentAllToMomText:
	text "Sent all to MOM!"
	prompt

BattleText_0x80a4f: ; 0x80a4f
	text "<RIVAL>: Huh? I"
	line "should've chosen"
	cont "your #MON!"
	prompt
; 0x80a75

BattleText_MonFainted: ; 0x80a75
	text_from_ram wBattleMonNick
	text_start
	line "!Se debilitó!"
	prompt
; 0x80a83

BattleText_UseNextMon: ; 0x80a83
	text "¿Usar otro"
	line "#MON?"
	done
; 0x80a93

BattleText_0x80a93: ; 0x80a93
	text "<RIVAL>: Yes!"
	line "I guess I chose a"
	cont "good #MON!"
	prompt
; 0x80ab9

LostAgainstText: ; 0x80ab9
	text "Lost against"
	line "<ENEMY>!"
	prompt
; 0x80aca

BattleText_EnemyIsAboutToUseWillPlayerChangeMon: ; 0x80aca
	text "<ENEMY>"
	line "llama a"
	cont "@"
	text_from_ram wEnemyMonNick
	text "."

	para "<PLAYER>,"
	line "¿Cambias de"
	cont "#MON?"
	done
; 0x80af8

BattleText_EnemySentOut: ; 0x80af8
	text "¡<ENEMY>"
	line "elige a"
	cont "@"
	text_from_ram wEnemyMonNick
	text "!"
	done
; 0x80b0b

BattleText_TheresNoWillToBattle: ; 0x80b0b
	text "¡No quiere"
	line "luchar!"
	prompt
; 0x80b26

BattleText_AnEGGCantBattle: ; 0x80b26
	text "¡Es muy joven"
	line "para luchar!"
	prompt
; 0x80b3b

BattleText_CantEscape2: ; 0x80b3b
	text "¡Sin huir!"
	prompt
; 0x80b49

BattleText_TheresNoEscapeFromTrainerBattle: ; 0x80b49
	text "¡No puedes huir"
	line "de una batalla"
	cont "oficial!"
	prompt

BattleText_GotAwaySafely: ; 0x80b77
	text "¡Huiste!"
	prompt

BattleText_UserFledUsingAStringBuffer1: ; 0x80b89
	text "<USER>"
	line "fled using a"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x80ba0

BattleText_CantEscape: ; 0x80ba0
	text "¡No puedes"
	line "huir!"
	prompt
; 0x80bae

BattleText_UserHurtBySpikes: ; 0x80bae
	text "¡<USER> se"
	line "lastimo!"
	prompt
; 0x80bc2

RecoveredUsingText: ; 0x80bc2
	text "<TARGET> se"
	line "recuperó usando"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x80bde

BattleText_UsersStringBuffer1Activated: ; 0x80bde
	text "<USER>'s"
	line "@"
	text_from_ram wStringBuffer1
	text_start
	cont "activated!"
	prompt
; 0x80bf3

BattleText_ItemsCantBeUsedHere: ; 0x80bf3
	text "¡No se puede"
	line "usar ahora!"
	prompt
; 0x80c0d

BattleText_MonIsAlreadyOut: ; 0x80c0d
	text_from_ram wBattleMonNick
	text_start
	line "esta luchando."
	prompt
; 0x80c22

BattleText_MonCantBeRecalled: ; 0x80c22
	text_from_ram wBattleMonNick
	text_start
	line "no puede volver."
	prompt
; 0x80c39

BattleText_TheresNoPPLeftForThisMove: ; 0x80c39
	text "No puedes usar"
	line "este ataque."
	prompt
; 0x80c5b

BattleText_TheMoveIsDisabled: ; 0x80c5b
	text "¡Movimiento"
	line "bloqueado!"
	prompt
; 0x80c72

BattleText_MonHasNoMovesLeft: ; 0x80c72
	text_from_ram wBattleMonNick
	text_start
	line "no puede atacar."
	done
; 0x80c8a

BattleText_TargetsEncoreEnded: ; 0x80c8a
	text "<TARGET> ya"
	line "no repite."
	prompt
; 0x80c9c

BattleText_StringBuffer1GrewToLevel: ; 0x80c9c
	text_from_ram wStringBuffer1
	text " subió a"
	line "Nv @"
	deciram wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79
	db "@@"
; 0x80cb9

BattleText_WildMonIsEating: ; 0x80cba
	text " @"
	text_from_ram wEnemyMonNick
	text_start
	line "esta comiendo."
	prompt
; 0x80cd1

BattleText_WildMonIsAngry: ; 0x80cd1
	text " @"
	text_from_ram wEnemyMonNick
	text_start
	line "esta molesto."
	prompt
; 0x80ce7

FastAsleepText: ; 0x80ce7
	text "<USER>"
	line "no despierta."
	prompt
; 0x80cfa

WokeUpText: ; 0x80cfa
	text "¡<USER>"
	line "se despertó!"
	prompt
; 0x80d06

FrozenSolidText: ; 0x80d06
	text "¡<USER> no"
	line "se puede mover!"
	prompt
; 0x80d1a

FlinchedText: ; 0x80d1a
	text "¡<USER>"
	line "retrocedió!"
	prompt
; 0x80d27

MustRechargeText: ; 0x80d27
	text "<USER>"
	line "esta agotado."
	prompt
; 0x80d39

DisabledNoMoreText: ; 0x80d39
	text "<USER> ya"
	line "puede atacar."
	prompt
; 0x80d4f

IsConfusedText: ; 0x80d4f
	text "¡<USER>"
	line "esta confuso!"
	prompt
; 0x80d5f

HurtItselfText: ; 0x80d5f
	text "¡Tropezó!"
	prompt
; 0x80d81

ConfusedNoMoreText: ; 0x80d81
	text "<USER> ya"
	line "no esta confuso."
	prompt
; 0x80d97

BecameConfusedText: ; 0x80d97
	text "<TARGET>"
	line "fue confundido."
	prompt
; ItemHealedConfusion

BattleText_ItemHealedConfusion: ; ItemHealedConfusion
	text "Un @"
	text_from_ram wStringBuffer1
	text " liberó"
	line "a <TARGET>"
	cont "de la confusión."
	prompt
; 0x80dcc

AlreadyConfusedText: ; 0x80dcc
	text "<TARGET>"
	line "estaba confundido."
	prompt
; 0x80de2

BattleText_UsersHurtByStringBuffer1: ; 0x80de2
	text "¡<USER>"
	line "fue dañado por"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x80df5

BattleText_UserWasReleasedFromStringBuffer1: ; 0x80df5
	text "¡<USER>"
	line "se liberó de"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x80e11

UsedBindText: ; 0x80e11
	text "¡<USER>"
	line "tiene a"
	cont "<TARGET>!"
	prompt
; 0x80e24

WhirlpoolTrapText: ; 0x80e24
	text "¡<TARGET>"
	line "fue atrapado!"
	prompt
; 0x80e34

FireSpinTrapText: ; 0x80e34
	text "¡<TARGET>"
	line "fue atrapado!"
	prompt
; 0x80e44

WrappedByText: ; 0x80e44
	text "¡<TARGET>"
	line "es apretado por"
	cont "<USER>!"
	prompt
; 0x80e59

ClampedByText: ; 0x80e59
	text "<TARGET>"
	line "was CLAMPED by"
	cont "<USER>!"
	prompt
; 0x80e6e

StoringEnergyText: ; 0x80e6e
	text "¡<USER>"
	line "carga energía!"
	prompt
; 0x80e84

UnleashedEnergyText: ; 0x80e84
	text "¡<USER>"
	line "libera energía!"
	prompt
; 0x80e99

HungOnText: ; 0x80e99
	text "<TARGET>"
	line "hung on with"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x80eb0

EnduredText: ; 0x80eb0
	text "¡<TARGET>"
	line "no quiere caer!"
	prompt
; 0x80ec4

InLoveWithText: ; 0x80ec4
	text "¡<USER>"
	line "ama a"
	cont "<TARGET>!"
	prompt
; 0x80eda

InfatuationText: ; 0x80eda
	text "¡<USER> no"
	line "puede contra el"
	cont "poder del amor!"
	prompt
; 0x80f02

DisabledMoveText: ; 0x80f02
	text "<USER> tiene"
	line "@"
	text_from_ram wStringBuffer1
	text " anulado"
	cont "por el momento."
	prompt
; 0x80f19

LoafingAroundText: ; 0x80f19
	text_from_ram wBattleMonNick
	text " no"
	line "quiere atacar."
	prompt
; 0x80f31

BeganToNapText: ; 0x80f31
	text_from_ram wBattleMonNick
	text " fue"
	line "a dormir."
	prompt
; 0x80f44

WontObeyText: ; 0x80f44
	text_from_ram wBattleMonNick
	text " no te"
	line "quiere escuchar."
	prompt
; 0x80f54

TurnedAwayText: ; 0x80f54
	text_from_ram wBattleMonNick
	text " te"
	line "ignora."
	prompt
; 0x80f66

IgnoredOrdersText: ; 0x80f66
	text_from_ram wBattleMonNick
	text " va"
	line "a luchar solo."
	prompt
; 0x80f7b

IgnoredSleepingText: ; 0x80f7b
	text_from_ram wBattleMonNick
	text " prefiere"
	line "dormir."
	prompt
; 0x80f99

NoPPLeftText: ; 0x80f99
	text "Ya no tiene"
	line "PP."
	prompt
; 0x80fba

HasNoPPLeftText: ; 0x80fba
	text "<USER> ya"
	line "no tiene PP para"
	cont "@"
	text_from_ram wStringBuffer2
	text "!"
	prompt
; 0x80fd7

WentToSleepText: ; 0x80fd7
	text "¡<USER>"
	line "fue a dormir!"
	done
; 0x80fe9

RestedText: ; 0x80fe9
	text "<USER>"
	line "Descansa para"
	cont "otra ronda."
	done
; 0x8100c

RegainedHealthText: ; 0x8100c
	text "<USER>"
	line "esta sanando."
	prompt
; 0x81020

AttackMissedText: ; 0x81020
	text "<USER>"
	line "falló."
	prompt
; 0x81033

AttackMissed2Text: ; 0x81033
	text "<USER>"
	line "falló."
	prompt
; 0x81046

CrashedText: ; 0x81046
	text "¡<USER>"
	line "se lastimó!"
	prompt
; 0x81061

UnaffectedText: ; 0x81061
	text "¡<TARGET> no"
	line "fue afectado!"
	prompt
; 0x81071

DoesntAffectText: ; 0x81071
	text "¡No funciona en"
	line "<TARGET>!"
	prompt
; 0x81086

CriticalHitText: ; 0x81086
	text "¡Un golpe crítico!"
	prompt
; 0x81097

OneHitKOText: ; 0x81097
	text "It's a one-hit KO!"
	prompt
; 0x810aa

SuperEffectiveText: ; 0x810aa
	text "¡Es super"
	line "efectivo!"
	prompt
; 0x810c1

NotVeryEffectiveText: ; 0x810c1
	text "No es muy"
	line "efectivo…"
	prompt
; 0x810da

TookDownWithItText: ; 0x810da
	text "<TARGET>"
	line "took down with it,"
	cont "<USER>!"
	prompt
; 0x810f3

RageBuildingText: ; 0x810f3
	text "¡<USER>"
	line "esta furioso!"
	prompt
; 0x81109

GotAnEncoreText: ; 0x81109
	text "¡<TARGET> va"
	line "a repetir!"
	prompt
; 0x8111b

SharedPainText: ; 0x8111b
	text "¡Comparten"
	line "dolor!"
	prompt
; 0x81136

TookAimText: ; 0x81136
	text "<USER>"
	line "apunta a su"
	cont "victima."
	prompt
; 0x81143

SketchedText: ; 0x81143
	text "<USER>"
	line "SKETCHED"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x81156

DestinyBondEffectText: ; 0x81156
	text "<USER> va"
	line "a intentar un"
	cont "empate."
	prompt
; 0x8117f

SpiteEffectText: ; 0x8117f
	text "<TARGET>'s"
	line "@"
	text_from_ram wStringBuffer1
	text " was"
	cont "reduced by @"
	deciram wd265, 1, 1
	text "!"
	prompt
; 0x811a0

BellChimedText: ; 0x811a0
	text "¡Suenan campanas!"
	line ""
	prompt
; 0x811b1

FellAsleepText: ; 0x811b1
	text "¡<TARGET>"
	line "duerme!"
	prompt
; 0x811c1

AlreadyAsleepText: ; 0x811c1
	text "<TARGET> ya"
	line "estaba dormido."
	prompt
; 0x811d5

WasPoisonedText: ; 0x811d5
	text "¡<TARGET>"
	line "fue envenenado!"
	prompt
; 0x811e6

BadlyPoisonedText: ; 0x811e6
	text "¡<TARGET>"
	line "fue intoxicado!"
	prompt
; 0x811fa

AlreadyPoisonedText: ; 0x811fa
	text "<TARGET> ya"
	line "estaba envenenado."
	prompt
; 0x81210

SuckedHealthText: ; 0x81210
	text "¡Robaron energía"
	line "a <TARGET>!"
	prompt
; 0x81227

DreamEatenText: ; 0x81227
	text "<TARGET> sufre"
	line "en sus sueños."
	prompt
; 0x8123c

WasBurnedText: ; 0x8123c
	text "¡<TARGET>"
	line "se quema!"
	prompt
; 0x8124b

DefrostedOpponentText: ; 0x8124b
	text "¡<TARGET>"
	line "se descongeló!"
	prompt
; 0x8125d

WasFrozenText: ; 0x8125d
	text "¡<TARGET>"
	line "esta bajo hielo!"
	prompt
; 0x81272

WontRiseAnymoreText: ; 0x81272
	text "¡No tiene"
	line "efecto!"
	prompt
; 0x8128f

WontDropAnymoreText: ; 0x8128f
	text "¡No tiene"
	line "efecto!"
	prompt
; 0x812ac

FledFromBattleText:: ; 0x812ac
	text "¡<USER>"
	line "escapó!"
	prompt
; 0x812c1

FledInFearText: ; 0x812c1
	text "<TARGET>"
	line "fled in fear!"
	prompt
; 0x812d2

BlownAwayText: ; 0x812d2
	text "<TARGET>"
	line "was blown away!"
	prompt
; 0x812e5

PlayerHitTimesText: ; 0x812e5
	text "¡Golpeó @"
	deciram wPlayerDamageTaken, 1, 1
	text " veces!"
	prompt
; 0x812f8

EnemyHitTimesText: ; 0x812f8
	text "¡Atacó @"
	deciram wEnemyDamageTaken, 1, 1
	text " veces!"
	prompt
; 0x8130b

MistText: ; 0x8130b
	text "<USER>"
	line "se cubre con MIST."
	prompt
; 0x81321

ProtectedByMistText: ; 0x81321
	text "<TARGET>"
	line "se protege con"
	cont "MIST."
	prompt
; 0x81338

GettingPumpedText: ; 0x81338
	interpret_data
	text "<USER>'s"
	line "getting pumped!"
	prompt
; 0x8134d

RecoilText: ; 0x8134d
	text "¡<USER>"
	line "también se daña!"
	prompt
; 0x81362

MadeSubstituteText: ; 0x81362
	text "¡<USER>"
	line "hizo un sustituto!"
	prompt
; 0x81378

HasSubstituteText: ; 0x81378
	text "¡<USER>"
	line "tiene sustituto!"
	prompt
; 0x8138d

TooWeakSubText: ; 0x8138d
	text "No puede crear"
	line "un sustituto."
	prompt
; 0x813ad

SubTookDamageText: ; 0x813ad
	text "El sustituto"
	line "recibió el daño"
	cont "de <TARGET>!"
	prompt
; 0x813d0

SubFadedText: ; 0x813d0
	text "<TARGET> perdió"
	line "su sustituto."
	prompt
; 0x813e6

LearnedMoveText: ; 0x813e6
	text "<USER>"
	line "aprendió"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x813f8

WasSeededText: ; 0x813f8
	text "¡<TARGET>"
	line "tiene semillas!"
	prompt
; 0x81407

EvadedText: ; 0x81407
	text "¡<TARGET>"
	line "esquivó!"
	prompt
; 0x8141d

WasDisabledText: ; 0x8141d
	text "<TARGET> tiene"
	line "su @"
	text_from_ram wStringBuffer1
	text " desactivado."
	prompt
; 0x81435

CoinsScatteredText: ; 0x81435
	text "¡Monedas por"
	line "todos lados!"
	prompt
; 0x81452

TransformedTypeText: ; 0x81452
	text "<USER>"
	line "transformed into"
	cont "the @"
	text_from_ram wStringBuffer1
	text "-type!"
	prompt
; 0x81476

EliminatedStatsText: ; 0x81476
	text "All stat changes"
	line "were eliminated!"
	prompt
; 0x81499

TransformedText: ; 0x81499
	text "<USER>"
	line "TRANSFORMED into"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x814b4

LightScreenEffectText: ; 0x814b4
	text "¡<USER> gana"
	line "SPCL.DEF!"
	prompt
; 0x814c7

ReflectEffectText: ; 0x814c7
	text "¡<USER> gana"
	line "DEFENSE!"
	prompt
; 0x814d9

NothingHappenedText: ; 0x814d9
	text "¿Fue un"
	line "ataque?"
	prompt
; 0x814f0

ButItFailedText: ; 0x814f0
	text "¡Falló!"
	prompt
; 0x81500

ItFailedText: ; 0x81500
	text "?Falló!"
	prompt
; 0x8150c

DidntAffect1Text: ; 0x8150c
	text "¡No afectó a"
	line "<TARGET>!"
	prompt
; 0x81520

DidntAffect2Text: ; 0x81520
	text "¡No afectó a"
	line "<TARGET>!"
	prompt
; 0x81534

HPIsFullText: ; 0x81534
	text "<USER>'s"
	line "HP is full!"
	prompt
; 0x81544

DraggedOutText: ; 0x81544
	text "<USER>"
	line "was dragged out!"
	prompt
; 0x81558

ParalyzedText: ; 0x81558
	text "¡<TARGET>"
	line "esta paralizado!"
	prompt
; 0x8157d

FullyParalyzedText: ; 0x8157d
	text "<USER> no"
	line "puede moverse."
	prompt
; 0x81592

AlreadyParalyzedText: ; 0x81592
	text "<TARGET>"
	line "estaba paralizado."
	prompt
; 0x815a9

ProtectedByText: ; 0x815a9
	text "<TARGET>'s"
	line "protected by"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x815c1

MirrorMoveFailedText: ; 0x815c1
	text "The MIRROR MOVE"
	next "failed!"
	prompt
; 0x815da

StoleText: ; 0x815da
	text "<USER>"
	line "stole @"
	text_from_ram wStringBuffer1
	text_start
	cont "from its foe!"
	prompt
; 0x815f7

CantEscapeNowText: ; 0x815f7
	text "<TARGET>"
	line "can't escape now!"
	prompt
; 0x8160b

StartedNightmareText: ; 0x8160b
	text "<TARGET>"
	line "tiene pesadillas."
	prompt
; 0x8162b

WasDefrostedText: ; 0x8162b
	text "<USER>"
	line "se descongeló."
	prompt
; 0x8163d

PutACurseText: ; 0x8163d
	text "<USER>"
	line "usa HP para"

	para "maldecir a"
	line "<TARGET>!"
	prompt
; 0x81665

ProtectedItselfText: ; 0x81665
	text "<USER>"
	line "se proteje."
	prompt
; 0x8167a

ProtectingItselfText: ; 0x8167a
	text "<TARGET>"
	line "esta protejido."
	done
; 0x81691

SpikesText: ; 0x81691
	text "¡Púas por todos"
	line "lados!"
	prompt
; 0x816b1

IdentifiedText: ; 0x816b1
	text "<USER>"
	line "identified"
	cont "<TARGET>!"
	prompt
; 0x816c2

StartPerishText: ; 0x816c2
	text "Van a caer en"
	line "3 turnos."
	prompt
; 0x816e4

SandstormBrewedText: ; 0x816e4
	text "A SANDSTORM"
	line "brewed!"
	prompt
; 0x816f9

BracedItselfText: ; 0x816f9
	text "<USER>"
	line "braced itself!"
	prompt
; 0x8170b

FellInLoveText: ; 0x8170b
	text "¡<TARGET>"
	line "ama a alguien!"
	prompt
; 0x8171c

CoveredByVeilText: ; 0x8171c
	text "<USER>'s"
	line "covered by a veil!"
	prompt
; 0x81733

SafeguardProtectText: ; 0x81733
	text "<TARGET>"
	line "is protected by"
	cont "SAFEGUARD!"
	prompt
; 0x81751

MagnitudeText: ; 0x81751
	text "Magnitude @"
	deciram wd265, 1, 1
	text "!"
	prompt
; 0x81764

ReleasedByText: ; 0x81764
	text "<USER>"
	line "was released by"
	cont "<TARGET>!"
	prompt
; 0x8177a

ShedLeechSeedText: ; 0x8177a
	text "<USER>"
	line "shed LEECH SEED!"
	prompt
; 0x8178e

BlewSpikesText: ; 0x8178e
	text "<USER>"
	line "blew away SPIKES!"
	prompt
; 0x817a3

DownpourText: ; 0x817a3
	text "A downpour"
	line "started!"
	prompt
; 0x817b8

SunGotBrightText: ; 0x817b8
	text "The sunlight got"
	line "bright!"
	prompt
; 0x817d2

BellyDrumText: ; 0x817d2
	text "<USER>"
	line "cut its HP and"
	cont "maximized ATTACK!"
	prompt
; 0x817f6

CopiedStatsText: ; 0x817f6
	text "<USER>"
	line "copied the stat"

	para "changes of"
	line "<TARGET>!"
	prompt
; 0x81817

ForesawAttackText: ; 0x81817
	text "<USER>"
	line "foresaw an attack!"
	prompt
; 0x8182d

BeatUpAttackText: ; 0x8182d
	text_from_ram wStringBuffer1
	text "'s"
	line "attack!"
	done
; 0x8183b

RefusedGiftText: ; 0x8183b
	text "<TARGET>"
	line "refused the gift!"
	prompt
; 0x81850

IgnoredOrders2Text: ; 0x81850
	text "<USER>"
	line "ignored orders!"
	prompt
; 0x81863

BattleText_LinkErrorBattleCanceled: ; 0x81863
	text "Link error…"

	para "The battle has"
	line "been canceled…"
	prompt
; 0x8188e

BattleText_0x8188e: ; 0x8188e
	text "There is no time"
	line "left today!"
	done
; 0x818ac
