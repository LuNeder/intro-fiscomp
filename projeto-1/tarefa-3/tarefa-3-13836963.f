      real, dimension(:), allocatable :: a
      write(*,*) 'De N e M, respectivamente, tal que o programa ira ler'
      write(*,*) 'N numeros reais (em um arquivo) e ordenara '
      write(*,*) 'os M primeiros menores numeros'
      read(*,*) n, m
      allocate(a(n))
      open(unit=1, file='entrada-1-13836963')
      read(1,*) a
!      write(*,*) 'a1 =',a1 
     !! write(*,*) 'vetor lido --->',(a(k),k=1,n)  
      i = 1
      do i=1, n
        do j= i+1, n
          if (a(i) .GT. a(j)) then
            aux = a(i)
            a(i) = a(j)
            a(j) = aux
           else
             continue
          end if
         end do
      end do
      
      
 !!     write(*,*) 'vetor lido --->',(a(k),k=1,n)
      open(unit=2, file='saida-1-13836963') 
      do i=1, m
        write(2,*) a(i)
      end do
      write(2,*) m
      
!      write(*,*) 'aa1 =',aa1 
      close(1) 
      close(2) 
      end
