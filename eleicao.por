programa
{
	
	funcao inicio()
	{
		inteiro voto[2][50]
		inteiro contaVoto[8], ano
		inteiro contaVotoValido = 0, contaVotoNulo = 0, contaVotoBranco = 0
		
		para(inteiro i=0; i < 50; i++)
		{
			escreva("Sua série: ")
			leia(voto[0][i])
			escreva("Vote: ")
			leia(voto[1][i])
			//contabilizando votos
			se(voto[1][i] == 0)
			{
				contaVoto[0]++
			}
			se(voto[1][i] == 10)
			{
				contaVoto[1]++
			}
			se(voto[1][i] == 1)
			{
				contaVoto[2]++
			}
			se(voto[1][i] == 2)
			{
				contaVoto[3]++
			}
			se(voto[1][i] == 3)
			{
				contaVoto[4]++
			}
			se(voto[1][i] == 4)
			{
				contaVoto[5]++
			}
			se(voto[1][i] == 5)
			{
				contaVoto[6]++
			}
			se(voto[1][i] == 6)
			{
				contaVoto[7]++
			}
		}
		// contando votos válidos:
		para(inteiro i = 2; i < 8; i++)
		{
			contaVotoValido = contaVotoValido + contaVoto[i]
		}

		// mostrando porcentagens
		escreva("Total de eleitores : 50")
		escreva("Total de eleitores válidos : "+contaVotoValido+"\n" )
		escreva("Total de votos nulos : "+contaVoto[0]+"\n")
		escreva("Total de votos brancos : "+contaVoto[1]+"\n")
		escreva("Porcentagem de votos : ", 100 * (contaVotoValido / 50),"% de votos válidos, ", 100 * (contaVoto[0] / 50),"% de votos nulos e ", 100 * (contaVoto[1] / 50),"% de votos brancos\n")
		
	}
}
