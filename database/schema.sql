create table atividades (
  id serial primary key,
  telegram_id bigint,
  passos int,
  pontos int,
  data_registro timestamp default now()
);
