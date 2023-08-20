C       Programa7.f
        dimension a(20)
        open(unit=3,file='dado-entrada') ! o arquivo de entrada --> dado-entrad
C                      tudo que fizer na unidade 3 será no arquivo dado-entrada
        open(unit=12,file='saida-minha')  ! o arquivo de saída --> saida-minha
C                                   tudo que fixe na unidade 12 será no arquivo
C                                   saida-minha
        read(3,*) a1,(a(j),j=1,5),aa1 !dados no arquivo fort.1 (um dado por linha)
        write(*,*) 'a1 =',a1  ! escreve na tela
        write(*,*) 'vetor lido --->',(a(k),k=1,5)  !escreve na tela em uma linha
        close(3)  !fechou a unidade 3
        close(12)  !fechou a unidade 12
        open(unit=3,file='novos-dados' ) ! abriu a unidade 3 como novos-dados
        write(3,*) ' caramba mudei de ideia'  ! vai sair no arquivo: novos-dados
        close(3) ! fechou a unidade 
        end
