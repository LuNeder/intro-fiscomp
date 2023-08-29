      write(*,*) 'De x para calcular ln(x)'
      read(*,*) x
      eprec = 10**(-5)
      pr = 1
      exp = 1
      aln = 0
      do while (pr .GE. 0.000001)
        pr = (((1-x)**exp)/exp)
        aln = aln + (((1-x)**exp)/exp)
        write(*,*) (((1-x)**exp)/exp), aln
        exp = exp+1

      end do

      aln = (-1)* aln
      write(*,*) aln
      
      end