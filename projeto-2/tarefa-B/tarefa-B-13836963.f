        dimension a(-1000:1000)
        dimension b(0:2)
        a(-1000:1000) = 0
        b(0) = -1
        b(1:2) = 1
        M = 1000 ! num de andarilhos
        N = 1000 ! num de passos
        ap = 0.5  ! prob dir
!        q = 1-p ! prob esq
!        ipe = 0 !num passos esq
!        ipd = 0 ! num passos dir
        itot = 0 ! total de passos
        iposx = 0 ! posicao
        open(unit=1, file='saida-1')
        write(*,*) '1'
        do j=1,M
          write(*,*) '2'
          do i=1,N
            write(*,*) '2.5'
            ir = rand()/ap ! 0 = dir 1 = esq
            iposx = iposx + b(ir)
!            itot = itot+1 
            write(*,*) '3'           
          end do
          write(*,*) '4'
          ! a(j) = iposx
          write(*,*) 'iposx = ', iposx
          a(iposx) = a(iposx) + 1
          write(*,*) '5'
        end do
        write(*,*) '6'
        do k = -N, N
          write(1,*) k, a(k) 
        end do
        close(1)
        end









