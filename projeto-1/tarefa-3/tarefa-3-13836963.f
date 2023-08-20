      dimension a(20)
      write(*,*) 'De N e M, respectivamente, tal que o programa ira ler'
      write(*,*) 'N numeros reais (em um arquivo) e ordenara '
      write(*,*) 'os M primeiros menores numeros'
      read(*,*) n, m
      open(unit=1, file='entrada-1-13836963')
      read(1,*) (a(j),j=1,n)
!      write(*,*) 'a1 =',a1 
      write(*,*) 'vetor lido --->',(a(k),k=1,n)  
!      write(*,*) 'aa1 =',aa1 
      close(1)  
      end