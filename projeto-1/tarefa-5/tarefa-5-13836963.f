      real eprec
      write(*,*) 'De x para calcular ln(x)'
      read(*,*) x
      eprec = 0.00001
      pr = 1
      exp = 1
      aln = 0
      e = 2.7182818285
      a = -1
      if (x .GE. 1) then
        write(*,*) 'aqui'
        x = 1/x
        a = 1
      end if


      do while (pr .GE. eprec) 
        pr = (((1-x)**exp)/exp)
        aln = aln + (((1-x)**exp)/exp)
        write(*,*) (((1-x)**exp)/exp), aln
        exp = exp+1

      end do


      aln = a* aln
      write(*,*) aln
      
      end