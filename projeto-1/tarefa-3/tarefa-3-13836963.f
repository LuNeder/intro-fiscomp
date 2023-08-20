      dimension a(20)
      open(unit=3, file='entrada-1-13836963')
      read(3,*) a1,(a(j),j=1,5),aa1 
      write(*,*) 'a1 =',a1 
      write(*,*) 'vetor lido --->',(a(k),k=1,5)  
      close(3)  !fechou a unidade 3
      end