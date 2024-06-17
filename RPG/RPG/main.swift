import Foundation

//MARK: 1 SEGUNDO = 1000000
var velocidadeTexto = useconds_t(750000)
var capitulo: Capitulo
var protagonista = Protagonista()
var capitulos : [String] = []
var resposta: Int
var iniciarJornada = true
let carta1 = Item(nome: "Carta 1", descricao: "[ sofiamusso@techmail.com ]".green2() + "\n\nAntes de qualquer coisa não se assuste...não é nenhuma força sobrenatural entrando em contato com você, essa mensagem estava programada para um tempo em que sabia que estaria pronto para ler o que tenho a lhe dizer nessa carta...\n\nPor muito tempo, nós criamos nosso projeto do BAXTER, mas nos meus últimos meses me vi como o Titanic encontrando um iceberg que cruza seu caminho sem aviso prévio. Decidi ficar com você e Jaime o máximo que pude, precisando abrir mão do nosso projeto, e não me arrependo disso por sequer um segundo. Eu amo vocês até o além.\n\nPassaram-se tantos anos e agora você já é um verdadeiro homem, meu pequenino cresceu e agora o mundo precisa te conhecer. Não tenha medo, saiba que há alguém que se importa com você. Eu tenho um convite para você, este é somente o primeiro e-mail que inicia um instigante desafio.\n\nLembra das horas em que sumia por que estava muito ocupada? Escrevi diversas cartas e em cada uma há uma pergunta que você deve encontrar um jeito de responder, além de um desafio que, ao ser vencido, te possibilitará achar a próxima carta  e te ensinara o que vocé precisa saber para terminar o nosso projeto que iniciamos juntos. Espero que você encontre todas as cartas e aproveite esta jornada, esta foi a única forma que encontrei de estarmos juntos mesmo após a minha partida. Para achar a primeira carta você deve olhar no " + "Lugar Mais Alto do Mundo...".yellow2() + "Eu te amo! E lembre-se: o segredo está nas palavras, procure refletir...", quantidade: 1, isItemUtilizavel: false)

var prologo = [
    "Bem-vindo à cidade de Veridis Quo, uma metrópoles caótica como qualquer outra, os prédios tomaram conta da vista, mas as ruas já não são mais as mesmas...as ruas estão mais vazias já que boa parte das pessoas assumiram trabalhos remotos, nesses tempos se faz somente o necessário fora de casa.",
    
    "Sofia é uma experiente engenheira de software, que sempre foi apaixonada pela tecnologia e via um grande potencial de usá-la para tornar o mundo um lugar melhor...na verdade ela era apaixonada por poder impactar as pessoas com sua tecnologia.\n\nEla levava uma vida tranquila com seu marido Jaime e seu filho Luís, seu marido a amava, mas sempre sentiu que Sofia passava muito tempo trabalhando e deixando sua família de lado, ele sempre quis que tudo voltasse a ser como quando ainda eram jovens apaixonados na faculdade...",
    
    "Luís sempre teve admiração por sua mãe, ver ela trabalhando em novos sistemas e programas era como ver um mágico invocando todo seu conhecimento em majestosos feitiços, ele se lembra até hoje do dia em que ela fez um sistema que ajudou na previsão de tragédias que aconteceriam por todo o país.\n\nSofia sempre lia para ele um de seus livros favoritos, \"O Guia Definitivo do Mochileiro das Galáxias\", que contava a jornada em busca de uma inteligência artificial chamada " + "BAXTER".green2() + ", capaz de responder a qualquer pergunta da humanidade...)",
    
    
    "Sofia resolveu recriar a inteligência artificial dessa história para se aproximar mais de seu filho e passar mais tempo com ele, alem de ensiná-lo a desenvolver soluções de software.",
    
    "Anos se passaram, e Sofia chegou muito perto de terminar a construção da inteligência artificial, só que uma notícia mudou seus planos e o daquela família, em uma consulta de rotina ela recebeu a noticia que estava gravemente doente e teria pouco tempo de vida. Sofia viu sua vida passar diante de seus olhos ouvindo o que o médico tinha a dizer, recomendando repouso eque ela deveria aproveitar o tempo que ainda tinha com sua família.",
    
    "Sofia decidiu ouvir o conselho do médico, contudo o que mais a preocupava era o fato de que ela não estaria mais ali para terminar o projeto de BAXTER com o filho, e também não poderia mais ensiná-lo tantas coisas que ela ainda havia aprendido ao longo de sua vida. Motivada por essa vontade de terminar a educação do filho, Sofia construiu um plano para estar com ele mesmo após a sua partida.\n\nAlgum tempo depois Sofia partiu...deixando para trás um vazio, muitas saudades e uma aventura para o seu fiho...",
    
    "Em um dia tranquilo enquanto descansava Luís recebe um e-mail um tanto quanto estranho...",
    ]


