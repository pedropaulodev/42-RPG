//
//  Capitulo1.swift
//  RPG
//
//  Created by JOSE ELIAS GOMES CAMARGO on 14/05/24.
//

import Foundation

public class Capitulo1 : Capitulo {
    
    init(velocidadeTexto: useconds_t, inventario: Inventario) {
        super.init(carta: Item(nome: "Carta 2", descricao: "[ CARTA 2 ]\n\n".yellow2() + "Quantas memórias vivemos nesse parquinho Luís…todos os fins de semana você adorava brincar nesse escorregador, até que depois de um tempo você ficou grande mais e não conseguia mais brincar nele, aquilo foi como uma tragédia pra você, e você fez um enorme drama hahaha...\n\nQue bom que achou a senha escondida na primeira carta, está com a atenção em dia! A próxima carta está em um lugar bem perto de você…é só completar a frase que vivíamos dizendo um para o outro: " + "Quando você olha muito tempo para um abismo…".yellow2() + "\n\nAh e…mais uma pergunta para você ficar pensando, " + "o que é inteligência?".yellow2(), quantidade: 1, isItemUtilizavel: false), velocidadeTexto: velocidadeTexto,  inventario: inventario)
    }
    
    override func desafio1() {
        var resposta: Int
        var repetir = true
        slowPrint(text: "O lugar mais alto do mundo...me lembro quando era pequeno e minha mãe me levava ao parquinho, e em cima do escorregador eu dizia que aquele era o lugar mais alto do mundo...vou lá investigar", velocidade: velocidadeTexto)
        limparTerminal()
        slowPrint(text: "Chegando ao escorregador, Luís encontra um QR CODE colado embaixo do escorregador, e escaneando acessa uma mensagem.", velocidade: velocidadeTexto)
        
            limparTerminal()
            slowPrint(text: "Oi Luís! Se você chegou aqui é porque esse e-mail não caiu em algum lixo eletrônico ou seu pai te convenceu a esquecer disso, isso é a cara dele...o meu primeiro desafio para você é simples, para acessar à primeira pergunta você precisa apenas de uma senha, eu a deixei na primeira carta...", velocidade: velocidadeTexto)
            
        repeat {

            resposta = menuOpcoes(opcoes: ["Digitar a Senha", "Ler a primeira carta mais uma vez", "Pedir Ajuda"], pergunta: "O que fazer agora?")
            
            switch (resposta) {
            case 1:
                print("Digite a senha: ", terminator: "")
                let senha = readLine()
                
                if (senha?.lowercased() == "amor") {
                    print("Passou com a senha certa")
                    repetir = false
                } else {
                    limparTerminal()
                    slowPrint(text: "Senha incorreta.".red2(), velocidade: velocidadeTexto)
                    limparTerminal()

                }
            case 2:
                limparTerminal()
                slowPrint(text: "[ sofiamusso@techmail.com ]".green2() + "\n\nAntes de qualquer coisa não se assuste...não é nenhuma força sobrenatural entrando em contato com você, essa mensagem estava programada para um tempo em que sabia que estaria pronto para ler o que tenho a lhe dizer nessa carta...\n\nPor muito tempo, nós criamos nosso projeto do BAXTER, mas nos meus últimos meses me vi como o Titanic encontrando um iceberg que cruza seu caminho sem aviso prévio. Decidi ficar com você e Jaime o máximo que pude, precisando abrir mão do nosso projeto, e não me arrependo disso por sequer um segundo. Eu amo vocês até o além.\n\nPassaram-se tantos anos e agora você já é um verdadeiro homem, meu pequenino cresceu e agora o mundo precisa te conhecer. Não tenha medo, saiba que há alguém que se importa com você. Eu tenho um convite para você, este é somente o primeiro e-mail que inicia um instigante desafio.\n\nLembra das horas em que sumia por que estava muito ocupada? Escrevi diversas cartas e em cada uma há uma pergunta que você deve encontrar um jeito de responder, além de um desafio que, ao ser vencido, te possibilitará achar a próxima carta  e te ensinara o que vocé precisa saber para terminar o nosso projeto que iniciamos juntos. Espero que você encontre todas as cartas e aproveite esta jornada, esta foi a única forma que encontrei de estarmos juntos mesmo após a minha partida. Para achar a primeira carta você deve olhar no " + "Lugar Mais Alto do Mundo...".yellow2() + "Eu te amo! E lembre-se: o segredo está nas palavras, procure refletir...", velocidade: velocidadeTexto)
            case 3:
                limparTerminal()
                slowPrint(text: "Dica: as últimas letras de cada parágrafo.".yellow2(), velocidade: velocidadeTexto)
            default:
                print()
            }
            
        } while (repetir)
        
        limparTerminal()
        isCapituloConcluido = true
    }
}
