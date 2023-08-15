      write(*, *) 'De x1, y1 e z1 de v1'
      read(*, *) x1, y1, z1
      write(*, *) 'De x2, y2 e z2 de v2'
      read(*, *) x2, y2, z2
      a1= y1*z2 - z1*y2
      a2= z1*x2 - x1*z2
      a3= x1*y2 - y1*x2
      area = (sqrt((a1**2)+(a2**2)+(a3**2)))/2
      write(*,*) 'A área do triângulo formado por v1 e v2 é', area
      end 
