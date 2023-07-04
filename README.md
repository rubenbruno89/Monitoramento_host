# Monitoramento de Host ou IP

Este script em lote foi criado para monitorar a disponibilidade de um host ou IP específico. O objetivo é verificar se o host está online ou offline e enviar notificações correspondentes.

## Como utilizar

1. Certifique-se de ter o CURL instalado em seu sistema.
2. Abra o arquivo de script (.bat) em um editor de texto.
3. Na linha 5, substitua `192.168.1.69` pelo endereço do host ou IP que deseja monitorar.
4. Salve o arquivo com a extensão .bat.

## Funcionamento do script

O script utiliza o comando `ping` para verificar a disponibilidade do host ou IP definido na variável `%url%`. Em seguida, ele redireciona a saída do comando para o comando `find` a fim de procurar a string "TTL". Se o comando `ping` retornar um código de erro (errorlevel 1), significa que o host está offline. Nesse caso, uma mensagem será exibida indicando que o host está fora do ar e será enviada uma notificação através do CURL para o endpoint `ntfy.sh/monitoramento` com a mensagem correspondente.

Caso o host esteja online, uma mensagem será exibida indicando que o host está online e também será enviada uma notificação através do CURL com a mensagem correspondente.

Após cada verificação, o script aguarda 100 segundos (timeout /t 100) e volta para o início do loop, continuando o monitoramento de forma contínua.

## Observações

- Certifique-se de ter uma conexão com a internet para que o script possa enviar as notificações corretamente.
- O script está configurado para realizar o monitoramento indefinidamente. Caso queira interromper o script, pressione Ctrl+C no console.
