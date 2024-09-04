programa {
  funcao inicio() {
    //variaveis
    real saque
    real saldo = 0 
    real inves = 0
    real rendim = 0
    real deposi
    cadeia parar
    inteiro mes = 0
    cadeia ext =""
    inteiro paginaini = 1 

    //pagina inicial
    enquanto(paginaini != 0){
    escreva("----MENU----|\n")
    escreva("1- SALDO R$", saldo,"|\n")
    escreva("2- SAQUE             |\n")
    escreva("3- DEPOSITO          |\n")
    escreva("4- EXTRATO           |\n")
    escreva("5- INVESTIMENTO      |\n")
    escreva("0- SAIR              |\n")

    escreva("Digite: ")
    leia(paginaini)

    limpa()
    escolha(paginaini){

      caso 1:
      escreva("Seu saldo é de: ", saldo, "\n")
      pare

      caso 2:
      escreva("Valor do Saque: ")
      leia(saque)

      enquanto(saque < 0){

        escreva("Inválido, tente novamente: ")
        leia(saque)

      }
      se(saque > saldo){

        escreva("NÃO AUTORIZADO (DINHEIRO INSUFICIENTE)!\n")
        escreva("Para continuar aperte 'ENTER ")
        leia(parar)
    

      }
      senao{

        saldo = saldo - saque

        ext = ext + "Saque - R$" + saque + "\n"
        escreva("Saque bem sucedido! \n")
        escreva("Para continuar aperte 'ENTER'")

        limpa(parar)

        limpa()

      }

      pare

      caso 3:

      escreva("Valor do deposito: R$")
      leia(deposi)
      enquanto(deposi < 0){
        escreva("Valor inválido (Não se pode depositar 'R$0' ")
        leia(deposi)

      }

      saldo = saldo + deposi

      ext = ext + "Deposito - R$" + deposi + "\n"
      
      escreva("Deposito bem sucedido!\n")
      escreva("Para continuar aperte 'ENTER'")

      leia(parar)

      limpa()

      pare

      caso 4:

      escreva(ext)

      escreva("Para continuar aperte 'ENTER'")
      leia(parar)
      limpa()
      pare

      caso 5:

      escreva("Valor do investimento: R$")
      leia(inves)
      escreva("Meses que deseja investir: ")
      leia(mes)

      se(saldo >= inves){

        saldo = saldo - inves

        para(inteiro cont = 1; cont <= mes; cont++ ){
          rendim = inves * 1.05
          inves = rendim
        }

      escreva("Você tem ",mes," de investimento \n")
    
      }

      senao{
        escreva("NEGADO")
      }
    
    }
    }
  }
}

