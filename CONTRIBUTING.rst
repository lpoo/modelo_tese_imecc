Contribuições
=============

Este modelo dá as boas vindas a novos contribuidores. Este documento irá guiá-lo
pelo processo.

Fork
====

Fork o modelo e verifique sua cópia.

Agora decida em qual branch você quer que sua funcionalidade ou correção seje
adicionada. Como regra, toda nova funcionalidade ou correção deve ser adicionada
a um branch `dev` antes de ir para algum dos branchs oficiais.

Branch
======

Uma vez que você descidiu o branch adequado, crie um novo branch em sua cópia e
começe a trabalhar.

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