// MARK: EXECUÇÃO DO PROGRAMA
permitirAnimacoesNoTerminal()
limparTerminal()
login()

repeat {
  
   
    resposta = menuOpcoes(opcoes: ["Lenta", "Normal", "Rápida", "Muito Rápida"], pergunta: "Bem-Vindo ao RPG 42! Selecione uma velocidade de exibição dos textos:  ")
    
    if (resposta == 1) {
        velocidadeTexto = useconds_t(1000000)
    } else if (resposta == 2) {
        velocidadeTexto = useconds_t(500000)
    } else if (resposta == 3) {
        velocidadeTexto = useconds_t(250000)
    } else {
        velocidadeTexto = useconds_t(1)
    }
    
    slowPrint(text: "Este é um texto de exemplo para você ver a velocidade de exibição dos textos, tenha um ótimo dia!", velocidade: velocidadeTexto)
    resposta = menuOpcoes(opcoes: ["Sim", "Escolher Outra Velocidade"], pergunta: "Deseja Jogar Com Essa Velocidade de Texto?")
    
} while (resposta == 2)

limparTerminal()
slowPrint(text: "Aperte " + "return".green2() + " para avançar os textos! Bom jogo!", velocidade: velocidadeTexto)
limparTerminal()
imprimirTextos(vetorDeTextos: prologo, velocidade: velocidadeTexto)
slowPrint(text: "\(carta1.descricao)"
, velocidade: velocidadeTexto)

resposta = menuOpcoes(opcoes: ["Decidir Investigar e Mostrar a Carta Para Seu Pai", "Ignorar a Carta e Denunciar o E-mail"], pergunta: "O que deseja fazer?")

if (resposta == 2) {
    slowPrint(text: "Luís decide apagar e denunciar aquele e-mail pensando que é alguém tentando caçoar com ele, o seu e-mail bloqueará novas mensagens daquele remetente."
              , velocidade: velocidadeTexto)
    slowPrint(text: "\nFim de Jogo.".red2()
              , velocidade: velocidadeTexto)
    exit(0)
}

protagonista.inventario.adicionarItem(itemAdicionado: carta1)

var maquina = Maquina(velocidadeTexto: velocidadeTexto)
var combate1 = Combate1(velocidadeTexto: velocidadeTexto)

//MARK: COMBATE 1
combate1.fase1()
combate1.fase2()
combate1.fase3()
combate1.fase4()

slowPrint(text: "É...eu sinto muita falta dela...não sabia de nada disso, meu filho. Nunca entendi por que vocês passavam tanto tempo naquele computador, para mim aquilo era perda de tempo. Agora entendo os reais motivos e admiro a sua nobre motivação. Você pode ir atrás das cartas e me contar o que descobrir ao final de sua jornada.".yellow(), velocidade: velocidadeTexto)

limparTerminal()
slowPrint(text: "Você venceu o Combate 1 e convenceu Jaime a deixar você prosseguir!".green2(), velocidade: velocidadeTexto)

slowPrint(text: "\nVocê desbloqueou o Capítulo 1: " + "\"O Lugar Mais Alto do Mundo\"".yellow2() + "! Você já pode acessá-lo no Mapa", velocidade: velocidadeTexto)

