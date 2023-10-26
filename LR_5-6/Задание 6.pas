program z_6;
var
  arr: array[1..5] of Integer = (1, 2, 3, 4, 5);
  i: Integer;
  a: Boolean; // определение порядка 
begin
  a := True; // счет того, что массив упорядочен

  for i := 2 to 5 do
  begin
    if arr[i] < arr[i - 1] then
    begin
      a := False; // если элемента нарушают порядок, то меняем значение на False
      Break; // если уже порядок нарушается, то прерываем цикл
    end;
  end;

  if a then
    WriteLn('Массив упорядочен по возрастанию.') // если значение True, то выводим, что упорядочен
  else
    WriteLn('Массив не упорядочен по возрастанию.'); // если значение False, то выводим, что не упорядочен
end.


