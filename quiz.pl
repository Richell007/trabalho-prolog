% =================================================================
% QUIZ DE CONHECIMENTOS GERAIS - SISTEMA ADAPTATIVO INTELIGENTE
% =================================================================

:- dynamic pontuacao/1.           % Pontuação atual do jogador
:- dynamic pergunta_respondida/1. % IDs das perguntas já respondidas
:- dynamic erro_tema/2.           % Quantidade de erros por tema
:- dynamic total_perguntas/1.     % Total de perguntas respondidas
:- dynamic total_erros/1.         % Total de erros cometidos

% =================================================================
% BASE DE CONHECIMENTO - PERGUNTAS (50)
% =================================================================
% Formato: pergunta(ID, Texto, [Alternativas], RespostaCorreta, Tema, Dificuldade)
% RespostaCorreta: a, b, c, d (letra minúscula correspondente à alternativa)

% ========================= FACIL =========================
pergunta(1, 'Qual a capital do Brasil?', ['São Paulo','Rio de Janeiro','Brasília','Salvador'], c, geografia, facil).
pergunta(2, 'Qual o resultado de 12 + 8?', ['18','20','22','24'], b, matematica, facil).
pergunta(3, 'Qual elemento é essencial para a respiração humana?', ['Oxigênio','Hidrogênio','Carbono','Nitrogênio'], a, ciencia, facil).
pergunta(4, 'Qual é o maior planeta do sistema solar?', ['Terra','Marte','Júpiter','Saturno'], c, ciencia, facil).
pergunta(5, 'Qual a fórmula química da água?', ['CO2','H2O','O2','NaCl'], b, ciencia, facil).
pergunta(6, 'Qual destes animais é um mamífero?', ['Cobra','Gato','Galinha','Peixe'], b, geral, facil).
pergunta(7, 'Qual o resultado de 15 ÷ 3?', ['3','4','5','6'], c, matematica, facil).
pergunta(8, 'Qual a cor predominante da vegetação?', ['Azul','Verde','Amarelo','Vermelho'], b, geral, facil).
pergunta(9, 'O Sol nasce em qual direção?', ['Norte','Sul','Leste','Oeste'], c, geografia, facil).
pergunta(10, 'Qual o resultado de 9 + 6?', ['13','14','15','16'], c, matematica, facil).
pergunta(11, 'Qual planeta é conhecido como "planeta azul"?', ['Marte','Terra','Júpiter','Saturno'], b, ciencia, facil).
pergunta(12, 'Qual a capital da França?', ['Roma','Paris','Berlim','Lisboa'], b, geografia, facil).
pergunta(13, 'Qual o resultado de 14 - 5?', ['7','8','9','10'], c, matematica, facil).
pergunta(14, 'Qual destes animais pode voar?', ['Cachorro','Gato','Pássaro','Cavalo'], c, geral, facil).
pergunta(15, 'Qual órgão bombeia o sangue no corpo humano?', ['Pulmão','Cérebro','Coração','Fígado'], c, ciencia, facil).

% ========================= MEDIO =========================
pergunta(16, 'Em que ano o homem chegou à Lua?', ['1965','1969','1970','1960'], b, historia, medio).
pergunta(17, 'Qual a capital da Alemanha?', ['Berlim','Roma','Paris','Madri'], a, geografia, medio).
pergunta(18, 'Qual o resultado de 7 x 8?', ['54','56','58','60'], b, matematica, medio).
pergunta(19, 'Quem é o autor de "Dom Quixote"?', ['Cervantes','Machado de Assis','Shakespeare','Fernando Pessoa'], a, literatura, medio).
pergunta(20, 'Qual é o maior oceano do planeta?', ['Atlântico','Índico','Pacífico','Ártico'], c, geografia, medio).
pergunta(21, 'Qual a raiz quadrada de 81?', ['7','8','9','10'], c, matematica, medio).
pergunta(22, 'Qual o símbolo químico do ouro?', ['Au','Ag','Fe','Cu'], a, ciencia, medio).
pergunta(23, 'Qual a capital da Itália?', ['Roma','Milão','Nápoles','Turim'], a, geografia, medio).
pergunta(24, 'Quem descobriu o Brasil?', ['Pedro Álvares Cabral','Cristóvão Colombo','Américo Vespúcio','Napoleão Bonaparte'], a, historia, medio).
pergunta(25, 'Qual o resultado de 10 x 10?', ['90','100','110','120'], b, matematica, medio).
pergunta(26, 'Qual planeta é conhecido por seus anéis?', ['Terra','Saturno','Marte','Vênus'], b, ciencia, medio).
pergunta(27, 'Quem escreveu "Hamlet"?', ['Shakespeare','Cervantes','Fernando Pessoa','Kafka'], a, literatura, medio).
pergunta(28, 'Em qual continente fica o Brasil?', ['Europa','Ásia','América','África'], c, geografia, medio).
pergunta(29, 'Qual o valor de 5²?', ['20','25','30','15'], b, matematica, medio).
pergunta(30, 'Qual a velocidade aproximada da luz no vácuo?', ['300.000 km/s','150.000 km/s','1.000.000 km/s','500.000 km/s'], a, ciencia, medio).

