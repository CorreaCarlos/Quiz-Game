programa {
  inclua biblioteca Util --> U
  cadeia perguntas[10], resposta_certa[10], alternativa_A[10], alternativa_B[10], alternativa_C[10], alt_escolhida
  inteiro ponteiro = 0, pontos = 0
  caracter opcao, enter
  funcao inicio() 
    {
    limpa()
    menu()
    }

  funcao menu()
    {
    limpa()
    escreva("Bem-vindo ao Quiz\n")
    U.aguarde(25)
    escreva("1 - Cadastrar Pergunta\n")
    U.aguarde(25)
    escreva("2 - Jogar Quiz\n")
    U.aguarde(25)
    escreva("3 - Sair\n")
    U.aguarde(25)
    escreva("O que você deseja fazer: ")
    leia(opcao)

    escolha(opcao)
    {
      caso '1':
      {
        cadastra_pergunta()
        pare
      }
      caso '2':
      {
        jogar()
        pare
      }
      caso '3':
      {
        sair()
        pare
      }
      caso contrario:
      {
        escreva("Opção Inválida..")
        U.aguarde(1000)
        menu()
        pare
      }
    }
    }

  funcao cadastra_pergunta()
    {
      limpa()
      se(ponteiro >= 10)
      {
        escreva("O limite de 10 questões já foram cadastradas!")
      }
      senao
      {
        escreva("Informe a pergunta:\n")
        leia(perguntas[ponteiro])
        escreva("Informe a alternativa A:\n")
        leia(alternativa_A[ponteiro])
        escreva("Informe a alternativa B:\n")
        leia(alternativa_B[ponteiro])
        escreva("Informe a alternativa C:\n")
        leia(alternativa_C[ponteiro])
        escreva("Informe a alternativa correta(somente a letra correspondente):\n")
        leia(resposta_certa[ponteiro])
        ponteiro++
        U.aguarde(200)
        limpa()
        escreva("Pergunta Cadastrada com Sucesso!")
      }
      retorna()
    }

  funcao jogar()
    {
    pontos = 0
    limpa()
    se(ponteiro < 10)
    {
      escreva("O quiz deve possuir um total de 10 questões para poder jogar\n")
      escreva("Volte e cadastre todas as questões")
    }
    senao
    {
      para(inteiro i = 0;i<ponteiro;i++)
      {
        limpa()
        escreva(i+1," - ",perguntas[i],"\n")
        escreva("a)",alternativa_A[i],"\n")
        escreva("b)",alternativa_B[i],"\n")
        escreva("c)",alternativa_C[i],"\n")
        escreva("Qual você escolhe\n(Qualquer resposta diferente das opções resulta em erro na questão)\nResponda com letra maíuscula: ")
        leia(alt_escolhida)
        se(alt_escolhida
         
         == resposta_certa[i])
          {
            escreva("Você Acertou!\n")
            pontos++
          }
        senao
          {
            escreva("Resposta Errada :(\n")
          }
        se(i<ponteiro-1)
          {
            escreva("\nPressione [ENTER] para a próxima questão\n")
            leia(enter)
          }
        senao
          {
            escreva("Quiz Finalizado!\n")
            escreva("Pressione [ENTER] para ver o resultado\n")
            leia(enter)
          }
      }
      limpa()
      escreva("Resultado\n\n")
      escreva("Pontos = ",pontos,"/10")
    }
    retorna()
    }

  funcao sair()
    {
    limpa()
    escreva("Finalizando Sistema em 3...")
    U.aguarde(1000)
    limpa()
    escreva("Finalizando Sistema em 2...")
    U.aguarde(1000)
    limpa()
    escreva("Finalizando Sistema em 1...")
    U.aguarde(1000)
    limpa()
    }

  funcao retorna()
    {
      U.aguarde(1000)
      escreva("\nPara voltar ao menu pressione [ENTER]")
      leia(enter)
      menu()
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2376; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */