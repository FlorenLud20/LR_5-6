program z_8;
var
  arr: array of Integer; // объявляем массив
  n, i, j, maxCount, num, count: Integer; 
begin
  Write('Введите размер массива: '); 
  ReadLn(n); 
  
  SetLength(arr, n); // Устанавливаем размер массива равным n
  
  for i := 0 to n - 1 do // цикл для заполнения массива элементами
  begin
    Write('Введите элемент массива ', i, ': '); 
    ReadLn(arr[i]); 
  end;
  
  maxCount := 0; 
  num := arr[0]; 
  
  for i := 0 to n - 1 do // цикл для нахождения наиболее часто повторяющегося числа
  begin
    count := 0; 
    
    for j := 0 to n - 1 do // Вложенный цикл для сравнения текущего числа с другими элементами массива
    begin
      if (arr[i] = arr[j]) then
        count := count + 1; // Увеличиваем счетчик, если числа совпадают
    end;
    
    if (count > maxCount) then // Если текущее число повторяется чаще, чем предыдущее максимальное
    begin
      maxCount := count; // обновляем кол-во повторений
      num := arr[i]; // обновляем часто повторяющееся число
    end;
  end;
  
  WriteLn('Наиболее часто повторяющееся число: ', num); 
  WriteLn('Оно встречается ', maxCount, ' раз(а).'); 
end.