% ========================= DIFICIL =========================
pergunta(31, 'Qual a derivada de x²?', ['2x','x','x²','1'], a, matematica, dificil).
pergunta(32, 'O Teorema Fundamental do Cálculo relaciona quais conceitos?', ['Derivada e integral','Área e volume','Tempo e espaço','Massa e energia'], a, matematica, dificil).
pergunta(33, 'Qual a capital da Mongólia?', ['Astana','Ulaanbaatar','Tashkent','Bishkek'], b, geografia, dificil).
pergunta(34, 'Em que ano teve início a Segunda Guerra Mundial?', ['1939','1940','1941','1938'], a, historia, dificil).
pergunta(35, 'Qual o valor aproximado da constante de Planck?', ['6,63 × 10⁻³⁴','3 × 10⁸','9,8','1,6 × 10⁻¹⁹'], a, ciencia, dificil).
pergunta(36, 'Quem escreveu "A Metamorfose"?', ['Franz Kafka','Friedrich Nietzsche','Sigmund Freud','Johann Goethe'], a, literatura, dificil).
pergunta(37, 'Qual a integral de 1/x?', ['ln(x)','x','1/x','x²'], a, matematica, dificil).
pergunta(38, 'Qual é o maior deserto quente do mundo?', ['Saara','Gobi','Atacama','Kalahari'], a, geografia, dificil).
pergunta(39, 'Qual a fórmula da Segunda Lei de Newton?', ['F = m × a','F = m × v','F = m / a','F = v / a'], a, ciencia, dificil).
pergunta(40, 'Em que ano ocorreu a Independência do Brasil?', ['1822','1808','1889','1500'], a, historia, dificil).
pergunta(41, 'Qual o número de Avogadro?', ['6,02 × 10²³','3 × 10⁸','9,8','1 × 10⁶'], a, ciencia, dificil).
pergunta(42, 'Quem escreveu "O Processo"?', ['Franz Kafka','George Orwell','Albert Camus','Fiódor Dostoiévski'], a, literatura, dificil).
pergunta(43, 'Qual a derivada de sen(x)?', ['cos(x)','-cos(x)','sen(x)','-sen(x)'], a, matematica, dificil).
pergunta(44, 'Qual a capital do Cazaquistão?', ['Astana','Moscou','Kiev','Minsk'], a, geografia, dificil).
pergunta(45, 'Em que ano ocorreu a Revolução Francesa?', ['1789','1776','1804','1750'], a, historia, dificil).
pergunta(46, 'Qual a fórmula da energia cinética?', ['(m × v²)/2','m × a','m × v','m × g × h'], a, ciencia, dificil).
pergunta(47, 'Quem escreveu "Crime e Castigo"?', ['Fiódor Dostoiévski','Liev Tolstói','Franz Kafka','Albert Camus'], a, literatura, dificil).
pergunta(48, 'Qual a integral de x?', ['x²/2','x','1/x','ln(x)'], a, matematica, dificil).
pergunta(49, 'Qual a capital da Islândia?', ['Reykjavik','Oslo','Helsinki','Copenhague'], a, geografia, dificil).
pergunta(50, 'Em que ano ocorreu a queda do Império Romano do Ocidente?', ['476 d.C.','410 d.C.','500 d.C.','450 d.C.'], a, historia, dificil).

% =================================================================
% CONFIGURAÇÕES DO SISTEMA
% =================================================================
limite_perguntas(10).  % Número máximo de perguntas por partida
limite_erros(5).       % Número máximo de erros antes de encerrar
peso_tema_prioritario(70). % Porcentagem de chance de focar no tema com mais erros

