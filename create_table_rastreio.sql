drop table rastreio;

create table rastreio
(
	rash_id varchar(256) not null,
	num_pedido varchar(30) not null,
	cod_rastreio varchar(100) not null,
	desc_rastreio varchar(200),
	dt_movimentacao date,
	seq_rastreio  integer not null
);

comment on column rastreio.rash_id is 'Identificador unico relacionado ao numero do pedido e rastreio';

comment on column rastreio.num_pedido is 'Numero do pedido sendo rastreado';

comment on column rastreio.cod_rastreio is 'Codigo do rastreio';

comment on column rastreio.desc_rastreio is 'Descrição da fase de rastreio';

comment on column rastreio.dt_movimentacao is 'Data da transação de ocorrencia do rastreio';

comment on column rastreio.dt_movimentacao is 'Sequencia cronológica do rastreio';


create  unique index rastreio_ak on rastreio (rash_id,num_pedido,cod_rastreio,seq_rastreio);