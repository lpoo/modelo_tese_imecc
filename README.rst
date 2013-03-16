Modelo de Dissertação/Tese do Instituto de Matemática, Estatística e Computação
Científica (IMECC) da Universidade Estadual de Campinas (UNICAMP)

Licença
=======

Veja o arquivo ``COPYING`` para a licença deste modelo.


Notas
=====

Se você for utilizar este modelo, tome o cuidado de alterar o arquivo ``COPYING``. Muito
provavelmente, apenas remover o arquivo deve ser suficiente para o seu caso.

Orientações para usuários
=========================

A documentação encontra-se na pasta ``doc`` e inicia-se no arquivo
``index.html``.

Orientações para desenvolvedores
================================

Se deseja contribuir, leia o arquivo ``CONTRIBUTING.rst``.

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
