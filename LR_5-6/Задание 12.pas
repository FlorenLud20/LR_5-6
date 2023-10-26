program z_12;
var
  arr: array[1..20] of integer; // Создаем массив из 20 элементов
  i, j: integer;
begin
  for i := 1 to 20 do // Заполняем массив случайными числами
  begin
    arr[i] := Random(100) - 50; // Генерируем случайное число от -50 до 49
  end;

  writeln('Исходный массив:'); 
  
  for i := 1 to 20 do // вывод исходного массива на экран
  begin
    write(arr[i], ' ');
  end;
  writeln;


  for i := 20 downto 1 do // для вставки нулей
  begin
    if arr[i] > 0 then
    begin
      for j := 20 downto i + 1 do // начиная с конца массива двигаясь к началу
      begin
        arr[j] := arr[j - 1]; // Сдвигаем элементы массива вправо
      end;
      arr[i] := 0; // Вставляем 0 перед положительным элементом
    end;
  end;

  writeln('Массив с 0 перед положительными элементами:');
  for i := 1 to 20 do // вывод измененного массива
  begin
    write(arr[i], ' ');
  end;
  writeln;
end.






