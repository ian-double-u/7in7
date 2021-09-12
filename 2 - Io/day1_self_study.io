Nums := List clone

for (i, 1, 9,
  Nums append(i)
)

Nums print

"\n\n" print
1 + 1 print

"\n\n" print
#1 + "one" print # Io is strongly typed

if (0,"0 is true" print, "0 is false" print) # true
"\n\n" print
if ("","the empty string is true" print, "the empty string is false" print) # true
"\n\n" print
if (nil,"nil is true" print, "nil is false" print) # false

"\n\n" print
Nums slotNames print # slotNames gives slots a prototype supports

"\n\n" print

# = 
# Assigns value to slot if it exists, otherwise raises exception

# := 
# Creates slot, assigns value

# ::=
# Creates slot, creates setter, assigns value