% =================================================================
% INICIALIZAÇÃO DO SISTEMA
% =================================================================
iniciar :-
    % Limpa todos os dados dinâmicos anteriores
    retractall(pontuacao(_)),
    retractall(pergunta_respondida(_)),
    retractall(erro_tema(_, _)),
    retractall(total_perguntas(_)),
    retractall(total_erros(_)),

    % Inicializa variáveis de controle
    assertz(pontuacao(0)),
    assertz(total_perguntas(0)),
    assertz(total_erros(0)),

    % Inicializa contadores de erro por tema
    inicializar_temas,

    % Exibe cabeçalho e inicia o jogo
    write('========================================================='), nl,
    write('     QUIZ DE CONHECIMENTOS GERAIS - SISTEMA ADAPTATIVO    '), nl,
    write('========================================================='), nl,
    write('O sistema se adapta ao seu nivel de conhecimento!'), nl,
    write('Responda corretamente para avancar para perguntas mais dificeis.'), nl,
    write('Cada erro ajuda o sistema a focar nos temas que voce tem mais dificuldade.'), nl,
    write('========================================================='), nl, nl,
    loop.

% Inicializa contadores de erro para todos os temas
inicializar_temas :-
    retractall(erro_tema(_, _)),
    forall(member(Tema, [geografia, matematica, ciencia, historia, literatura, geral]),
        assertz(erro_tema(Tema, 0))
    ).

% =================================================================
% LOOP PRINCIPAL DO JOGO
% =================================================================
loop :-
    total_perguntas(TotalPerguntas),
    limite_perguntas(LimitePerguntas),
    total_erros(TotalErros),
    limite_erros(LimiteErros),

    % Verifica condições de término
    (TotalPerguntas >= LimitePerguntas ->
        write('========================================================='), nl,
        write('Parabens! Voce completou todas as perguntas!'), nl,
        resultado_final
    ; TotalErros >= LimiteErros ->
        write('========================================================='), nl,
        write('Que pena! Voce atingiu o limite de erros.'), nl,
        write('Nao desista! Tente novamente para melhorar seu desempenho.'), nl,
        resultado_final
    ;
        executar_pergunta,
        loop
    ).

% =================================================================
% EXECUÇÃO DE UMA PERGUNTA
% =================================================================
executar_pergunta :-
    pontuacao(PontuacaoAtual),
    proxima_dificuldade(PontuacaoAtual, Dificuldade),

    write('--- Nivel: '), escrever_dificuldade(Dificuldade), nl,
    write('--- Pontuacao: '), write(PontuacaoAtual), nl,

    % Identifica tema com maior número de erros
    tema_prioritario(TemaPrioritario),
    write('--- Foco em: '), write(TemaPrioritario), nl, nl,

    % Tenta obter perguntas não respondidas do tema prioritário e dificuldade atual
    perguntas_por_dificuldade_tema(Dificuldade, TemaPrioritario, ListaTema),
    perguntas_por_dificuldade(Dificuldade, ListaGeral),

    % Escolhe a pergunta com base no peso do tema prioritário
    escolher_pergunta_inteligente(ListaGeral, ListaTema, ID, Texto, Alternativas, Resposta, TemaReal),

    % Marca pergunta como respondida
    assertz(pergunta_respondida(ID)),

    % Incrementa contador de perguntas
    incrementar_pergunta,

    % Apresenta e avalia a pergunta
    perguntar(Texto, Alternativas, RespostaUsuario),
    avaliar(RespostaUsuario, Resposta, TemaReal).

% Escreve o nome da dificuldade de forma amigável
escrever_dificuldade(facil) :- write('FACIL').
escrever_dificuldade(medio) :- write('MEDIO').
escrever_dificuldade(dificil) :- write('DIFICIL').

% =================================================================
% LÓGICA DE ADAPTAÇÃO - DEFINIÇÃO DE DIFICULDADE
% =================================================================
% Baseado na pontuação atual, define o nível da próxima pergunta
% Quanto maior a pontuação, maior a dificuldade
proxima_dificuldade(Pontuacao, facil) :- Pontuacao < 3.
proxima_dificuldade(Pontuacao, medio) :- Pontuacao >= 3, Pontuacao < 7.
proxima_dificuldade(Pontuacao, dificil) :- Pontuacao >= 7.

% =================================================================
% LÓGICA DE ADAPTAÇÃO - IDENTIFICAÇÃO DE TEMA PRIORITÁRIO
% =================================================================
% Identifica o tema com maior número de erros para focar nas próximas perguntas
tema_prioritario(Tema) :-
    findall(Tema-Erros, erro_tema(Tema, Erros), ListaErros),
    sort(2, @>=, ListaErros, [Tema-_ | _]).

