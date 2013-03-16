Contribuições
=============

Este modelo dá as boas vindas a novos contribuidores. Este documento irá guiá-lo
pelo processo.

Uma lista de coisas a serem feitas encontra-se no arquivo ``ChangeLog``.

Estilo
======

O seguinte estilo deve ser utilizado:

* Arquivos e pastas devem ter nomes minúsculos, sem caracteres especiais e com
  ``_`` no lugar de espaço. O nome deve ser sempre em português ou abreviação de
  um nome em português, exceto os seguintes arquivos e pastas:
  
  * ``abstract.tex``,
  * ``AUTHORS``,
  * ``ChangeLog``,
  * ``CONTRIBUTING.rst``,
  * ``COPYING``,
  * ``doc/index.html``,
  * ``Makefile``,
  * ``README.rst``,
  * ``src``,
  * ``THANKS``.

* Todos os arquivos de texto devem utilizar o padrão UNIX para quebra de linha e
  a codificação UTF-8.
* Todos os arquivos de texto devem respeitar o limite de 80 caracteres por linha.
* A identação deve ser de 2 espaços.
* Para o caso de comentários na mesma linha, deve existir pelo menos dois
  espaços antes do ``%``.

Para o caso da documentação, vale o estilo acima.

Nomeação dos branchs
====================

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

Funcionamento dos branchs
=========================

Commits devem ser SEMPRE adicionados em algum branch ``dev``.

De tempos em tempos é feito um merge do branch ``dev`` com o branch ``master`` e
do ``master`` com ``xx-yyy-dev``.

De forma análoga, de tempos em tempos é feito um merge do branch ``xx-yyy-dev``
com o branch ``xx-yyy``.


Fork
====

Fork o modelo e verifique sua cópia.

Agora decida em qual branch você quer que sua funcionalidade ou correção seje
adicionada.

Branch
======

Uma vez que você descidiu o branch adequado (e.g., dev), crie um novo branch em
sua cópia e começe a trabalhar.

    $ git checkout -b meu-branch -t dev

Commit
======

Tenha certeza que o git saiba seu nome e endereço de email:

    $ git config --global user.name "João"
    $ git config --global user.email "joao@exemplo.com"

Escrever bons logs de commit é importante. Um log de commit deve descrever as
mudanças que foram feitas e porque. Siga o guia abaixo ao escrever um:

1. A primeira linha deve ter até 50 linhas e conter uma muito, muito breve
   descrição.
2. Mantenha a segunda linha em branco.
3. Quebre todas as outras linhas em 80 colunas.

Os logs de commit deve ser em português, exceto o caso dos commits de
versões em outro idioma que podem ser feitos neste outro idioma.

Rebase
======

Use `git rebase` (not `git merge`) para sincronizar seu trabalho de tempos em
tempos.

    $ git fetch upstream
    $ git rebase upstream/dev

Push
====

    $ git push origin my-feature-branch

Vá em https://github.com/username/node e selecione o seu branch. Clique no botão
'Pull Request' e preencha o formulário.

'Pull request' são usualmente revisados em questões de dias. Se comentários
forem feitos, adicione as mudanças em um commit separado, adicione-os ao seu
branch e, por último, adicione um comentário no 'pull request'.
