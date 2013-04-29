Contribuições
=============

Este modelo dá as boas vindas a novos contribuidores. Este documento irá guiá-lo
pelo processo.

Uma lista de coisas a serem feitas encontra-se no arquivo ``ChangeLog``.

Estilo
------

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
--------------------

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
-------------------------

Em português
^^^^^^^^^^^^

Commits devem ser SEMPRE adicionados em algum branch ``dev``.

De tempos em tempos é feito um merge do branch ``dev`` com o branch ``master`` e
do ``master`` com ``xx-yyy-dev``.

De forma análoga, de tempos em tempos é feito um merge do branch ``xx-yyy-dev``
com o branch ``xx-yyy``.

Em outro idioma
^^^^^^^^^^^^^^^

A "comunicação" entre os branchs ``master`` e ``master-zz`` deve ocorrer via
cherry-pick pois apenas um pequeno grupo dos commits no branch ``master``
necessitam serem incorporados no ``master-zz`` (o uso do merge muito provavelmente
iria causar um grande número de conflitos). Em resumo, essa "comunicação" ocorre
da seguinte forma::

    $ git checkout master
    <algumas modificações>
    $ git commit
    $ git checkout master-zz
    $ git cherry-pick master

No mais, o desenvolvimento deve ocorrer de forma similar ao especificado para os
branchs em português.

Passo-a-passo para envio de contribuições
-----------------------------------------

A seguir encontra-se um passo para envio de contribuições.

Fork
^^^^

.. notice::

   Este passo é opcional. Você pode apenas baixar os arquivos utilizando::

       $ git clone https://github.com/r-gaia-cs/modelo_tese_imecc.git

Fork o modelo e baixe os arquivos a partir do seu repositório utilizando::

    $ git clone https://github.com/meu_usuario/modelo_tese_imecc.git

Agora decida em qual branch você quer que sua funcionalidade ou correção seje
adicionada.

Branch
^^^^^^

Uma vez que você descidiu o branch adequado (e.g., ``dev``), crie um novo branch em
sua cópia e começe a trabalhar.

    $ git checkout -b meu-branch -t origin/dev

Depois de criar um branch, edite os arquivos que deseja.

Commit
^^^^^^

Com os arquivos editados é hora de fazer um commit das alterações. Mas antes,
tenha certeza que o git saiba seu nome e endereço de email:

    $ git config --global user.name "João"
    $ git config --global user.email "joao@exemplo.com"

Para fazer commit das alterações, utilize::

    $ git commit -a

Isso irá salvar todas as modificações que você fez e irá abrir o arquivo de log
do commit para edição. Escrever bons logs de commit é importante. Um log de
commit deve descrever as mudanças que foram feitas e porque. Siga o guia abaixo
ao escrever um:

1. A primeira linha deve ter até 50 linhas e conter uma muito, muito breve
   descrição.
2. Mantenha a segunda linha em branco.
3. Quebre todas as outras linhas em 80 colunas.

Os logs de commit deve ser em português, exceto o caso dos commits de
versões em outro idioma que podem ser feitos neste outro idioma.

Rebase
^^^^^^

Depois de fazer o commit das suas modificações, verifique se o branch que está
"utilizando" não foi alterado no repositório. Para isso utilize::

    $ git fetch

Se o branch que está "utilizando" tiver sido alterado você deve fazer um rebase
para sincronizar seu trabalho (é recomendado fazer isso de tempos em tempos).
Para o rebase utilize::

    $ git rebase origin/dev

.. warning::

   Use `git rebase` (não `git merge`) para sincronizar seu trabalho de tempos em
   tempos.

Envio de encontribuições
^^^^^^^^^^^^^^^^^^^^^^^^

Se você tiver criado um fork do modelo, atualize o seu repositório::

    $ git push origin meu-branch

Vá em https://github.com/meu_usuario/modelo_tese_imecc.git e selecione o seu branch. Clique no botão
'Pull Request' e preencha o formulário.

'Pull request' são usualmente revisados em questões de dias. Se comentários
forem feitos, adicione as mudanças em um commit separado, adicione-os ao seu
branch e, por último, adicione um comentário no 'pull request'.

Caso você não tenha feito um fork do modelo, crie um patch das suas
modificações::

    $ git format-patch --stdout origin/dev > meu_branch.patch

Com o patch criado, envie-o por email (é o arquivo ``meu_branch.patch``) para um
dos mantenedores do branch em que fez as suas modificações (e.g., ``dev``) que
ele irá adicionar suas modificações no repositório.
