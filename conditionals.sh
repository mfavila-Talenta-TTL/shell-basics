# If Simple

# if [ "foo" = "foo" ]; 
# then
#   echo expression evaluated as true
# fi

# Else

# if [ "foo" = "foo" ]; then
#   echo expression evaluated as true
# else
#   echo expression evaluated as false
# fi

# Condicionales con variables

# T1="foo"
# T2="bar"
# if [ "$T1" = "$T2" ]; then
#   echo expression evaluated as true
# else
#   echo expression evaluated as false
# fi

# Utilizando el elseif

echo "Ingresa tu edad:"
read edad
if [ $edad -lt 18 ]; then
    echo "Eres menor de edad."
elif [ $edad -eq 18 ]; then
    echo "Tienes 18 años."
else
    echo "Eres mayor de edad."
fi
