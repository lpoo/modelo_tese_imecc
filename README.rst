| Copyright (c) 2012 Tiago Macedo <ra025318@ime.unicamp.br>
| Copyright (c) 2012 Júnior Soares <juniorcasoares@hotmail.com>
| Copyright (c) 2012 Raniere Silva <ra092767@ime.unicamp.br>

Licença
=======

É garantida a permissão, livre de cobrança, a qualquer pessoa que obtver cópia
deste modelo para utilizá-lo sem qualquer restrição.

Este modelo é distribuído na expectativa de que seja útil, porém, SEM NENHUMA
GARANTIA; nem mesmo a garantia implícita de COMERCIABILIDADE OU ADEQUAÇÃO A UMA
FINALIDADE ESPECÍFICA.

Notas
=====

Se você for utilizar este modelo, tome o cuidado de alterar a licença.

Para a construção deste modelo utilizou-se das seguintes teses:

* Francisco Nogueira Calmon Sobral. Otimização sem derivadas em conjuntos
  magros. Disponível em
  http://www.bibliotecadigital.unicamp.br/document/?code=000854936.
* Marcela Reinecke Bonin. Modelos matemáticos de emergência na organização
  social para ação coletiva : forrageamento de formigas. Disponível em
  http://www.bibliotecadigital.unicamp.br/document/?code=000866056.

e as informações presentes na página da secretaria de pós-graduação:

* Regulamentação referente ao formato e impressão:
  http://www.ime.unicamp.br/~posgrad/formulario/regulamento_formato.pdf
* Modelo de capa: http://www.ime.unicamp.br/posgrad/modelos-de-capa
* Modelo de folha de rosto:
  http://www.ime.unicamp.br/posgrad/p%C3%A1gina-de-rosto

Orientações para usuários
=========================

A documentação do modelo encontra-se na pasta ``doc``.

Orientações para desenvolvedores
================================

O modelo oficial (em português) corresponde ao branch ``master`` e o
desenvolvimento do mesmo ocorre no branch ``dev``.

Personalizações do modelo oficial devem corresponder a algum branch da forma
``xx-yyy``, onde ``xx`` é uma das respectivas siglas:

* ``ma``: quando relacionadas ao departamento de matemática,
* ``me``: quando relacionadas ao departamento de estatísitica,
* ``ms``: quando relacionadas ao departamento de matemática aplicada,

e ``yyy`` é uma sigla relacionada ao grupo de pesquisa, e.g.,

* ``geo``: Geofísica Computacional,
* ``poo``: Pesquisa Operacional.

O desenvolvimento das personalizações correspondente ao branch ``xx-yyy`` devem
ocorrer no branch ``xx-yyy-dev``.

Existe uma versão do modelo oficial em inglês que corresponde ao branch
``master-en`` e o desenvolvimento do mesmo ocorre no branch ``dev-en``. Para o
caso da versão em outro idioma de uma personalização do modelo, essa versão deve
corresponder ao branch ``xx-yyy-zz``, onde ``zz`` representa o idioma utilizado,
e o desenvolvimento dessa versão deve ocorrer no branch ``xx-yyy-zz-dev``.

As mensagens de commit deve ser em português, exceto o caso dos commits de
versões em outro idioma que podem ser feitos neste outro idioma.

Estilo
------

O seguinte estilo deve ser utilizado:

* Arquivos devem ter nomes minúsculos, sem caracteres especiais e com ``_`` no
  lugar de espaço. O nome deve ser sempre em português.
* Todos os arquivos de texto devem respeitar o limite de 80 caracteres por linha.
* A identação deve ser de 4 espaços.
* Para o caso de comentários na mesma linha, deve existir pelo menos dois
  espaços antes do ``%``.
* Deve-se limitar-se aos caracteres presentes no padrão ASCII.

Para o caso da documentação:

* Nome dos arquivos podem ser em inglês.
* Existirem linhas com mais de 80 caracteres.
* A identação deve ser de 2 espaços.
* Utilizar caracteres no padrão UTF-8.
