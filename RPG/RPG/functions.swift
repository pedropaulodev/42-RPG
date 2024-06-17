//
//  functions.swift
//  RPG
//
//  Created by JOSE ELIAS GOMES CAMARGO on 21/05/24.
//

import Foundation

// MARK: ALTERAÇÃO NO BUFFER PARA PODER VISUALIZAR AS ANIMAÇÕES DE ESCRITA NO TERMINAL
func permitirAnimacoesNoTerminal() {
    setbuf(__stdoutp, nil);
}

// MARK: IMPRESSÃO DO LOGIN (simulado)
func login() {
    for _ in 1...3 {
        print(".", terminator: "")
        usleep(velocidadeTexto / 2)
    }
    
    print("30/03/", terminator: "")
    usleep(velocidadeTexto / 2)
    print("2", terminator: "")
    usleep(velocidadeTexto / 2)
    print("0", terminator: "")
    usleep(velocidadeTexto)
    print("7", terminator: "")
    usleep(velocidadeTexto / 2)
    print("0")
    usleep(velocidadeTexto / 2)
    
    print("\n\nNome de Usuário: ", terminator: "")
    usleep(velocidadeTexto / 2)
    print("L", terminator: "")
    usleep(velocidadeTexto / 2)
    print("u", terminator: "")
    usleep(velocidadeTexto / 2)
    print("í", terminator: "")
    usleep(velocidadeTexto / 2)
    print("s")
    
    print("Senha: ", terminator: "")
    
    for _ in 1...7 {
        print("*", terminator: "")
        usleep(velocidadeTexto / 5)
    }
    print("*")
    
}

// MARK: FUNÇÃO QUE IMPRIME MENU FORMATADO E DEVOLVE A RESPOSTA DO USUARIO
func menuOpcoes(opcoes: [String], pergunta: String) -> Int {
    var opcaoSelecionada: Int
    
    print("\n___________________________________________________", terminator: "")
    repeat {
        print("\n\n\(pergunta)\n")
        
        for i in 0..<opcoes.count {
            print("\(i+1). \(opcoes[i])")
        }
        print("\nDigite o número de sua opção: ", terminator: "")
        let respostaString = readLine() ?? ""
        if respostaString.isEmpty {
            opcaoSelecionada = 0
        } else {
            opcaoSelecionada = Int(respostaString) ?? 0
        }
        
        if(opcaoSelecionada < 1 || opcaoSelecionada > opcoes.count) {
            slowPrint(text: "\nDigite uma opção válida (Valor Máximo: \(opcoes.count)).".red2(), velocidade: useconds_t(1))
        } else {
            limparTerminal()
            return opcaoSelecionada
        }
        
    } while (true)
}

// MARK: IMPRESSÃO COM ANIMAÇÃO PRA ESCREVER DEVAGARZINHO
func slowPrint(text: String, velocidade: useconds_t) {
    let separatedText = text.split(separator: " ")
    
    for word in separatedText {
        
        print(word, terminator: " ")
        
        usleep(velocidade / 5)
        
    }
    print("  ▼", terminator: "  ")
    var _ = readLine()!
}

// MARK: COMANDO PARA LIMPAR O TERMINAL
func limparTerminal() {
    print("\u{001B}[2J")
    
    print("\u{001B}[1H", terminator: "")
    print("\n\n\n")

}

// MARK: IMPRESSÃO DE UMA PARTE DO JOGO, RECEBE ARRAY DE STRINGS
func imprimirTextos(vetorDeTextos: [String], velocidade: useconds_t) {
    for texto in vetorDeTextos {
        slowPrint(text: texto, velocidade: velocidadeTexto)
        limparTerminal()
    }
}


extension String {
    func bold() -> String { juntar("1")}
    func dim() -> String { juntar("2")}
    func italic() -> String { juntar("3")}
    func underline() -> String { juntar("4")}
    func black() -> String { juntar("30") }
    func red() -> String { juntar("31") }
    func green() -> String { juntar("32") }
    func yellow() -> String { juntar("33") }
    func blue() -> String { juntar("34") }
    func magenta() -> String { juntar("35") }
    func cyan() -> String { juntar("36") }
    func white() -> String { juntar("37") }
    func bgBlack() -> String { juntar("40") }
    func bgRed() -> String { juntar("41") }
    func bgGreen() -> String { juntar("42") }
    func bgYellow() -> String { juntar("43") }
    func bgBlue() -> String { juntar("44") }
    func bgMagenta() -> String { juntar("45") }
    func bgCyan() -> String { juntar("46") }
    func bgWhite() -> String { juntar("47") }
    func underLine() -> String { juntar("4") }
    func risco() -> String {juntar("9")}
    
    func black2() -> String { juntar("90") }
    func red2() -> String { juntar("91") }
    func green2() -> String { juntar("92") }
    func yellow2() -> String { juntar("93") }
    func blue2() -> String { juntar("94") }
    func magenta2() -> String { juntar("95") }
    func cyan2() -> String { juntar("96") }
    func white2() -> String { juntar("97") }
    func bgBlack2() -> String { juntar("100") }
    func bgRed2() -> String { juntar("101") }
    func bgGreen2() -> String { juntar("102") }
    func bgYellow2() -> String { juntar("103") }
    func bgBlue2() -> String { juntar("104") }
    func bgMagenta2() -> String { juntar("105") }
    func bgCyan2() -> String { juntar("106") }
    func bgWhite2() -> String { juntar("107") }
    
    func juntar(_ cor: String) -> String {
        "\u{001B}[0;" + cor + "m" + self + "\u{001B}[0;0m"
    }
    
    var tamanho: Int { self.count - 13 }
    
}

