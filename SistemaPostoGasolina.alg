algoritmo "Projeto: Sistema para Posto de Combust�vel"
// TASCOM CODE ACADEMY
// M�dulo: L�gica de Programa��o / Projeto Sistema Posto de Combust�vel
//Prof: Luis Henrique
//Aluno: Jo�o Apu� de Melo

var
menuPrincipal, menuComb, cadastroComb, i, nFunc, nComb, sit:inteiro
pagPosto, postoConsulta:inteiro
menuConv, cadastroConv, pagConv, nProd:inteiro
soma, totalComb, recComb, abstComb, totalConv, recConv, valorConv:real
produto, resposta: caracter
//vetores do menu Funcion�rios
nomeFunc: vetor [1..5] de caracter
cargoFunc: vetor [1..5] de caracter
salFunc: vetor [1..5] de real
//vetores do menu combust�veis
tipoComb: vetor [1..3] de caracter
preComb: vetor [1..3] de real
quantComb: vetor [1..3] de real
//vetores do menu conveni�ncia
tipoProd:vetor [1..5] de caracter
marcaProd:vetor [1..5] de caracter
preProd:vetor [1..5] de real
quantProd: vetor [1..5] de inteiro

inicio
sit:=3
enquanto sit=3 faca
   limpatela
   escreval()
   escreval(" --- MENU PRINCIPAL ---- ")
   escreval("|                       |")
   escreval("|     1. Posto          |")
   escreval("|     2. Conveni�ncia   |")
   escreval("|     3. Sair           |")
   escreval("|                       |")
   escreval("'-----------------------'")
   leia(menuPrincipal)
   escolha(menuPrincipal)
      escreval()

   caso 1
      limpatela
      escreval("-- POSTO DE COMBUST�VEL --")
      escreval("|                        |")
      escreval("|      1. Cadastrar      |")
      escreval("|      2. Consultar      |")
      escreval("|      3. Pagamento      |")
      escreval("|      4. Voltar         |")
      escreval("|                        |")
      escreval("'------------------------'")
      leia(menuComb)
      escolha(menuComb)

      caso 1
         limpatela
         escreval("'----- MENU CADASTRO -----")
         escreval("|                        |")
         escreval("|    1. Funcion�rios     |")
         escreval("|    2. Combust�vel      |")
         escreval("|    3. MENU PRINCIPAL   |")
         escreval("|                        |")
         escreval("'-------------------------")
         leia(cadastroComb)
         escolha(cadastroComb)

         caso 1
            escreval()
            escreva("Quantidade de cadastros: ")
            leia(nFunc)
            limpatela
            para i de 1 ate nFunc faca
               se(nomeFunc[i]="") entao
                  escreva("Nome: ")
                  leia(nomeFunc[i])
                  escreva("Cargo: ")
                  leia(cargoFunc[i])
                  escreva("Sal�rio: ")
                  leia(salFunc[i])
                  escreval()
               fimse
            fimpara

            escreval("Cadastro realizado com sucesso.")
            escreva("Deseja voltar ao Menu Principal (S/N)? ")
            leia(resposta)

            se (resposta="S")entao
               sit:=3
               timer(1500)
               limpatela
               timer(0)

            senao
               limpatela
               escreval()
               escreva("Obrigade por utilizar nosso sistema.")
               sit:=0
            fimse

         caso 2
            escreval("Quantos tipos de Combust�vel para cadastro (1 � 3): ")
            leia(nComb)
            limpatela
            para i de 1 ate nComb faca
               se (tipoComb[i]="")entao
                  escreva("Tipo do Combust�vel (�lcool, g�s ou gasolina): ")
                  leia(tipoComb[i])
                  escreva("Pre�o do Litro/Metro C�bico (apenas n�meros): ")
                  leia(preComb[i])
                  escreva("Quantidade (apenas n�meros): ")
                  leia(quantComb[i])
                  escreval()
               fimse
            fimpara

            escreval("Cadastro realizado com sucesso.")
            escreva("Deseja voltar ao Menu Principal (S/N)? ")
            leia(resposta)

            se (resposta="S")entao
               sit:=3
               timer(1500)
               limpatela
               timer(0)

            senao
               limpatela
               escreval()
               escreva("Obrigade por utilizar nosso sistema.")
            fimse

         caso 3
            sit:=3

         outrocaso
            escreval("Op��o Inv�lida!")
         fimescolha

      caso 2
         limpatela
         escreval("------ MENU CONSULTA -----")
         escreval("|                        |")
         escreval("|    1. Funcion�rios     |")
         escreval("|    2. Combust�veis     |")
         escreval("|    3. MENU PRINCIPAL   |")
         escreval("|                        |")
         escreval("'-------------------------")
         leia(postoConsulta)
         escolha(postoConsulta)

         caso 1
            limpatela
            se(nomeFunc[1]="")entao
               escreval("N�o h� funcion�rios cadastrados.")

            senao
               escreval("Lista de Funcion�rios: ")
               para i de 1 ate 5 faca
                  escreval("Nome: " ,nomeFunc[i])
                  escreval("Cargo: " ,cargoFunc[i])
                  escreval("Sal�rio: " ,salFunc[i])
                  escreval()
               fimpara
            fimse

            escreva("Deseja voltar ao Menu Principal (S/N)? ")
            leia(resposta)

            se (resposta="S")entao
               sit:=3
               timer(1500)
               limpatela
               timer(0)

            senao
               limpatela
               escreval()
               escreva("Obrigade por utilizar nosso sistema.")
            fimse

         caso 2
            se(tipoComb[1]="")entao
               escreval("N�o h� combust�veis cadastrados.")

            senao
               escreval("Combust�veis: ")
               para i de 1 ate 3 faca
                  escreval("Tipo: " ,tipoComb[i])
                  escreval("Pre�o: " ,preComb[i])
                  escreval("Quantidade: " ,quantComb[i])
                  escreval()
               fimpara
            fimse

            escreva("Deseja voltar ao Menu Principal (S/N)? ")
            leia(resposta)

            se (resposta="S")entao
               sit:=3
               timer(1500)
               limpatela
               timer(0)

            senao
               limpatela
               escreval()
               escreva("Obrigade por utilizar nosso sistema.")
            fimse

         caso 3
            sit:=3

         outrocaso
            escreval("Opera��o Inv�lida!")
         fimescolha

      caso 3
         limpatela
         escreval("---- FORMA PAGAMENTO -----")
         escreval("|                        |")
         escreval("|  1. Cr�dito/D�bito     |")
         escreval("|  2. Pix/Transfer�ncia  |")
         escreval("|  3. Dinheiro           |")
         escreval("|  4. QRCODE             |")
         escreval("|  5. MENU PRINCIPAL     |")
         escreval("|                        |")
         escreval("'-------------------------")
         leia(pagPosto)
         escolha(pagPosto)

         caso 1
            escreval("Maquineta do cart�o liberada!")
            timer(1500)
            escreva("Obrigade por utilizar nosso sistema!")
            limpatela
            timer(0)
            sit:=3

         caso 2
            escreval("O n�mero do nosso Pix �: 000361660000288")
            timer(3000)
            escreva("Obrigade por utilizar nosso sistema!")
            limpatela
            timer(0)
            sit:=3

         caso 3
            escreval()
            escreva("Valor do Abastecimento: ")
            leia(abstComb)
            escreva("Dinheiro Recebido: ")
            leia(recComb)
            totalComb:=recComb-abstComb
            escreval("Troco de R$ " ,totalComb, " reais.")
            timer(1500)
            escreva("Obrigade por utilizar nosso sistema!")
            limpatela
            timer(0)
            sit:=3

         caso 4
            escreval("Sistema ainda n�o atualizado para essa forma de pagamento.")
            timer(2000)
            escreva("Por favor, entre em contato com a TASCOM Inform�tica.")
            limpatela
            timer(0)
            sit:=3

         caso 5
            sit:=3

         outrocaso
            escreva("Opera��o Inv�lida!")
         fimescolha

      caso 4
         sit:=3

      outrocaso
         escreva("Opera��o Inv�lida!")
      fimescolha

   caso 2
      limpatela
      escreval("-- LOJA DE CONVENI�NCIA --")
      escreval("|                        |")
      escreval("|    1. Produtos         |")
      escreval("|    2. Pagamento        |")
      escreval("|    3. MENU PRINCIPAL   |")
      escreval("|                        |")
      escreval("'------------------------'")
      leia(menuConv)
      escolha(menuConv)

      caso 1
         limpatela
         escreval("----- MENU PRODUTOS  -----")
         escreval("|                        |")
         escreval("|    1. Cadastro         |")
         escreval("|    2. Consulta         |")
         escreval("|    3. MENU PRINCIPAL   |")
         escreval("|                        |")
         escreval("'------------------------'")
         leia(cadastroConv)
         escolha(cadastroConv)

         caso 1
            escreval()
            escreva("Quantidade de Produtos para cadastro: ")
            leia(nProd)
            limpatela
            para i de 1 ate nProd faca
               se (tipoProd[i]="") entao
                  escreva("Tipo: ")
                  leia(tipoProd[i])
                  escreva("Marca: ")
                  leia(marcaProd[i])
                  escreva("Pre�o: ")
                  leia(preProd[i])
                  escreva("Quantidade (apenas n�meros): ")
                  leia(quantProd[i])
                  escreval()
               fimse
            fimpara

            escreval("Cadastro realizado com sucesso.")
            escreva("Deseja voltar ao Menu Principal (S/N)? ")
            leia(resposta)

            se (resposta="S")entao
               sit:=3
               timer(1500)
               limpatela
               timer(0)

            senao
               limpatela
               escreva("Obrigade por utilizar nosso sistema.")
            fimse

         caso 2
            escreva("Digite o nome do Produto ou Marca: ")
            leia(produto)
            escreval()
            para i de 1 ate 5 faca
               se((produto=tipoProd[i]) ou (produto=marcaProd[i])) entao
                  escreval("Tipo: " ,tipoProd[i])
                  escreval("Marca: " ,marcaProd[i])
                  escreval("Pre�o: " ,preProd[i])
                  escreval("Quantidade: " ,quantProd[i])
                  escreval()
               fimse
            fimpara

            escreval("Cadastro realizado com sucesso.")
            escreva("Deseja voltar ao Menu Principal (S/N)? ")
            leia(resposta)

            se (resposta="S")entao
               sit:=3
               timer(1500)
               limpatela
               timer(0)

            senao
               limpatela
               escreva("Obrigade por utilizar nosso sistema.")
               sit:=0
            fimse

         caso 3
            sit:=3

         outrocaso
            escreva("Op��o Inv�lida!")
         fimescolha

      caso 2
         limpatela
         escreval("---- FORMA PAGAMENTO -----")
         escreval("|                        |")
         escreval("|  1. Cr�dito/D�bito     |")
         escreval("|  2. Pix/Transfer�ncia  |")
         escreval("|  3. Dinheiro           |")
         escreval("|  4. QRCODE             |")
         escreval("|  5. MENU PRINCIPAL     |")
         escreval("|                        |")
         escreval("'-------------------------")
         leia(pagConv)
         escolha(pagConv)

         caso 1
            escreval("Maquineta do cart�o liberada!")
            timer(1500)
            escreva("Obrigade por utilizar nosso sistema!")
            limpatela
            timer(0)
            sit:=3

         caso 2
            escreval("O n�mero do nosso Pix �: 000361660000288")
            timer(1500)
            escreva("Obrigade por utilizar nosso sistema!")
            limpatela
            timer(0)
            sit:=3

         caso 3
            escreval()
            escreva("Valor Compras: ")
            leia(valorConv)
            escreva("Dinheiro Recebido: ")
            leia(recConv)
            totalConv:=recConv-valorConv
            limpatela
            escreva("Troco de R$ " ,totalConv, " reais.")
            timer(1500)
            escreva("Obrigade por utilizar nosso sistema!")
            limpatela
            timer(0)
            sit:=3

         caso 4
            escreval("Sistema ainda n�o atualizado para essa forma de pagamento.")
            timer(2000)
            escreva("Por favor, entre em contato com a TASCOM Inform�tica.")
            limpatela
            timer(0)
            sit:=3

         caso 5
            sit:=3

         outrocaso
            timer(1000)
            escreval("Opera��o Inv�lida!")
            timer(0)
            limpatela
         fimescolha

      caso 3
         limpatela
         escreva("Obrigade por utilizar nosso sistema!")
         sit:=0

      outrocaso
         timer(1000)
         escreval("Opera��o Inv�lida!")
         timer(0)
         limpatela
      fimescolha

   caso 3
      limpatela
      escreva("Obrigade por utilizar nosso sistema!")

   outrocaso
      timer(1000)
      escreval("Opera��o Inv�lida! Tente novamente.")
      timer(0)
      limpatela
   fimescolha
fimescolha
fimenquanto
fimalgoritmo
