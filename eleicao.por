programa
{
	
	funcao inicio()
	{
		//matriz com os votos e as turmas
		inteiro voto[2][50]
		real contaVoto[8], ano
		inteiro contaVotoValido = 0, contaVotoNulo = 0, contaVotoBranco = 0
		//predefinindo número dos votos e da quantidade de eleitores
		inteiro ana = 1, pedro = 2, rita = 3, alfredo = 4, regina = 5, ricardo = 6
		real eleitores = 50
		//matriz para armazenar quantidade de votos de cada candidato por turma
		inteiro votoTurmaCandidato[6][3]

		//perguntando a quantidade de vezes necessária de acordo com a quantidade de eleitores
		para(inteiro i=0; i < eleitores; i++)
		{
			escreva("Sua turma: ")
			leia(voto[0][i])
			escreva("Vote: ")
			leia(voto[1][i])

			//verificando se teve voto errado e perguntando novamente
			enquanto(voto[1][i] != 0 e voto[1][i] != 10 e voto[1][i] != 1 e voto[1][i] != 2 e voto[1][i] != 3 e voto[1][i] != 4 e voto[1][i] != 5 e voto[1][i] != 6 )
			{
				escreva("Candidato inválido, Informe o número correto do candidato : ")
				leia(voto[1][i])
			}
			
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
			limpa()
		}          
		// contando votos válidos:
		para(inteiro i = 2; i < 8; i++)
		{
			contaVotoValido = contaVotoValido + contaVoto[i]
		}

		// mostrando porcentagens
		escreva("Total de eleitores         : "+eleitores+"\n")
		escreva("Total de eleitores válidos : "+contaVotoValido+"\n" )
		escreva("Total de votos nulos       : "+contaVoto[0]+"\n")
		escreva("Total de votos brancos     : "+contaVoto[1]+"\n")
		escreva("Porcentagem de votos       : ", 100 * (contaVotoValido / eleitores),"% de votos válidos, ", 100 * (contaVoto[0] / eleitores),"% de votos nulos e ", 100 * (contaVoto[1] / eleitores),"% de votos brancos\n\n\n")

		// mostrando porcentagem
		escreva("Ana     : ", 100 * (contaVoto[2] / eleitores) ,"%\n")
		escreva("Pedro   : ", 100 * (contaVoto[3] / eleitores) ,"%\n")
		escreva("Rita    : ", 100 * (contaVoto[4] / eleitores) ,"%\n")
		escreva("Alfredo : ", 100 * (contaVoto[5] / eleitores) ,"%\n")
		escreva("Regina  : ", 100 * (contaVoto[6] / eleitores) ,"%\n")
		escreva("Ricardo : ", 100 * (contaVoto[7] / eleitores) ,"%\n\n\n")

		//mostrando porcentagem em relação as turmas
		para(inteiro i = 0; i < eleitores; i++)
		{
			//contabilizando votos por turma da ana em um novo vetor
			se(voto[0][i] == 1 e voto[1][i] == ana)
			{
				votoTurmaCandidato[0][0]++
			}
			se(voto[0][i] == 2 e voto[1][i] == ana)
			{
				votoTurmaCandidato[0][1]++
			}
			se(voto[0][i] == 3 e voto[1][i] == ana)
			{
				votoTurmaCandidato[0][2]++
			}

			//contabilizando votos por turma do pedro em um novo vetor
			se(voto[0][i] == 1 e voto[1][i] == pedro)
			{
				votoTurmaCandidato[1][0]++
			}
			se(voto[0][i] == 2 e voto[1][i] == pedro)
			{
				votoTurmaCandidato[1][1]++
			}
			se(voto[0][i] == 3 e voto[1][i] == pedro)
			{
				votoTurmaCandidato[1][2]++
			}

			//contabilizando votos por turma da rita em um novo vetor
			se(voto[0][i] == 1 e voto[1][i] == rita)
			{
				votoTurmaCandidato[2][0]++
			}
			se(voto[0][i] == 2 e voto[1][i] == rita)
			{
				votoTurmaCandidato[2][1]++
			}
			se(voto[0][i] == 3 e voto[1][i] == rita)
			{
				votoTurmaCandidato[2][2]++
			}

			//contabilizando votos por turma do alfredo em um novo vetor
			se(voto[0][i] == 1 e voto[1][i] == alfredo)
			{
				votoTurmaCandidato[3][0]++
			}
			se(voto[0][i] == 2 e voto[1][i] == alfredo)
			{
				votoTurmaCandidato[3][1]++
			}
			se(voto[0][i] == 3 e voto[1][i] == alfredo)
			{
				votoTurmaCandidato[3][2]++
			}

			//contabilizando votos por turma da regina em um novo vetor
			se(voto[0][i] == 1 e voto[1][i] == regina)
			{
				votoTurmaCandidato[4][0]++
			}
			se(voto[0][i] == 2 e voto[1][i] == regina)
			{
				votoTurmaCandidato[4][1]++
			}
			se(voto[0][i] == 3 e voto[1][i] == regina)
			{
				votoTurmaCandidato[4][2]++
			}

			//contabilizando votos por turma do ricardo em um novo vetor
			se(voto[0][i] == 1 e voto[1][i] == ricardo)
			{
				votoTurmaCandidato[5][0]++
			}
			se(voto[0][i] == 2 e voto[1][i] == ricardo)
			{
				votoTurmaCandidato[5][1]++
			}
			se(voto[0][i] == 3 e voto[1][i] == ricardo)
			{
				votoTurmaCandidato[5][2]++
			}
		}

		//mostrando porcentagens de votos em relação as turmas
		escreva("Ana     : ",100* (votoTurmaCandidato[0][0] / contaVoto[2]),"% (Turma 1), ",100* (votoTurmaCandidato[0][1] / contaVoto[2]),"% (Turma 2), ",100* (votoTurmaCandidato[0][2] /  contaVoto[2]),"% (Turma 3)\n")
		escreva("Pedro   : ",100* (votoTurmaCandidato[1][0] / contaVoto[3]),"% (Turma 1), ",100* (votoTurmaCandidato[1][1] / contaVoto[3]),"% (Turma 2), ",100* (votoTurmaCandidato[1][2] /  contaVoto[3]),"% (Turma 3)\n")
		escreva("Rita    : ",100* (votoTurmaCandidato[2][0] / contaVoto[4]),"% (Turma 1), ",100* (votoTurmaCandidato[2][1] / contaVoto[4]),"% (Turma 2), ",100* (votoTurmaCandidato[2][2] /  contaVoto[4]),"% (Turma 3)\n")
		escreva("Alfredo : ",100* (votoTurmaCandidato[3][0] / contaVoto[5]),"% (Turma 1), ",100* (votoTurmaCandidato[3][1] / contaVoto[5]),"% (Turma 2), ",100* (votoTurmaCandidato[3][2] /  contaVoto[5]),"% (Turma 3)\n")
		escreva("Regina  : ",100* (votoTurmaCandidato[4][0] / contaVoto[6]),"% (Turma 1), ",100* (votoTurmaCandidato[4][1] / contaVoto[6]),"% (Turma 2), ",100* (votoTurmaCandidato[4][2] /  contaVoto[6]),"% (Turma 3)\n")
		escreva("Ricardo : ",100* (votoTurmaCandidato[5][0] / contaVoto[7]),"% (Turma 1), ",100* (votoTurmaCandidato[5][1] / contaVoto[7]),"% (Turma 2), ",100* (votoTurmaCandidato[5][2] / contaVoto[7]),"% (Turma 3)\n")
	}
}
