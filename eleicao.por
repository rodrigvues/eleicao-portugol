programa
{
	
	funcao inicio()
	{
		inteiro voto[2][50]
		inteiro contaVoto[8], ano
		inteiro contaVotoValido = 0, contaVotoNulo = 0, contaVotoBranco = 0
		inteiro ana = 1, pedro = 2, rita = 3, alfredo = 4, regina = 5, ricardo = 6
		inteiro eleitores = 50
		inteiro votoTurmaCandidato[6][3]
		
		para(inteiro i=0; i < eleitores; i++)
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
			limpa()
		}
		// contando votos válidos:
		para(inteiro i = 2; i < 8; i++)
		{
			contaVotoValido = contaVotoValido + contaVoto[i]
		}

		// mostrando porcentagens
		escreva("Total de eleitores : "+eleitores+"\n")
		escreva("Total de eleitores válidos : "+contaVotoValido+"\n" )
		escreva("Total de votos nulos : "+contaVoto[0]+"\n")
		escreva("Total de votos brancos : "+contaVoto[1]+"\n")
		escreva("Porcentagem de votos : ", 100 * (contaVotoValido / eleitores),"% de votos válidos, ", 100 * (contaVoto[0] / 50),"% de votos nulos e ", 100 * (contaVoto[1] / 50),"% de votos brancos\n")

		// mostrando porcentagem
		escreva("Ana : ", 100 * (voto[1][ana] / eleitores) ,"\n")
		escreva("Pedro : ", 100 * (voto[1][pedro] / eleitores) ,"\n")
		escreva("Rita : ", 100 * (voto[1][rita] / eleitores) ,"\n")
		escreva("Alfredo : ", 100 * (voto[1][alfredo] / eleitores) ,"\n")
		escreva("Regina : ", 100 * (voto[1][regina] / eleitores) ,"\n")
		escreva("Ricardo : ", 100 * (voto[1][ricardo] / eleitores) ,"\n")

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
			se(voto[0][i] == 3 e voto[2][i] == rita)
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
		
		escreva("Ana : ",100* (votoTurmaCandidato[0][0] / voto[1][ana])," (Turma 1), ",100* (votoTurmaCandidato[0][1] / voto[1][ana])," (Turma 2), ",100* (votoTurmaCandidato[0][2] / voto[1][ana])," (Turma 3)\n")
		escreva("Pedro : ",100* (votoTurmaCandidato[1][0] / voto[1][pedro])," (Turma 1), ",100* (votoTurmaCandidato[1][1] / voto[1][pedro])," (Turma 2), ",100* (votoTurmaCandidato[1][2] / voto[1][pedro])," (Turma 3)\n")
		escreva("Rita : ",100* (votoTurmaCandidato[2][0] / voto[1][rita])," (Turma 1), ",100* (votoTurmaCandidato[2][1] / voto[1][rita])," (Turma 2), ",100* (votoTurmaCandidato[2][2] / voto[1][rita])," (Turma 3)\n")
		escreva("Alfredo : ",100* (votoTurmaCandidato[3][0] / voto[1][alfredo])," (Turma 1), ",100* (votoTurmaCandidato[3][1] / voto[1][alfredo])," (Turma 2), ",100* (votoTurmaCandidato[3][2] / voto[1][alfredo])," (Turma 3)\n")
		escreva("Regina : ",100* (votoTurmaCandidato[4][0] / voto[1][regina])," (Turma 1), ",100* (votoTurmaCandidato[4][1] / voto[1][regina])," (Turma 2), ",100* (votoTurmaCandidato[4][2] / voto[1][regina])," (Turma 3)\n")
		escreva("Ricardo : ",100* (votoTurmaCandidato[5][0] / voto[1][ricardo])," (Turma 1), ",100* (votoTurmaCandidato[5][1] / voto[1][ricardo])," (Turma 2), ",100* (votoTurmaCandidato[5][2] / voto[1][ricardo])," (Turma 3)\n")
	}
}