% =================================================================
% SELEÇÃO INTELIGENTE DE PERGUNTAS
% =================================================================
% Escolhe uma pergunta dando prioridade (70% de chance) para o tema
% com mais erros, se houver perguntas disponíveis
escolher_pergunta_inteligente(ListaGeral, ListaTema, ID, Texto, Alternativas, Resposta, Tema) :-
    peso_tema_prioritario(Peso),
    random(1, 101, Aleatorio),

    % Se houver perguntas do tema prioritário e o número aleatório
    % estiver dentro do peso definido, escolhe do tema prioritário
    (Aleatorio =< Peso, ListaTema \= [] ->
        escolher_pergunta_aleatoria(ListaTema, ID, Texto, Alternativas, Resposta, Tema)
    ; ListaGeral \= [] ->
        escolher_pergunta_aleatoria(ListaGeral, ID, Texto, Alternativas, Resposta, Tema)
    ;
        % Se não houver perguntas disponíveis, tenta dificuldade mais fácil
        write('Sistema ajustando nivel...'), nl,
        recalcular_dificuldade
    ).

% Recalcula dificuldade quando não há perguntas disponíveis
recalcular_dificuldade :-
    pontuacao(P),
    (P > 0 ->
        P2 is P - 1,
        retract(pontuacao(P)),
        assertz(pontuacao(P2)),
        write('Reduzindo dificuldade temporariamente...'), nl
    ;
        write('Nao ha mais perguntas disponiveis. Encerrando...'), nl,
        resultado_final
    ).

% =================================================================
% CONSULTAS À BASE DE PERGUNTAS
% =================================================================
% Retorna lista de perguntas não respondidas de uma determinada dificuldade
perguntas_por_dificuldade(Dificuldade, Lista) :-
    findall(ID-Texto-Alternativas-Resposta-Tema,
        (pergunta(ID, Texto, Alternativas, Resposta, Tema, Dificuldade),
         \+ pergunta_respondida(ID)),
        Lista).

% Retorna lista de perguntas não respondidas de uma dificuldade e tema específicos
perguntas_por_dificuldade_tema(Dificuldade, Tema, Lista) :-
    findall(ID-Texto-Alternativas-Resposta-Tema,
        (pergunta(ID, Texto, Alternativas, Resposta, Tema, Dificuldade),
         \+ pergunta_respondida(ID)),
        Lista).

% Escolhe uma pergunta aleatória de uma lista
escolher_pergunta_aleatoria(Lista, ID, Texto, Alternativas, Resposta, Tema) :-
    length(Lista, Tamanho),
    random(0, Tamanho, Indice),
    nth0(Indice, Lista, ID-Texto-Alternativas-Resposta-Tema).

% =================================================================
% INTERFACE COM O USUÁRIO - APRESENTAÇÃO DA PERGUNTA
% =================================================================
% Apresenta a pergunta e as alternativas com letras (a, b, c, d)
perguntar(Texto, Alternativas, RespostaUsuario) :-
    write('========================================================='), nl,
    write('Pergunta: '), write(Texto), nl,
    mostrar_alternativas(Alternativas, 97),  % 97 é o código ASCII para 'a'
    write('---------------------------------------------------------'), nl,
    ler_resposta(RespostaUsuario).

% Mostra as alternativas com letras sequenciais
mostrar_alternativas([], _).
mostrar_alternativas([Alternativa|Resto], CodigoLetra) :-
    char_code(Letra, CodigoLetra),
    write('   '), write(Letra), write(') '), write(Alternativa), nl,
    Proximo is CodigoLetra + 1,
    mostrar_alternativas(Resto, Proximo).

% Leitura da resposta com tratamento de entrada
ler_resposta(Resposta) :-
    write('Sua resposta (a, b, c ou d): '),
    read(Entrada),
    (atom(Entrada) ->
        downcase_atom(Entrada, RespostaNormalizada),
        (member(RespostaNormalizada, [a, b, c, d]) ->
            Resposta = RespostaNormalizada
        ;
            write('Opcao invalida! Digite a, b, c ou d.'), nl,
            ler_resposta(Resposta)
        )
    ;
        write('Entrada invalida! Digite a, b, c ou d.'), nl,
        ler_resposta(Resposta)
    ).

% =================================================================
% AVALIAÇÃO DA RESPOSTA
% =================================================================
% Resposta correta
avaliar(RespostaUsuario, RespostaCorreta, _) :-
    RespostaUsuario == RespostaCorreta,
    write('---------------------------------------------------------'), nl,
    write('✓ RESPOSTA CORRETA!'), nl,
    atualizar_pontuacao.

% Resposta incorreta
avaliar(_, RespostaCorreta, Tema) :-
    write('---------------------------------------------------------'), nl,
    write('✗ RESPOSTA INCORRETA!'), nl,
    write('Resposta correta: '), escrever_resposta_correta(RespostaCorreta), nl,
    atualizar_erro(Tema).

