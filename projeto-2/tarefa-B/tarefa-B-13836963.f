        dimension a(-1000:1000)
        dimension b(0:1)
        a(-1000:1000) = 0
        b(0) = -1
        b(1) = 1
        M = 1000 ! num de andarilhos
        N = 1000 ! num de passos
        ap = 0.5  ! prob dir
C       aq = 1-ap ! prob esq
C        ipe = 0 !num passos esq
C        ipd = 0 ! num passos dir
        itot = 0 ! total de passos
        iposx = 0 ! posicao
        open(unit=1, file='saida-1')
C        write(*,*) '1'
        do j=1,M
C          write(*,*) '2'
          do i=1,N
C            write(*,*) '2.5'
            ir = rand()/ap ! 0 = dir 1 = esq.
            write(*,*) ir
            iposx = iposx + b(ir)
C            write(*,*) 'iposx = ', iposx
C            itot = itot+1 
C            write(*,*) '3'           
          end do
C          write(*,*) '4'
C          a(j) = iposx
          write(*,*) 'iposx-final = ', iposx
          a(iposx) = a(iposx) + 1
C          write(*,*) '5'
        end do
C        write(*,*) '6'
        do k = 0-N, N
          write(1,*) k, a(k)
        end do
        close(1)
        end