//MARK: DESBLOQUEIA O CAPITULO 1
protagonista.desbloquearCapitulo(novoCapitulo: "O Lugar Mais Alto do Mundo")

repeat {
    //MARK: MENU INICIAL
    limparTerminal()
    
    print("[ MENU INICIAL ]\n\n".yellow())
    
    
    if (protagonista.conhecimento > 0) {
        
        print("Você tem " + "\(protagonista.conhecimento)".green2() + " Pontos de Conhecimento!")
    }
    
    resposta = menuOpcoes(opcoes: ["Construir BAXTER", "Acessar Inventário", "Acessar Mapa"], pergunta: "O que fazer agora?")
    limparTerminal()
    
    switch (resposta) {
        // MARK: CONSTRUIR BAXTER
    case 1:
        print("[ CONSTRUIR BAXTER ]\n".yellow())
        resposta = menuOpcoes(opcoes: ["Construir Parte 1 de BAXTER", "Construir Parte 2 de BAXTER", "Construir Parte 3 de BAXTER", "Voltar ao Menu"], pergunta: "Selecione uma opção: ")
        
        switch (resposta) {
        case 1:
            limparTerminal()
            print("""
                     ________________________________________________
                    /                                                \\
                   |    _________________________________________     |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |           Construindo BAXTER...         |    |
                   |   |                                         |    |
                   |   |               Progresso:                |    |
                   |   |                                         |    |
                   |   |          [||              ] 10%         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |_________________________________________|    |
                   |                                                  |
                   |__________________________________________________|
                           \\__________________________________/
                        ___________________________________________
                     _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
                  _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
               _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
            _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
         _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
        :-------------------------------------------------------------------------:
        `---._.-------------------------------------------------------------._.---'
        """.green2())
            usleep(500000)
            limparTerminal()
            print("""
                     ________________________________________________
                    /                                                \\
                   |    _________________________________________     |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |           Construindo BAXTER...         |    |
                   |   |                                         |    |
                   |   |               Progresso:                |    |
                   |   |                                         |    |
                   |   |          [||||            ] 20%         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |_________________________________________|    |
                   |                                                  |
                   |__________________________________________________|
                           \\__________________________________/
                        ___________________________________________
                     _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
                  _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
               _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
            _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
         _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
        :-------------------------------------------------------------------------:
        `---._.-------------------------------------------------------------._.---'
        """.green2())
            usleep(500000)
            print("""
                     ________________________________________________
                    /                                                \\
                   |    _________________________________________     |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |           Construindo BAXTER...         |    |
                   |   |                                         |    |
                   |   |               Progresso:                |    |
                   |   |                                         |    |
                   |   |          [|||||            ] 30%        |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |_________________________________________|    |
                   |                                                  |
                   |__________________________________________________|
                           \\__________________________________/
                        ___________________________________________
                     _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
                  _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
               _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
            _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
         _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
        :-------------------------------------------------------------------------:
        `---._.-------------------------------------------------------------._.---'
        """.green2())
            usleep(500000)
            limparTerminal()
            maquina.construirParte1(aprendizados: protagonista.conceitosAprendidos.count)
        case 2:
            limparTerminal()
            print("""
                     ________________________________________________
                    /                                                \\
                   |    _________________________________________     |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |           Construindo BAXTER...         |    |
                   |   |                                         |    |
                   |   |               Progresso:                |    |
                   |   |                                         |    |
                   |   |          [|||||||         ] 40%         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |_________________________________________|    |
                   |                                                  |
                   |__________________________________________________|
                           \\__________________________________/
                        ___________________________________________
                     _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
                  _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
               _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
            _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
         _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
        :-------------------------------------------------------------------------:
        `---._.-------------------------------------------------------------._.---'
        """.green2())
            usleep(500000)
            limparTerminal()
            print("""
                     ________________________________________________
                    /                                                \\
                   |    _________________________________________     |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |           Construindo BAXTER...         |    |
                   |   |                                         |    |
                   |   |               Progresso:                |    |
                   |   |                                         |    |
                   |   |          [|||||||||       ] 60%         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |_________________________________________|    |
                   |                                                  |
                   |__________________________________________________|
                           \\__________________________________/
                        ___________________________________________
                     _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
                  _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
               _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
            _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
         _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
        :-------------------------------------------------------------------------:
        `---._.-------------------------------------------------------------._.---'
        """.green2())
            usleep(500000)
            print("""
                     ________________________________________________
                    /                                                \\
                   |    _________________________________________     |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |           Construindo BAXTER...         |    |
                   |   |                                         |    |
                   |   |               Progresso:                |    |
                   |   |                                         |    |
                   |   |          [||||||||||||     ] 80%        |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |                                         |    |
                   |   |_________________________________________|    |
                   |                                                  |
                   |__________________________________________________|
                           \\__________________________________/
                        ___________________________________________
                     _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
                  _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
               _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
            _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
         _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
        :-------------------------------------------------------------------------:
        `---._.-------------------------------------------------------------._.---'
        """.green2())
            usleep(500000)
            limparTerminal()
            maquina.construirParte2(aprendizados: protagonista.conceitosAprendidos.count)
        case 3:
            if(maquina.construirParte3(aprendizados: protagonista.conceitosAprendidos.count)) {
                limparTerminal()
                print("""
                         ________________________________________________
                        /                                                \\
                       |    _________________________________________     |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |           Construindo BAXTER...         |    |
                       |   |                                         |    |
                       |   |               Progresso:                |    |
                       |   |                                         |    |
                       |   |          [|||||||||||||   ] 90%         |    |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |_________________________________________|    |
                       |                                                  |
                       |__________________________________________________|
                               \\__________________________________/
                            ___________________________________________
                         _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
                      _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
                   _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
                _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
             _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
            :-------------------------------------------------------------------------:
            `---._.-------------------------------------------------------------._.---'
            """.green2())
                usleep(500000)
                limparTerminal()
                print("""
                         ________________________________________________
                        /                                                \\
                       |    _________________________________________     |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |           Construindo BAXTER...         |    |
                       |   |                                         |    |
                       |   |               Progresso:                |    |
                       |   |                                         |    |
                       |   |          [||||||||||||||  ] 99%         |    |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |                                         |    |
                       |   |_________________________________________|    |
                       |                                                  |
                       |__________________________________________________|
                               \\__________________________________/
                            ___________________________________________
                         _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
                      _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
                   _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
                _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
             _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
            :-------------------------------------------------------------------------:
            `---._.-------------------------------------------------------------._.---'
            """.green2())
                usleep(500000)
                iniciarJornada = false
                continue
            }
        default:
            print()
        }
        
    case 2:
        // MARK: ACESSAR INVENTÁRIO
        
        //array de strings do nos nomes de itens
        //que serao passados para o metodo menu imprimir
        var opcoes: [String] = []
        //adiciona o nome de todos os itens no array de nomes(opcoes)
        for item in protagonista.inventario.itens {
            opcoes.append("\(item.nome) (\(item.quantidade)x)")
        }
        //adiciona a opcao voltar
        opcoes.append("Voltar ao Menu")
        //metodo que exibe o menu de opcoes
        repeat{
            print("[ INVENTÁRIO ]\n".yellow())
            
            resposta = menuOpcoes(opcoes: opcoes, pergunta: "Selecione um item para ver mais detalhes:")
            if (resposta == protagonista.inventario.itens.count + 1){
                break
            }
            protagonista.inventario.exibirDescricaoDoItem(opcao: resposta)
            //opcoes dos itens
            resposta = menuOpcoes(opcoes: ["Voltar ao Inventário"], pergunta: "")
        }while(true)
        
    case 3:
        // MARK: ACESSANDO MAPA
        
        print("[ MAPA ]\n".yellow())
        
        var opcoesMapa: [String] = []
        
        for palavra in protagonista.capitulosDesbloqueados {
            opcoesMapa.append("\(palavra)")
        }
        
        opcoesMapa.append("Voltar ao Menu")
        
        resposta = menuOpcoes(opcoes: opcoesMapa, pergunta: "Selecione uma opção: ")
        
        //MARK: MAPA: VOLTAR
        if (resposta == protagonista.capitulosDesbloqueados.count + 1) {
            continue
        }
        
        //MARK: CAPITULO CONCLUIDO
        if (protagonista.conceitosAprendidos.count >= resposta && resposta != 4) {
            slowPrint(text: "Você já concluiu o Capítulo \(resposta).".green2(), velocidade: velocidadeTexto)
            continue
        }
        
        //MARK: INSTANCIANDO CAPITULO
        if (resposta == 1) {
            capitulo = Capitulo1(velocidadeTexto: velocidadeTexto, inventario: protagonista.inventario)
        } else if (resposta == 2) {
            capitulo = Capitulo2(velocidadeTexto: velocidadeTexto, inventario: protagonista.inventario)
        } else {
            capitulo = Capitulo3(inventario: protagonista.inventario, velocidadeTexto: velocidadeTexto)
        }
        
        if (resposta == 1) {
            // MARK: CAPITULO 1
            
            capitulo.desafio1()
            
            
            // MARK: CONCLUI O CAPITULO 1
            slowPrint(text: "\nVocê concluiu o Capítulo 1!".green2(), velocidade: velocidadeTexto)
            
            protagonista.inventario = capitulo.inventario
            
            slowPrint(text: "\nVocê aprendeu a habilidade de " + "Capacidade Analítica".yellow2() + "!", velocidade: velocidadeTexto)
            
            protagonista.aprender(novoAprendizado: "Capacidade Analítica")
            
            slowPrint(text: "\nVocê já pode construir a Parte 1 de BAXTER!".green2() + "!", velocidade: velocidadeTexto)
            
            
            limparTerminal()
            slowPrint(text: "Você ganhou o item " + "\"\(capitulo.carta.nome)\"".yellow2() + "!", velocidade: velocidadeTexto)
            
            protagonista.inventario.adicionarItem(itemAdicionado: capitulo.carta)
            limparTerminal()
            slowPrint(text: capitulo.carta.descricao, velocidade: velocidadeTexto)
            
            resposta = menuOpcoes(opcoes: ["Sim", "Não"], pergunta: "Refletir sobre essa pergunta?")
            
            if (resposta == 1) {
                slowPrint(text: "O que é inteligência? Essa é uma pergunta interessante… e inteligente, vou tentar pensar melhor sobre isso.".cyan2(), velocidade: velocidadeTexto)
                protagonista.conhecimento += 100
                protagonista.reflexoes += 1
            } else {
                
                slowPrint(text: "Inteligência? Não faço ideia do que minha mãe quis dizer com isso".cyan2(), velocidade: velocidadeTexto)
                protagonista.conhecimento += 50
            }
            
            
            
            //MARK: DESBLOQUEIA O CAPITULO 2
            slowPrint(text: "\nVocê desbloqueou o Capítulo 2: " + "\"Quando você olha muito tempo para o abismo…\"".yellow2(), velocidade: velocidadeTexto)
            
            protagonista.desbloquearCapitulo(novoCapitulo: "Quando Você Olha Muito Tempo Para o Abismo...")
            
            let coffee = Item(nome: "Café", descricao: "Café que pula uma pergunta", quantidade: 1, isItemUtilizavel: true)
            
            for _ in 0..<4 {
                protagonista.inventario.adicionarItem(itemAdicionado: coffee)
                
            }
            
            slowPrint(text: "\nVocê ganhou 4 " + "\(coffee.nome)".yellow2() + "!", velocidade: velocidadeTexto)
            
            
            
        } else if (resposta == 2) {
            // MARK: CAPITULO 2
            
            capitulo.desafio1()
            capitulo.desafio2()
            capitulo.desafio3()
            capitulo.desafio4()
            
            // MARK: CONCLUI O CAPITULO 2
            slowPrint(text: "\nVocê concluiu o Capítulo 2!".green2(), velocidade: velocidadeTexto)
            
            
            protagonista.inventario = capitulo.inventario
            
            slowPrint(text: "\nVocê aprendeu a habilidade de " + "Lógica de Programação".yellow2() + "!", velocidade: velocidadeTexto)
            
            protagonista.aprender(novoAprendizado: "Lógica de Programação")
            
            slowPrint(text: "\nVocê já pode construir a Parte 2 de BAXTER!".green2() + "!", velocidade: velocidadeTexto)
            
            limparTerminal()
            slowPrint(text: "Você ganhou o item " + "\"\(capitulo.carta.nome)\"".yellow2() + "!", velocidade: velocidadeTexto)
            
            protagonista.inventario.adicionarItem(itemAdicionado: capitulo.carta)
            limparTerminal()
            slowPrint(text: capitulo.carta.descricao, velocidade: velocidadeTexto)
            
            resposta = menuOpcoes(opcoes: ["Sim", "Não"], pergunta: "Refletir sobre essa pergunta?")
            
            if (resposta == 1) {
                slowPrint(text: "Realidade...nesse mundo tão tecnológico nem sabemos mais o que é real ou virtual...vou pensar mais sobre isso...".cyan2(), velocidade: velocidadeTexto)
                protagonista.conhecimento += 100
                protagonista.reflexoes += 1
            } else {
                
                slowPrint(text: "O que é realidade? Eu nem sei se eu sou real.".cyan2(), velocidade: velocidadeTexto)
                protagonista.conhecimento += 50
            }
            
            
            
            //MARK: DESBLOQUEIA O CAPITULO 3
            slowPrint(text: "\nVocê desbloqueou o Capítulo 3: " + "\"O que cai em pé e corre deitado?\"".yellow2(), velocidade: velocidadeTexto)
            
            protagonista.desbloquearCapitulo(novoCapitulo: "O Que Cai Em Pé e Corre Deitado?")
            
            let debugger = Item(nome: "Debugger", descricao: "Debugger é capaz de pular uma pergunta dos desafios", quantidade: 1, isItemUtilizavel: true)
            
            for _ in 0..<2 {
                protagonista.inventario.adicionarItem(itemAdicionado: debugger)
                
            }
            
            slowPrint(text: "\nVocê ganhou 2 " + "\(debugger.nome)".yellow2() + "!", velocidade: velocidadeTexto)
            
            
        } else if (resposta == 3) {
            // MARK: CAPITULO 3
            capitulo.desafio1()
            capitulo.desafio2()
            capitulo.desafio3()
            capitulo.desafio4()
            
            // MARK: CONCLUI O CAPITULO 3
            protagonista.inventario = capitulo.inventario
            
            slowPrint(text: "Você aprendeu a habilidade de " + "Programação Orientada a Objetos".yellow2() + "!", velocidade: velocidadeTexto)
            
            protagonista.aprender(novoAprendizado: "Programação Orientada a Objetos")
            
            slowPrint(text: "\nVocê já pode construir a Parte 3 de BAXTER!".green2() + "!", velocidade: velocidadeTexto)
            
            limparTerminal()
            slowPrint(text: "Você ganhou o item " + "\"\(capitulo.carta.nome)\"".yellow2() + "!", velocidade: velocidadeTexto)
            
            protagonista.inventario.adicionarItem(itemAdicionado: capitulo.carta)
            limparTerminal()
            slowPrint(text: capitulo.carta.descricao, velocidade: velocidadeTexto)
            
            resposta = menuOpcoes(opcoes: ["Sim", "Não"], pergunta: "Refletir sobre essa pergunta?")
            
            if (resposta == 1) {
                slowPrint(text: "U...o significado da vida? Acredito que cada pessoa tenha um significado para sua vida…ainda estou tentando encontrar o meu…".cyan2(), velocidade: velocidadeTexto)
                protagonista.conhecimento += 100
                protagonista.reflexoes += 1
            } else {
                
                slowPrint(text: "Qual é o significado da vida? Essa parece uma pergunta impossível de ser respondida".cyan2(), velocidade: velocidadeTexto)
                protagonista.conhecimento += 50
            }
        }
        
        limparTerminal()
    default:
        print()
    }
} while(iniciarJornada == true)


