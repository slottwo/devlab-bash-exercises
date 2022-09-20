#!/bin/bash
while true
do
    echo
    echo "1 — Exibir status da utilização das partições do sistema"
    echo "2 — Exibir relação de usuário logados"
    echo "3 — Exibir data/hora"
    echo "4 — Sair."
    echo
    echo -n "Informe sua opção: "
    read option
    case $option in
        1) df -h;;
        2) who | cut -d' ' -f1;;
        3) echo -n "Data atual: "; date | cut -d' ' -f 2-5;;
        4) break;;
        *) echo "Opção inválida";;
    esac
    echo -n 
    read
    clear
done