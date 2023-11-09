Program z_13;
var
  arr: array[1..20] of Integer; // создаем массив
  i, min, max: 1..20;
  temp: Integer; // временная переменная
begin
  Randomize; // генератор случайных чисел

  for i := 1 to 20 do // заполняем массив случайными числами от 0 до 99
    arr[i] := Random(100);

  min := 1; // минимальный элемент
  max := 1; // максимальный элемент
  
  for i := 2 to 20 do // находим минимальный и максимальный элемент
  begin
    if arr[i] < arr[min] then
      min := i; // обновляем минимальный
    if arr[i] > arr[max] then
      max := i; // обновляем максимальный
  end;

  // Меняем местами минимальный и максимальный элементы
  temp := arr[min];
  arr[min] := arr[max];
  arr[max] := temp;

  for i := 1 to 20 do // Выводим массив
    Write(arr[i], ' ');
end.

