       program b
       implicit real*8 (a-h, o-z)
       dimension n(10)
       dimension h(10)
       n(1) = 12.0d0
       n(2) = 24.0d0
       n(3) = 48.0d0
       n(4) = 96.0d0
       n(5) = 192.0d0
       n(6) = 384.0d0
       n(7) = 768.0d0
       n(8) = 1536.0d0
       n(9) = 3072.0d0
       n(10) = 6144.0d0
       ext = 0.01561623690449082548478384d0 !exato

       open(file='saida-1',unit=2)

       write(2,*) 'N                   | h                  | trapezi',
     & 'o           | simpsons           | boole              | '
 

       do i=1,10
         h(i) = 1.0d0/N(i)
         c1 = N(i)
         c2 = h(i)
         c3 = tra(h(i)) - ext
         c4 = sim(h(i)) - ext
         c5 = boo(h(i)) - ext
         write(2,4) c1, c2, c3, c4, c5
4        format( 5('|', f20.10), '|')       
       end do
       write(2,*) 'EXATO               | 0.0156162369'


       close(2)

       end program


       real*8 function f(x)
         implicit real*8 (a-h, o-z)
         pi = 4.0d0*datan(1.0d0)
         f = dexp(-x)*dcos(2.0d0*x*pi)
       end function

       real*8 function fn(an, h)
         implicit real*8 (a-h, o-z)
         fn = f((an)+(h))
       end function

       real*8 function tra(h)
         implicit real*8 (a-h, o-z)
         tra2 = ((h/2.0d0)*(fn(-1.0d0, h)+(2.0d0*fn(0.0d0,h))+
     &   fn(1.0d0,h))) ! -1 a 1
         tra = tra2/2.0d0 ! 0 a 1
       end function

       real*8 function sim(h)
         implicit real*8 (a-h, o-z)
         sim2 = (h/3.0d0)*(fn(1.0d0,h)+(4.0d0*fn(0.0d0,h))+
     &   fn(-1.0d0,h))
         sim = sim2/2.0d0
       end function

       real*8 function boo(h)
         implicit real*8 (a-h, o-z)
         boo2 = ((2.0d0*h)/45)*((7.0d0*fn(0.0d0,h))+(32.0d0*fn(1.0d0,h
     &   ))+(12.0d0*fn(2.0d0,h))+(32.0d0*fn(3.0d0,h))+
     &   (7.0d0*fn(4.0d0,h)))
         boo = boo2/2
       end function