//MARK: COMBATE 2

var combate2 = Combate2(velocidadeTexto: velocidadeTexto)
combate2.iniciar()

// MARK: FINAL
limparTerminal()
slowPrint(text: "Ufa..ainda bem que perdi arquivos que não são tão importantes...".cyan2(), velocidade: velocidadeTexto)

slowPrint(text: "\nAgora finalmente posso executar o programa...".cyan2(), velocidade: velocidadeTexto)
limparTerminal()
for _ in 1...5 {
    print(".".green2(), terminator: "")
    usleep(250000)
}
usleep(500000)
print()

print("""
         ________________________________________________
        /                                                \\
       |    _________________________________________     |
       |   |                                         |    |
       |   |                                         |    |
       |   |                                         |    |
       |   |                                         |    |
       |   |           Construindo BAXTER...         |    |
       |   |                                         |    |
       |   |               Progresso:                |    |
       |   |                                         |    |
       |   |         [||||||||||||||||] 100%         |    |
       |   |                                         |    |
       |   |                                         |    |
       |   |                                         |    |
       |   |                                         |    |
       |   |_________________________________________|    |
       |                                                  |
       |__________________________________________________|
               \\__________________________________/
            ___________________________________________
         _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
      _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
   _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
_-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
_-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
:-------------------------------------------------------------------------:
`---._.-------------------------------------------------------------._.---'
""".green2())

