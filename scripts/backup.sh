#! /bin/bash

diretorio_backup="/home/leticia/devops"
nome_arquivo="backup_$(date +%y%m%d_%h%m%s).tar.gz"

tar -czf "$nome_arquivo" "$diretorio_backup"

echo "Backup concluido em $nome_arquivo"
