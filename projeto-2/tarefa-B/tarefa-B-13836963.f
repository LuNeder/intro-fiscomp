        dimension a(-1000:1000)
        dimension b(0:200)
        b(0) = -1
        b(1:200) = 1
        M = 100000 ! num de andarilhos
        N = 1000 ! num de passos
        p = 0.5  ! prob dir
        q = 1-p ! prob esq
!        ipe = 0 !num passos esq
!        ipd = 0 ! num passos dir
        itot = 0 ! total de passos
        iposx = 0 ! posicao
        open(file='entrada-1', unit=1)
        do j=1,M
          do i=1,N
            ir = rand()/p ! 0 = dir 1 = esq
            iposx = iposx + b(ir)
            itot = itot+1            
          end do
          ! a(j) = iposx
          a(iposx) = a(iposx) + 1
        end do
        do k = 0-M, M
          write(1,*) k, a(k) 
        end do
        close(1)
        end