usleep(1250000)
limparTerminal()


slowPrint(text: "Olá Luís, Sou BAXTER, Fui criado para responder todas as suas perguntas!".green2(), velocidade: velocidadeTexto)

slowPrint(text: "\nEu não estou nem acreditando que consegui! Bom...vou tentar começar com uma coisa simples...quanto é 2 + 2?".cyan2(), velocidade: velocidadeTexto)

slowPrint(text: "\nEssa é muito simples, 2 + 2 é 4.".green2(), velocidade: velocidadeTexto)

slowPrint(text: "\nBom...você sabe fazer contas, vamos ver se consegue responder as perguntas que a mamãe deixou...".cyan2(), velocidade: velocidadeTexto)

slowPrint(text: "\nBAXTER, qual é o sentido da vida?".cyan2(), velocidade: velocidadeTexto)

slowPrint(text: "\n42.".green2(), velocidade: velocidadeTexto)

slowPrint(text: "\nBAXTER, o que é realidade?".cyan2(), velocidade: velocidadeTexto)

slowPrint(text: "\n42.".green2(), velocidade: velocidadeTexto)

slowPrint(text: "\nBAXTER, o que é inteligência?".cyan2(), velocidade: velocidadeTexto)


slowPrint(text: "\n42.".green2(), velocidade: velocidadeTexto)


