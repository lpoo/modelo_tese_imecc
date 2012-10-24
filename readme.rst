Copyright (c) 2012 Tiago Macedo <ra025318@ime.unicamp.br>
Copyright (c) 2012 Júnior Soares <juniorcasoares@hotmail.com>
Copyright (c) 2012 Raniere Silva <r.gaia.cs@gmail.com>

Licença
=======

É garantida a permissão, livre de cobrança, a qualquer pessoa que obter cópia deste modelo para utilizá-lo sem qualquer restrição.

Notas
=====

Se você for utilizar este modelo, tome o cuidado de alterar a licença.

Para a construção deste modelo utilizou-se das seguintes teses:

* Francisco Nogueira Calmon Sobral. Otimização sem derivadas em conjuntos
  magros. Disponível em
  <http://www.bibliotecadigital.unicamp.br/document/?code=000854936>.
* Marcela Reinecke Bonin. Modelos matemáticos de emergência na organização
  social para ação coletiva : forrageamento de formigas. Disponível em
  <http://www.bibliotecadigital.unicamp.br/document/?code=000866056>

e as informações presentes na página da secretaria de pós-graduação.

Orientações
===========

#. O arquivo principal chama-se ``tese.tex``. Recomenda-se marcá-lo como o
   arquivo mestre seguindo as instruções do editor que for utilizar.
#. Por questão de organização, as figuras encontram-se na pasta ``figuras`` e as
   tabelas na pasta ``tabelas``.

Algumas dicas de como usar o modelo:

\documentclass[11pt, letterpaper, twoside]{report}
* '11 pt' \'e o tamanho da letra
* 'letterpaper' \'e formato carta da p\'agina, exigido pela p\'os
* Se sua disserta\c c\~ao ou tese tem menos de 100 p\'aginas, ent\~ao ela ser\'a impressa s\'o frente. Retire 'twoside' neste caso. Se ela tiver mais que 100 p\'aginas, ela ser\'a impressa em frente e verso. Mantenha 'twoside' neste caso.


%%% pacotes %%%

\usepackage[brazilian]{babel}
* muda a lingua do modelo

\usepackage[latin1]{inputenc}
* aceita acentos em portugues

\usepackage[T1]{fontenc}
* hifenizacao em portugues

\usepackage[cm]{fullpage}
* diminui as margens das paginas

\usepackage{makeidx}
* permite incluir indice remissivo

\usepackage{pdfpages}
* permite incluir pdf no tex

\makeindex
* cria o indice remissivo. Cada palavra que for colocada no indice, deve conter \index{palavra}


%%% teoremas %%%

\theoremstyle{definition}
* Define o estilo de todos teoremas.

\newtheorem{thm}{Teorema}[section]
* N\~ao mecha nesse teorema, pois ele \'e o mais importante.

\newtheorem*{con}{Conjectura}
* Exemplo de teorema sem numeracao

\newtheorem{cor}[thm]{Corol\'ario}
* Exemplo de teorema com numeracao


%%% numeracoes %%%

\numberwithin{equation}{section}
* define a numeracao das equacoes

\numberwithin{section}{chapter}
* define a numeracao das secoes


%%% corpo do texto %%%

Os seguintes arquivos estão na ordem certa, de acordo com as normas da Unicamp.

\include{capa}
* Edite o arquivo capa.tex, incluindo os dados necess\'arios.

\include{folha-de-rosto}
* Edite o arquivo folha-de-rosto.tex, incluindo os dados necess\'arios. Imprima, obtenha as assinaturas necessárias e inclua como pdf

\includepdf{ficha.pdf}
* A ficha catalografica é obtida junto a biblioteca. Copie o pdf para mesma pasta do arquivo dissertacao-tese.tex, com o nome 'ficha.pdf'.

\includepdf{folha-de-aprovacao.pdf}
* Escaneie a folha com assinaturas dos membros da banca dada depois da defesa e copie para mesma pasta do arquivo tese.tex, com o nome 'folha-de-aprovacao.pdf'.

\include{branco}
* Nas disserta\c c\~oes ou teses escritas em frente-e-verso, algumas p\'aginas em branco precisam ser inclu\'idas para que cada uma das p\'aginas anteriores (exceto a ficha catalogr\'afica) fique na frente. Por isso \'e necess\'ario incluir essas p\'aginas em branco. Se sua disserta\c c\~ao tem menos que 100 p\'aginas, mantenha essas linhas comentadas. Sen\~ao, descomente.

\pagenumbering{roman} \setcounter{page}{4}
* Acerta a forma de numeracao das paginas que precisam ser em romanos min\'usculos no in\'icio.

\pagenumbering{arabic} \setcounter{page}{1}
* Acerta a forma de numeracao das paginas que precisam ser em ar\'abicos a partir da introdu\c c\~ao e recom\c car com 1.


%%% corpo da tese %%%
* A dica \'e escrever cada cap\'itulo separado e incluir como abaixo:
\include{cap1}
\include{cap2}
\include{cap3}
Isso facilita na hora de digitar, compilar e corrigir.


%%% bibliografia %%%

\bibliographystyle{amsplain}
* Define o estilo da bibliografia.

\addcontentsline{toc}{chapter}{Refer\^encias Bibliogr\'aficas}
* Adiciona a bibliografia a tabela de conteudo (toc), no nivel de um 'chapter', com nome 'Referencias Bibliograficas'

\bibitem[ABC]{abc}
* Inclui item bibliogr\'afico. 'ABC' ser\'a o nome impresso na bibliografia e 'abc' sera o nome de refer\^encia no arquivo tex. Veja o exemplo que tem feito no tex.


%%% indice remissivo %%%

\printindex
* Inclui o \'indice remissivo.

\addcontentsline{toc}{chapter}{Índice}
* Inclui a bibliografia na tabela de conte\'udo.