% Escreve a resposta correta de forma amigável
escrever_resposta_correta(a) :- write('a').
escrever_resposta_correta(b) :- write('b').
escrever_resposta_correta(c) :- write('c').
escrever_resposta_correta(d) :- write('d').

% =================================================================
% ATUALIZAÇÃO DE ESTADO DO JOGO
% =================================================================
% Incrementa o contador de perguntas respondidas
incrementar_pergunta :-
    total_perguntas(Total),
    retract(total_perguntas(Total)),
    NovoTotal is Total + 1,
    assertz(total_perguntas(NovoTotal)).

% Atualiza a pontuação do jogador
atualizar_pontuacao :-
    pontuacao(PontuacaoAtual),
    retract(pontuacao(PontuacaoAtual)),
    NovaPontuacao is PontuacaoAtual + 1,
    assertz(pontuacao(NovaPontuacao)),
    limite_perguntas(Limite),
    write('   Pontuacao: '), write(NovaPontuacao), write('/'), write(Limite), write(' acertos'), nl, nl.

% Atualiza contadores de erro (total e por tema)
atualizar_erro(Tema) :-
    total_erros(TotalErros),
    retract(total_erros(TotalErros)),
    NovoTotalErros is TotalErros + 1,
    assertz(total_erros(NovoTotalErros)),

    erro_tema(Tema, ErrosTema),
    retract(erro_tema(Tema, ErrosTema)),
    NovosErrosTema is ErrosTema + 1,
    assertz(erro_tema(Tema, NovosErrosTema)),

    limite_erros(Limite),
    write('   Erros: '), write(NovoTotalErros), write('/'), write(Limite), write(' permitidos'), nl,
    write('   Tema com erro: '), write(Tema), nl, nl.

% =================================================================
% RESULTADO FINAL E ANÁLISE DE DESEMPENHO
% =================================================================
resultado_final :-
    nl, write('========================================================='), nl,
    write('                     RESULTADO FINAL                         '), nl,
    write('========================================================='), nl,
    pontuacao(PontuacaoFinal),
    total_perguntas(TotalPerguntas),
    total_erros(TotalErros),

    write('   Pontuacao final: '), write(PontuacaoFinal), write(' acertos'), nl,
    write('   Total de perguntas: '), write(TotalPerguntas), nl,
    write('   Total de erros: '), write(TotalErros), nl,
    calcular_percentual(PontuacaoFinal, TotalPerguntas, Percentual),
    write('   Aproveitamento: '), write(Percentual), write('%'), nl, nl,

    write('========================================================='), nl,
    write('                 ANALISE DE DESEMPENHO                    '), nl,
    write('========================================================='), nl,
    analisar_desempenho,

    write('========================================================='), nl,
    write('            OBRIGADO POR PARTICIPAR!                      '), nl,
    write('========================================================='), nl.

% Calcula o percentual de acertos
calcular_percentual(_, 0, 0) :- !.
calcular_percentual(Acertos, Total, Percentual) :-
    Percentual is round(Acertos * 100 / Total).

% Analisa o desempenho por tema
analisar_desempenho :-
    findall(Tema-Erros, erro_tema(Tema, Erros), ListaErros),
    sort(2, @>=, ListaErros, ListaOrdenada),
    write('   Temas com mais dificuldade:'), nl,
    exibir_temas_dificuldade(ListaOrdenada),
    nl,
    write('   Sugestao de estudo: '), nl,
    sugerir_estudo(ListaOrdenada).

% Exibe os temas ordenados por número de erros
exibir_temas_dificuldade([]).
exibir_temas_dificuldade([Tema-Erros|Resto]) :-
    Erros > 0,
    write('     - '), write(Tema), write(': '), write(Erros), write(' erro(s)'), nl,
    exibir_temas_dificuldade(Resto).
exibir_temas_dificuldade([_|Resto]) :-
    exibir_temas_dificuldade(Resto).

% Sugere temas para estudo baseado nos erros
sugerir_estudo([]) :-
    write('     Parabens! Voce nao errou em nenhum tema!'), nl.
sugerir_estudo([Tema-Erros|_]) :-
    Erros >= 3,
    write('     Recomendamos revisar '), write(Tema), write(', pois voce apresentou dificuldade significativa.'), nl.
sugerir_estudo([Tema-Erros|_]) :-
    Erros > 0,
    write('     Que tal dar uma revisada em '), write(Tema), write('? Voce pode melhorar ainda mais!'), nl.
sugerir_estudo([_|_]).

% =================================================================
% COMANDO PARA REINICIAR O JOGO
% =================================================================
reiniciar :-
    write('Reiniciando o quiz...'), nl,
    iniciar.
