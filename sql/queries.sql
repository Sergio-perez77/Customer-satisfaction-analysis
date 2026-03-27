-- Kapi Promedio general de satisfaccion:
select round(avg("csat score"), 2) as promedio_satisfaccion from soporte;

--Satisfaccion por canal de soporte:
select support_type, round(avg("csat score"), 2) as satisfaccion_promedio from soporte group by support_type order by satisfaccion_promedio;

--Perfomance por agente: 
select "agent nanme", count(*) as casos, round(avg("csat score), 2) as csat_promedio from soporte group by "agent name" order by csat_promedio desc;

--Performance por supervisor:
select supervisor, round(avg("csat score"), 2) as csat_promedio from soporte group by supervisor order by csat_promedio desc;

--Por canal:
select cahnnel_name, count(*) as volumen, round(avg("csat score"), 2) as csat from soporte group by channel_name order by csat des;

--Tiempo vs satisfaccion:
select connected_handling_time, count(*) as casos, round(avg("csat score"), 2) as csat from soporte group by connected_handling_time order by connected_handling_time;

--Por categoria de producto:
select product_category, round(avg("csat score"), 2) ascsat from soporte group by product_category order by csat des;

--Por ciudad:
select "customer city", round(avg("csat score"), 2) as csat from soporte group by "customer city" order by csat desc limit 10;

--Casos criticos:
select "agent name", channel_name, "customer city", "csat score" from soporte where "csat score" <=2;

--Distribucion de CSAT:
select "csat score", count(*) as cantidad from soporte group by "csat score" order by "csat score";