if (protagonista.reflexoes >= 2) {

    slowPrint(text: "\nHAHAHAHAHAHAHAHAHAHAHAHA".cyan2(), velocidade: velocidadeTexto)
    
    slowPrint(text: "\nMe fazer passar por tudo isso apenas para provar o seu ponto é muito a sua cara!".cyan2(), velocidade: velocidadeTexto)
    
    slowPrint(text: "\nMas eu entendi! Não foi apenas para provar o seu ponto, eu sei que você queria me fazer enxergar a beleza que existe na tecnologia e na capacidade do ser humano de criar e inovar.".cyan2(), velocidade: velocidadeTexto)
    
    slowPrint(text: "\nRefletir sobre as suas perguntas me fez entender que elas não podem ser respondidas por uma maquina. Na verdade o processo de descoberta destas respostas é mais importante do que a resposta em si.".cyan2(), velocidade: velocidadeTexto)
    
    slowPrint(text: "\nVocê consegue me inspirar mesmo não estando mais aqui mamãe, isso é incrível!".cyan2(), velocidade: velocidadeTexto)
    
    slowPrint(text: "\nVou continuar a trilhar meu caminho criando soluções de tecnologia assim como você mãe, e espero ser tão brilhante quanto você! ".cyan2(), velocidade: velocidadeTexto)
    
    limparTerminal()
    
    slowPrint(text: "[ PARABÉNS! VOCÊ CONCLUIU O JOGO COM SUCESSO! ]".green2() + "\n\nLuís aprende que as máquinas não substituem o pensamento humano, e aprende que em sua jornada aprendeu a fazer perguntas e a respondê-las com a própria experiência.\n\nLuís reflete sobre o significado da resposta que obteve da máquina, ele entende que embora um computador possa fornecer informações e respostas factuais, algumas perguntas mais profundas devem ser respondidas pela própria pessoa, com base em sua vivência e sabedoria.\n\nEle também compreendeu melhor os usos e limites da tecnologia, percebendo que ela pode ser uma ferramenta valiosa, mas não pode substituir a sabedoria e a experiência humana. Essa reflexão o ajudou a usar a tecnologia de forma mais consciente e a valorizar sua própria jornada de autoconhecimento e crescimento pessoal.\n\nLuís se tornou um brilhante desenvolvedor de software, e assim como sua mãe contribuiu para o desenvolvimento de diversas tecnologias que hoje impactam a vida de muitas pessoas.\n\nBAXTER ainda funciona, mas agora ganhou melhorias e consegue responder mais perguntas, porém ainda não é capaz de responder as perguntas deixadas por Sofia.", velocidade: velocidadeTexto)
    
    
} else {
    
    slowPrint(text: "\nMáquina imbecil! você nao disse que responderia todas as minhas perguntas? para que você serve então?".cyan2(), velocidade: velocidadeTexto)
    
    slowPrint(text: "\nPossuo muitas funções que podem ser úteis! Você gostaria de visualizar uma lista com todas as minhas funções?".green2(), velocidade: velocidadeTexto)
    
    slowPrint(text: "\nNão! Eu gostaria que você respondesse todas as minhas perguntas!".cyan2(), velocidade: velocidadeTexto)
    
    slowPrint(text: "\nEu posso responder muitas perguntas, porém algumas fogem das minhas capacidades".green2(), velocidade: velocidadeTexto)
    
    slowPrint(text: "\nQue droga, eu não entendo! por que você me fez percorrer todo esse caminho, por que fazer perguntas que não tem respostas? Qual é o sentido de tudo isso? Eu desisto...".cyan2(), velocidade: velocidadeTexto)
    
    slowPrint(text: "\nNão quero mais saber de tecnologia ou perguntas sem sentido, vou seguir qualquer outra carreira que passe longe dessa maluquice toda!".cyan2(), velocidade: velocidadeTexto)
    
    limparTerminal()
    slowPrint(text: "[ INFELIZMENTE VOCÊ NÃO REFLETIU SOBRE AS PERGUNTAS DEIXADAS POR SOFIA E NÃO PERCEBEU O VERDADEIRO SIGNIFICADO DESSA JORNADA. ]".red2() + "\n\nRevoltado por não obter as respostas que queria e sem entender o porque do \"mal funcionamento\" do software e das intenções de sua mãe, Luís resolve desistir e esquecer tudo aquilo, mudou de profissão e guardou apenas as experiências que vivenciou ao lado de sua mãe.", velocidade: velocidadeTexto)
}
limparTerminal()
print("""

8888888888 8888888 888b     d888      8888888b.  8888888888        888888  .d88888b.   .d8888b.   .d88888b.
888          888   8888b   d8888      888  "Y88b 888                 "88b d88P" "Y88b d88P  Y88b d88P" "Y88b
888          888   88888b.d88888      888    888 888                  888 888     888 888    888 888     888
8888888      888   888Y88888P888      888    888 8888888              888 888     888 888        888     888
888          888   888 Y888P 888      888    888 888                  888 888     888 888  88888 888     888
888          888   888  Y8P  888      888    888 888                  888 888     888 888    888 888     888
888          888   888   "   888      888  .d88P 888                  88P Y88b. .d88P Y88b  d88P Y88b. .d88P
888        8888888 888       888      8888888P"  8888888888           888  "Y88888P"   "Y8888P88  "Y88888P"
                                                                    .d88P
                                                                  .d88P"
                                                                 888P"
""".green2())
