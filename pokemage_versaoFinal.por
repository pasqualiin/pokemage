
programa
{
	inclua biblioteca Util --> ut
	inclua biblioteca Matematica --> math
	
	funcao inteiro fire(inteiro nivelMagia){ // funcao para calcular o tamanho da magia do Fogo.
		inteiro tamanhoCirculo = 0

		se(nivelMagia == 1){
			tamanhoCirculo = 20
		}
		senao se(nivelMagia == 2){
			tamanhoCirculo = 30
		}
		senao{
			tamanhoCirculo = 50
		}
		
		retorne tamanhoCirculo // Retorna o valor do cálculo nessa variável.
	}

	
	funcao inteiro water(inteiro nivelMagia){ // funcao para calcular o tamanho da magia da agua.
		inteiro tamanhoCirculo = 0

		se(nivelMagia == 1){
			tamanhoCirculo = 10
		}
		senao se(nivelMagia == 2){
			tamanhoCirculo = 25
		}
		senao{
			tamanhoCirculo = 40
		}
		
		retorne tamanhoCirculo // Retorna o valor do cálculo nessa variável.
	}
	
	funcao inteiro earth(inteiro nivelMagia){ // funcao para calcular o tamanho da magia do Terremoto.
		inteiro tamanhoCirculo = 0

		se(nivelMagia == 1){
			tamanhoCirculo = 25
		}
		senao se(nivelMagia == 2){
			tamanhoCirculo = 55
		}
		senao{
			tamanhoCirculo = 70
		}
		
		retorne tamanhoCirculo // Retorna o valor do cálculo nessa variável.
	}
	
	funcao inteiro air(inteiro nivelMagia){ // funcao para calcular o tamanho da magia do Ar.
		inteiro tamanhoCirculo = 0

		se(nivelMagia == 1){
			tamanhoCirculo = 18
		}senao se(nivelMagia == 2){
			tamanhoCirculo = 38
		}
		senao{
			tamanhoCirculo = 60
		}
		
		retorne tamanhoCirculo // Retorna o valor do cálculo nessa variável.
	}

	funcao real calculoDistancia(inteiro x1, inteiro y1, inteiro x2, inteiro y2){    //calcular distancia entre dois pontos
		real distanciaX, distanciaY, distanciaTotal

		distanciaX = x2 - x1
		distanciaY = y2 - y1
		
		distanciaTotal = math.raiz(((distanciaX * distanciaX) + (distanciaY * distanciaY)), 2)

		retorne distanciaTotal
	}

	funcao vazio parametrosBoss(inteiro &altura, inteiro &largura, inteiro &coordenadaXBoss, inteiro &coordenadaYBoss, cadeia &tipoBoss, logico &bossSorteado){
		inteiro sorteioBoss, validacao = 1

		se(bossSorteado == falso) {
			escreva("Todo grande herói tem um enorme inimigo! Vamos sortear seu adversário...\n ")
			sorteioBoss = ut.sorteia(1, 4)
			
			se(sorteioBoss == 1){
				tipoBoss = "fire"
			     escreva("\nIncêndio na arena!! Seu Boss será de FOGO!\n")	
			} 
			senao se(sorteioBoss == 2){
				tipoBoss = "water"
				escreva("\nPrepara a prancha de surf, a arena vai inundar!! Seu Boss será de ÁGUA!\n")
			}
			senao se(sorteioBoss == 3){
				tipoBoss = "earth"
				escreva("\nSe pedir por chuva tem que aguentar a lama!! Seu Boss será de TERRA!\n")  
			}
			senao se(sorteioBoss == 4){
				tipoBoss = "air"
				escreva("\nOu você cria asas, ou será levado pelo tornado!! Seu Boss será de AR!\n")
			}
		}
		
		bossSorteado = verdadeiro
		
		altura = ut.sorteia(1, 100)
		largura = ut.sorteia(1, 100)
		coordenadaXBoss = ut.sorteia(0, 100)
		coordenadaYBoss = ut.sorteia(0, 100)
	}

	funcao calculaCentroMagiaBoss(inteiro &centroX, inteiro &centroY){
		centroX = ut.sorteia(0, 100)
		centroY = ut.sorteia(0, 100)
	}

	funcao vazio mostraLogo() {

    escreva("\t\t||                                                            ==                    ||\n")
    escreva("\t\t||                .                       *                -####@=:        .        ||\n")
    escreva("\t\t||    *                       .                         -**#@@@@@=:                 ||\n")
    escreva("\t\t||                                                   .##@@#####@@@@:                ||\n")
    escreva("\t\t||                    .          *                 ###@#@WWW       ##               ||\n")
    escreva("\t\t||                                               ####@@@WWW         #      *        ||\n")
    escreva("\t\t||       .                                    ##@@@=##@@@@   .                      ||\n")
    escreva("\t\t||                   *                     --#@#####@@@@@@#                         ||\n")
    escreva("\t\t||                                       @==##WW@@@@##@@@@#            *            ||\n")
    escreva("\t\t||                          .          ##======##@W@@@@@W=                          ||\n")
    escreva("\t\t||                                    *@###@@@@@@@@@@@@@@W#-     *            .     ||\n")
    escreva("\t\t||        *                         *@@@@@@@@@############@@                        ||\n")
    escreva("\t\t||                      .         #@##=========#@@@@@@@@@@@W*           .           ||\n")
    escreva("\t\t||                             #########=====############@@WW                       ||\n")
    escreva("\t\t||              *            @@@W@@@@@@@@@@@@@@@@@@@@@@@@@@W@      .                ||\n")
    escreva("\t\t||                          ===##@@WW@@#####@@@@@@@@@@@WWWW@W@*              *      ||\n")
    escreva("\t\t||        .              +@===######@@@@@@######@############@W=*                   ||\n")
    escreva("\t\t||                   @@@W@===###@@######@@@@@@@@@@@@@@###########@                  ||\n")
    escreva("\t\t||         @####==###@@W#=##################@@@@@@#############@@@@@=*#WWW@@==      ||\n")
    escreva("\t\t||      ###@#########@ &&&   %%  &  & %%%% &&   &&  %%%   &&&&  %%%% WWWWW@@@@#@@@  ||\n")
    escreva("\t\t||    @#=#@@#@@####### &  & %  % & &  %    & & & & %   % &      %    @@@@#######@#@ ||\n")
    escreva("\t\t||      W##@#@@@###### &  & %  % &    %%%  &  &  & %%%%% &  &&& %%%  @@########@@#@ ||\n")
    escreva("\t\t||      :@=#@@@@@##### &&&  %  % & &  %    &     & %   % &    & %    ############@  ||\n")
    escreva("\t\t||        @=########== &     %%  &  & %%%% &     & %   %  &&&&  %%%% #########@@+   ||\n")
    escreva("\t\t||  *         #########===######################@@@@@@@@@@@@########@@@W@           ||\n")
    escreva("\t\t||        *           =@@W@@@@@@@@@@@@@@@@@@@@@@@@@WWW@@@@W@@@WW@#=         *       ||\n")
    	
	}
	
	funcao inicio(){

		real altura, largura, coordenadaX, coordenadaY, centroX, centroY
		inteiro tamanhoCirculo = 0, coordenadaFinalX, coordenadaFinalY, distanciaX, distanciaY
		real distancia 
		logico bossSorteado = falso
		logico escolhaMago = falso
		
		//Magias
		inteiro nivelMagia = 0
		inteiro tipoMagia = 0

		//Atributos Base
		inteiro vidaBase = 3000
		inteiro sorteBase = 70
		inteiro danoFogo	= 200
		inteiro danoAgua 	= 300
		inteiro danoTerra 	= 400
		inteiro danoAr 	= 100
		
		//Atributos Mago 1
		inteiro vidaMagoP1 = vidaBase 
		inteiro danoMagoP1 = 0
		inteiro tipoMago = 0
		
		//Atributos Boss
		cadeia tipoBoss = ""
		inteiro vidaBoss = 3000
		inteiro sorteBoss = 40
		inteiro rngSorteioBoss = 0
		inteiro rngBossCombate = 0
		inteiro alturaBoss = 0, larguraBoss = 0
		inteiro coordenadaXBoss = 0, coordenadaYBoss = 0

		//Combate
		inteiro rng
		inteiro resultado = 0

		mostraLogo()

		enquanto(vidaBase > 0 ou vidaBoss > 0){
			se(escolhaMago == verdadeiro){
				escreva("Informe qual a magia e o respectivo nivel: " + "\n")	
				escreva("1 - Magia de Fogo" +"        |       1 - Nivel 1" + "\n")
				escreva("2 - Magia de Água" + "        |       2 - Nivel 2" + "\n")
				escreva("3 - Magia de Terra" + "       |       3 - Nivel 3" + "\n")
				escreva("4 - Magia de Ar" + "\n")	
				leia(tipoMagia, nivelMagia)
			}
						
			se(escolhaMago == falso){
				escreva("\nInforme qual mago deseja, a magia, nivel: " + "\n")	
				escreva("1 - Mago de Fogo"  + "       |       " + "1 - Magia de Fogo" +"        |       1 - Nivel 1" + "\n")
				escreva("2 - Mago de Água" + "       |       " + "2 - Magia de Água" + "        |       2 - Nivel 2" + "\n")
				escreva("3 - Mago de Terra" + "      |       " + "3 - Magia de Terra" + "       |       3 - Nivel 3" + "\n")
				escreva("4 - Mago de Ar" + "         |       " + "4 - Magia de Ar" + "\n")	
				leia(tipoMago, tipoMagia, nivelMagia)

				se(tipoMago == 1) {
					vidaMagoP1 -= 1000
				}
				senao se(tipoMago == 3){
					vidaMagoP1 += 2000
				}
				senao se(tipoMago == 4){
					vidaMagoP1 -= 1500
				}
				escolhaMago = verdadeiro
			}		
			
			faca{
				escreva("\nO centro X e o centro Y: ")
				leia(centroX, centroY)

				se(tipoMagia != 1 e tipoMagia  != 2 e  tipoMagia != 3 e tipoMagia != 4){
					escreva("Magia inválida, tente novamente: \n")
					leia(tipoMagia)
				}
				se(nivelMagia < 1 ou nivelMagia > 4){
					escreva("Nível inválido, tente novamente: \n")
					leia(nivelMagia)
				}
				se(centroX < 0 ou centroX > 1000){
					escreva("Centro X inválido, tente novamente!\n")
					leia(centroX)
				}
				se(centroY < 0 ou centroY > 1000){
					escreva("Centro Y inválido, tente novamente!\n")
					leia(centroY)
				}
				
			}enquanto((tipoMagia != 1 e tipoMagia  != 2 e  tipoMagia != 3 e tipoMagia != 4) ou (nivelMagia < 1 ou nivelMagia > 4) ou (centroX < 0 ou centroX > 1000) ou (centroY < 0 ou centroY > 1000))

			parametrosBoss(alturaBoss, larguraBoss, coordenadaXBoss, coordenadaYBoss, tipoBoss, bossSorteado)
			
			// Condição para calcular o nível da mágia de acordo com a string "magia".
			se(tipoMagia == 1){
				tamanhoCirculo = fire(nivelMagia)
			} 
			senao se (tipoMagia == 2){
				tamanhoCirculo = water(nivelMagia)
			}
			senao se (tipoMagia == 3){
				tamanhoCirculo = earth(nivelMagia)
			} 
			senao se (tipoMagia == 4){
				tamanhoCirculo = air(nivelMagia)
			}

			//verificar se o inimigo está dentro da área de explosão
			distancia = calculoDistancia(coordenadaXBoss  + larguraBoss /2, coordenadaYBoss  + alturaBoss /2, centroX, centroY)

			escreva("\nVamos ver o que os dados dizem !\n")

			rng = sorteia (1 , 100) 
			escreva("A sua sorte é: ", rng, "\n")

			se (rng <= sorteBase) {
				se(distancia <= tamanhoCirculo){
					se(tipoMagia == 1){
						
						se(tipoMago == 1){
							danoMagoP1 = danoFogo*1.5
						}
						senao{
							danoMagoP1 = danoFogo
						}
						
						se(tipoBoss == "fire"){
							danoMagoP1 /= 4
						}
 						se(tipoBoss == "water"){
							danoMagoP1 *= 2
						}
						se(tipoBoss == "air"){
							danoMagoP1 /= 2
						}
						
						resultado = vidaBoss
						resultado = resultado - danoMagoP1
						vidaBoss = resultado

						escreva("\nExtinção dos dinossauros ?? NÃO, É DO INIMIGO MESMO!! Dano: " + danoMagoP1 + "\n")
						se(vidaBoss > 0){
							escreva("Vida restante do Boss: " + resultado + "\n")
						}
					}
					senao se (tipoMagia == 2){

						se(tipoMago==2){
							danoMagoP1 = danoAgua*1.25
						}
						senao{
							danoMagoP1 = danoAgua
						}

						se(tipoBoss == "fire"){
							danoMagoP1 /= 2
						}
						se(tipoBoss == "water"){
							danoMagoP1 /= 4
						}
						se(tipoBoss == "air"){
							danoMagoP1 *= 2
						}
						
						resultado = vidaBoss
						resultado = resultado - danoMagoP1
						vidaBoss = resultado
						
						escreva("\nHora de nadar !! TSUNAMI NO INIMIGO ! Dano: " + danoMagoP1 + "\n")
						
						se(vidaBoss > 0){
							escreva("Vida restante do Boss: " + resultado + "\n")
			   			}      			
					}
					senao se (tipoMagia == 3){ 

						danoMagoP1 = danoTerra	
						
						se(tipoBoss == "earth"){
							danoMagoP1 /= 4
						}

						resultado = vidaBoss
						resultado = resultado - danoMagoP1
						vidaBoss = resultado
						
						escreva("\nTá em choque ?? HORA DE TREMER COM ESSE TERREMOTO ! Dano: " + danoMagoP1 + "\n")
						
						se(vidaBoss > 0){
							escreva("Vida restante do Boss: " + resultado + "\n")
				   		}    				
					}
					senao se (tipoMagia == 4){

						se(tipoMago == 4){
							danoMagoP1 = danoAr*2
						}
						senao{
							danoMagoP1 = danoAr
						}

						se(tipoBoss == "fire"){
							danoMagoP1 *= 2
						}
						se(tipoBoss == "water"){
							danoMagoP1 /=  2
						}
						se(tipoBoss == "air"){
							danoMagoP1 /= 4
						}
						
						resultado = vidaBoss
						resultado = resultado - danoMagoP1
						vidaBoss = resultado
						
						escreva("\nSe segura que tá na hora de voar com esse tornado!! Dano: " + danoMagoP1 + "\n")
						
						se(vidaBoss > 0){
							escreva("Vida restante do Boss: " + resultado + "\n")
						}
				   	}        			
				}
				senao{
					escreva("Você teve sorte nos dados mas não na magia jovem! Não atingiu o oponente !\n")
				}
				se(vidaBoss <= 0){
				   	escreva("Boss Derrotado, você ganhou!")
				   	pare
				}
			}
			senao{
				 escreva("Sua sorte está baixa companheiro! Você não irá atacar o inimigo nesta rodada! \n")
			}

			escreva("Tudo que vai, volta! Vamos observar o que os dados dizem para o seu Boss !\n")

			rngBossCombate = sorteia (1 , 100) 
			escreva("A sorte do Boss foi: ", rngBossCombate)

			se(rngBossCombate <= sorteBoss){
				se(tipoBoss == "fire"){
					resultado = vidaMagoP1
					resultado = resultado - danoFogo
					vidaMagoP1 = resultado
					
					escreva("\nChama os bombeiros !! Hora de incendiar com a vingança do inimigo ! Dano do Boss: " + danoFogo + "\n")
						se(vidaMagoP1 > 0){
							escreva("Vida do mago restante: " + vidaMagoP1 + "\n")
					}
				}
				se(tipoBoss == "water"){
					resultado = vidaMagoP1
					resultado = resultado - danoAgua
					vidaMagoP1 = resultado
					
					escreva("\nBebeu água ?? Tá com sede ?? Olha o tsunami do inimigo ! Dano do Boss: " + danoAgua + "\n")
						se(vidaMagoP1 > 0){
							escreva("Vida do mago restante: " + vidaMagoP1 + "\n")
			   		}      			
				}
				se(tipoBoss == "earth"){
					resultado = vidaMagoP1
					resultado = resultado - danoTerra
					vidaMagoP1 = resultado
					
					escreva("\nDEZ GRAUS NA ESCALA RICHTER !! A vingança do inimigo veio forte ! Dano do Boss: " + danoTerra + "\n")
						se(vidaMagoP1 > 0){
							escreva("Vida restante do mago: " + vidaMagoP1 + "\n")
			   		}    				
				}
				se(tipoBoss == "air"){
					resultado = vidaMagoP1
					resultado = resultado - danoAr
					vidaMagoP1 = resultado
					escreva("\nA vingança veio no estilo Ícaro !! O inimigo vai te fazer voar para o sol com esse tornado !  Dano do Boss: " + danoAr + "\n")
						se(vidaMagoP1 > 0){
							escreva("Vida restante do mago: " + vidaMagoP1 + "\n")
					}
			   	}        			
				se(vidaMagoP1 <= 0){
				   	escreva("\nNinguém disse que seria fácil ! Você foi derrotado !") 
				   	pare
				} 
			}senao{
				 escreva("\nQuantos trevos de quatro folhas você está segurando ?? O inimigo não irá atacar nessa rodada !\n")
			}
			escreva("\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1799; 
 * @DOBRAMENTO-CODIGO = [119];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {danoFogo, 166, 10, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */