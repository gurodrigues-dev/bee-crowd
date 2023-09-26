local month = io.read("*n")

local monthName

if month == 1 then
    monthName = "January"
elseif month == 2 then
    monthName = "February"
elseif month == 3 then
    monthName = "March"
elseif month == 4 then
    monthName = "April"
elseif month == 5 then
    monthName = "May"
elseif month == 6 then
    monthName = "June"
elseif month == 7 then
    monthName = "July"
elseif month == 8 then
    monthName = "August"
elseif month == 9 then
    monthName = "September"
elseif month == 10 then
    monthName = "October"
elseif month == 11 then
    monthName = "November"
elseif month == 12 then
    monthName = "December"
else
    monthName = "Invalid month"
end

print(monthName)
