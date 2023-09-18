        dimension a(100000)
        M = 100000 ! num de andarilhos
        N = 1000 ! num de passos
        p = 0.5  ! prob dir
        q = 1-p ! prob esq
        ipe = 0 !num passos esq
        ipd = 0 ! num passos dir
        itot = 0 ! total de passos
        do j=1,M
          do i=1,N
            ir = rand()/p ! 0 = dir 1 = esq
            ipe = ipe + ir
            itot = itot+1
          end do
          ipd = itot - ipe
          a(j) = ipd - ipe 
        end do
        end









