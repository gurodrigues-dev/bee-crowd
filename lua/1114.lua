while true do
    local pass = io.read("*n")

    if pass == 2002 then
        print("Acesso Permitido")
        break
    else
        print("Senha Invalida")
    end
end
