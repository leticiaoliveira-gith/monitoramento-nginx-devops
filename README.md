# Monitoramento Automático do Nginx

Projeto desenvolvido como conclusão do curso **DevOps: explorando conceitos, comandos e scripts no Linux CLI** (Alura + Oracle ONE), com foco em administração de servidores Linux, Shell Script e automação de tarefas.

## 🎯 Sobre o projeto

O objetivo é monitorar automaticamente se o servidor web **Nginx** está em execução, registrando o status em um arquivo de log a cada minuto, através de agendamento com **Cron**.

Além do script principal de monitoramento, o repositório reúne outros scripts Bash desenvolvidos ao longo do curso, que exploram diferentes conceitos de automação em Linux.

## 🛠️ Tecnologias e conceitos aplicados

- **Linux (Ubuntu Server)** — administração via terminal
- **Bash / Shell Script** — variáveis, condicionais (`if`/`else`), estrutura `case`, arrays, parâmetros posicionais
- **SSH** — acesso remoto ao servidor
- **Nginx** — instalação e verificação de status de servidor web
- **Cron** — agendamento de tarefas automatizadas
- **Monitoramento de processos** — `top`, `ps`, `grep`, `pgrep`

## 📁 Estrutura do repositório

```
monitoramento-nginx-devops/
├── scripts/
│   ├── monitoramento.sh    # Script principal: verifica se o Nginx está ativo
│   ├── backup.sh           # Gera backup compactado com nome único (data/hora)
│   ├── compactador         # Compacta arquivos recebidos por parâmetro
│   └── compedescomp.sh     # Menu interativo para compactar ou descompactar
└── exemplos/
    └── saida_nginx_exemplo.txt  # Amostra do log gerado pelo monitoramento.sh
```

## 📜 Scripts

### `monitoramento.sh`
Verifica se o processo do Nginx está em execução usando `pgrep` e exibe uma mensagem com data e hora indicando se o serviço está operando ou fora de operação.

```bash
./scripts/monitoramento.sh
# Nginx esta operando - 2026-09-13 12:00:01
```

**Agendado via crontab** para rodar a cada minuto, com saída redirecionada para um arquivo de log:
```bash
* * * * * /home/leticia/monitoramento.sh >> /home/leticia/saida_nginx.txt
```

### `backup.sh`
Compacta um diretório definido, gerando um arquivo `.tar.gz` com nome único baseado na data e hora da execução.

### `compactador`
Script genérico que recebe via parâmetro o nome do arquivo de saída e a lista de arquivos a compactar:
```bash
./scripts/compactador saida.tar.gz arquivo1.txt arquivo2.txt
```

### `compedescomp.sh`
Menu interativo (`read` + `case`) que permite ao usuário escolher entre compactar ou descompactar arquivos, solicitando os dados necessários em tempo de execução.

## ▶️ Como executar

```bash
git clone https://github.com/leticiaoliveira-gith/monitoramento-nginx-devops.git
cd monitoramento-nginx-devops/scripts
chmod +x monitoramento.sh
./monitoramento.sh
```

## 💡 Ambiente de desenvolvimento

O projeto foi desenvolvido e testado em um ambiente **WSL2 (Windows Subsystem for Linux)** com Ubuntu, simulando um servidor Linux completo em notebook com recursos limitados — demonstrando que é possível praticar administração de sistemas e DevOps sem depender de máquinas virtuais pesadas.

## 🎓 Certificado

Curso concluído em 13/09/2026 pela Alura, em parceria com a Oracle ONE — carga horária de 8 horas.

---

Desenvolvido por **Letícia Oliveira** — [GitHub](https://github.com/leticiaoliveira-gith)
