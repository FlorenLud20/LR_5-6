Program z_5;
var
  array1, array2: array[1..10] of integer; // объявляем два массива, которые будут содержать по 10 чисел
  sum1, sum2 : integer;
  i : integer;
  begin
    for i := 1 to 10 do // начало заполнения массива случайными числами
    begin
      array1[i] := Random(21) - 10; // заполнение числами от -10 до 10
      array2[i] := Random(21) - 10;
    end;
      
    sum1 := 0;
    sum2 := 0;
    
    for i := 1 to 10 do // вычисление суммы положительных элементов
    begin
      sum1 := sum1 + max(0, array1[i]); // добавление положительных элементов
      sum2 := sum2 + max(0, array2[i]);
    end;
    if sum1 < sum2 then // сравниваем суммы положительных элементов в массивах
      for i := 1 to 10 do 
        array1[i] := array1[i] * 10 // умножение массива
      else
        for i := 1 to 10 do
          array2[i] := array2[i] * 10; // иначе умножаем все элемента массива array2
        
        writeln('Первый массив:'); 
  for i := 1 to 10 do // вывод элементов первого массива
    write(array1[i], ' '); 
  writeln; 
  
  writeln('Второй массив:'); 
  for i := 1 to 10 do // вывод элементов второго массива
    write(array2[i], ' '); 
  writeln;      
  end.