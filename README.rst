| Copyright (c) 2012 Tiago Macedo <ra025318@ime.unicamp.br>
| Copyright (c) 2012 Júnior Soares <juniorcasoares@hotmail.com>
| Copyright (c) 2012 Raniere Silva <r.gaia.cs@gmail.com>

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

Orientações
===========

#. Todos os arquivos produzidos utilizam a codificação UTF8. Usuários do
   sistema operacional Windows devem configurar o editor que estiverem
   utilizando para abrir os arquivos nessa codificação.
#. O arquivo principal chama-se ``tese.tex``. Recomenda-se marcá-lo como o
   arquivo mestre seguindo as instruções do editor que for utilizar.
#. Por questão de organização, as figuras encontram-se na pasta ``figuras``, as
   tabelas na pasta ``tabelas`` e os códigos na pasta ``src``.
#. Os arquivos

   * ``cap1.tex``
   * ``cap2.tex``
   * ``cap3.tex``
   * ``ape1.tex``

   foram escrito apenas para fins ilustrativos e devem ser substituídos pelos
   arquivos referentes aos capítulos e apêndices do sua defesa.
#. Ao utilizar os arquivos irá ocorrer vários comentários da forma ::

       % FIXME ...

   ou ::

       % TODO ...

   que corresponde a alguma instrução para corrigir ou adicionar algum dado.

   Ao seguir as orientações dos comentários, recomenda-se removê-los de tal
   forma que quando concluir sua tese não existirá nenhum destes comentários.

   Para procurar por estes comentários sugere-se utilizar (se estiver utilizando
   alguma distribuição GNU/LINUX) ::

       $ grep -r '% FIXME' ./
       $ grep -r '% TODO' ./

Outras fontes de informação relevante
=====================================

Um ótimo artigo sobre o uso do LaTeX para dissertações/teses encontra-se em
http://tug.org/pracjourn/2008-1/mori/mori.pdf.
