# 📊 Sistema IoT para Monitoramento de Atividade Física

Projeto desenvolvido para o Projeto Integrador da UNIVESP.

## 🎯 Objetivo

Desenvolver um sistema capaz de capturar, processar e transformar dados de atividade física em mecanismos de engajamento, utilizando:

- Internet das Coisas (IoT)
- Automação (n8n)
- Interface conversacional (Telegram)
- Banco de dados em nuvem (Supabase)

---

## ⚙️ Tecnologias Utilizadas

- Telegram Bot (interface com usuário)
- n8n (automação e processamento)
- Supabase (PostgreSQL na nuvem)
- JavaScript (lógica de processamento)

---

## 🔄 Funcionamento do Sistema

1. O usuário envia um comando via Telegram

2. O bot recebe a mensagem

3. O n8n processa os dados:
- identifica o comando
- extrai o número de passos
- calcula a pontuação

4. Os dados são armazenados no banco (Supabase)

5. O usuário recebe um feedback automático

---

## 🧠 Regras de Pontuação

- Até 4.999 passos → 2 pontos  
- 5.000 a 7.999 → 5 pontos  
- 8.000 a 9.999 → 8 pontos  
- 10.000+ → 10 pontos  

---

## 🗄️ Estrutura do Banco de Dados

```sql
create table atividades (
id serial primary key,
telegram_id bigint,
passos int,
pontos int,
data_registro timestamp default now()
);

```

🚀 Status do Projeto

✔️ Captura de dados via Telegram
✔️ Processamento automático com n8n
✔️ Cálculo de pontuação
✔️ Armazenamento em banco de dados
✔️ Resposta automática ao usuário

🔜 Próximos Passos

Implementar ranking entre usuários
Criar sistema de desafios
Adicionar histórico de atividades
Integrar com Google Fit
