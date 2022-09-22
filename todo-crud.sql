/*comando para eliminar la tabla en caso de existir*/
DROP TABLE IF EXISTS todos;

CREATE TABLE "todos" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "designed_to" varchar NOT NULL,
  "description" text,
  "start_date" date DEFAULT 'now()',
  "end_date" date NOT NULL,
  "is_completed" bool DEFAULT false
);

insert into todos 

values (
'7a2e38e5-14d0-446d-8dfd-547b9bd4b434',
'Compras',
'Grupo 10',
'Agua, cafe, pizza, pollo, carne, papas, jugo',
'2022-9-21',
'2022-09-22',
true
),
(
'eb6be67b-32a4-4671-bec8-b1a1dcb69104',
'Ventas',
'Grupo 10',
'Tele, Mesa, Colchon, Cocina, pc',
'2022-9-21',
'2022-09-22',
false
),
(
'52332ed2-d117-4e18-b44a-4bba33f2adc2',
'Tareas',
'Grupo 10',
'Cocinar, Limpiar el piso, Hacer la cama, Bañarse, Dormir',
'2022-9-21',
'2022-09-22',
true
);
-- delete from todos 
/*consulta para obtener todos los usuarios */
select * from todos;

/*consulta para obtener los completados */
select * from todos where is_completed = false
select * from todos where is_completed