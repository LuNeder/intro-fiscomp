      real eprec
      write(*,*) 'De x para calcular ln(x)'
      read(*,*) y
      x = y
      eprec = 0.00001
      pr = 1
      exp = 1
      aln = 0
      a = -1

      if (x .GE. 1) then
        x = 1/x
        a = 1
      end if


      do while (pr .GE. eprec) 
        pr = (((1-x)**exp)/exp)
        aln = aln + (((1-x)**exp)/exp)
        exp = exp+1
      end do


      aln = a* aln
      write(*,*) 'ln(x) = ', aln
      write(*,*) 'interno:', log(y)
      
      end