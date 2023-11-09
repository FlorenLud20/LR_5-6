program z_7;
Var
  arr: array of Integer;
  max, count, i: Integer;

begin
  SetLength(arr, 10); // устанавливаем длину массива

  for i := 0 to High(arr) do // счетчик для перебора элементов пользователя
  begin
    Write('Введите значение arr[', i, ']: ');
    ReadLn(arr[i]); // считавание элементов пользователя
  end;

  max := 1; 
  count := 1;

  for i := 1 to High(arr) do // перебор элементов массива
  begin
    if arr[i] >= arr[i - 1] then // является ли текущий элемент больше или равен предыдущему
      count := count + 1 // если да, то увеличиваем длину на 1
    else
      count := 1; // иначе оставляем длину неизменной

    if count > max then // является ли текущаю длина больше максимальной
      max := count; // если да, то обновляем максимальную длину
  end;

  WriteLn('Максимальная длина неубывающего участка: ', max);
end.


