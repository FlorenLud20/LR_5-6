program z_6;
var
  arr: array[1..5] of Integer;
  i: Integer;
  a: Boolean; // определение порядка
begin
  a := True; // счет того, что массив упорядочен

  for i := 1 to 5 do // счетчик для перебора элементов массива, введенного пользователем
  begin
    Write('Введите элемент массива[', i, ']: ');
    ReadLn(arr[i]); // считывание элементов массива
  end;

  for i := 2 to 5 do 
  begin
    if arr[i] < arr[i - 1] then
    begin
      a := False; // если порядок нарушается, то меняем на False
      Break; // завершаем цикл
    end;
  end;

  if a then
    WriteLn('Массив упорядочен по возрастанию.') // если True
  else
    WriteLn('Массив не упорядочен по возрастанию.'); // если False
end.


