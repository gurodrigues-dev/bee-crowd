program TimeDifference;
var
  h1, m1, h2, m2, hours, mins: integer;
begin
  readln(h1, m1, h2, m2);

  hours := h2 - h1;
  if hours < 0 then
    hours := 24 - abs(hours);

  mins := m2 - m1;
  if mins < 0 then
  begin
    hours := hours - 1;
    mins := 60 - abs(mins);
  end;

  if hours < 0 then
    hours := 24 + hours;

  if (hours = 0) and (mins = 0) then
    hours := 24;

  writeln('O JOGO DUROU ', hours, ' HORA(S) E ', mins, ' MINUTO(S)');
end.