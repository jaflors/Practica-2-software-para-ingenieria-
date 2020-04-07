clc;

m= input('Ingrese la dimension de matriz ');
raninf =  input('Ingrese  el rango inferior ');
ransup =   input('Ingrese el rango superior ');


matriz= raninf+fix(rand(m,m)*(ransup-raninf+1));


disp ('matriz es =',matriz);

num=input('Digite el numero que desea buscar =');



cont=0;
for i=1:m
    for j=1:m
       if(matriz(i,j)==num)then
         cont=cont+1;
           end
        end
    
end
 printf("el numero %d esta repetido %d veces\n\n ",num,cont);
  
  for i=1:m
    for j=1:m
       if(matriz(i,j)==num)then
            fila= i;
            columna =j;
           printf (" En la  posición (%d ,%d)\n\n",fila,columna);
           end
        end
        
    end
    
 
  
  op=input("¿desea modificar los datos (s/n)? :","string");

  
   
if(op=='s') then
   for i=1:m
    for j=1:m
       if(matriz(i,j)==num)then
            fila= i;
            columna =j;
             printf (" ¿desea modificar la  posición (%d ,%d) (s/n)? = \n",fila,columna);
                   op2=input("","string");
                   if (op2=='s')then
                       numero=input('ingrese el nuevo numero = ');
                       matriz(fila,columna)=numero;
                     else
                        
                    end                    
           
           end
        end
        
    end
  disp ('matriz con nuevos numeros =',matriz);      
   else
      disp ('matriz es =',matriz);  
 
 end
