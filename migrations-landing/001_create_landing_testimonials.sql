-- 001_create_landing_testimonials.sql
-- Ejercicio de entrenamiento. NO ejecutado: revisar antes de correr.

create table landing_testimonials (
  id uuid default gen_random_uuid() primary key,
  name text not null,
  district text not null,
  rubro text not null,
  rating smallint not null check (rating between 1 and 5),
  comment text not null,
  avatar_url text,
  created_at timestamptz default now()
);

alter table landing_testimonials enable row level security;

-- Solo lectura pública (rol anon). Sin policies de insert/update/delete:
-- con RLS activo, esas operaciones quedan denegadas para anon.
create policy "landing_testimonials_public_select"
  on landing_testimonials for select to anon using (true);

insert into landing_testimonials (name, district, rubro, rating, comment, avatar_url) values
  ('Camila Quispe', 'San Juan de Lurigancho', 'Atención al cliente', 5,
   'Postular me tomó cinco minutos desde el celular. Al día siguiente ya me estaban escribiendo para la entrevista.', 'avatar-01.jpg'),
  ('Diego Huamán', 'Comas', 'Delivery', 5,
   'Fue mi primera experiencia laboral. Elijo mis horarios y así sigo yendo a clases en las mañanas. Cero complicaciones.', 'avatar-02.jpg'),
  ('Lucía Paredes', 'Santiago de Surco', 'Retail', 4,
   'El chat con la tienda me ayudó a resolver dudas antes de ir a la entrevista. Me respondieron el mismo día.', 'avatar-03.jpg'),
  ('Jorge Salazar', 'Villa El Salvador', 'Almacén', 5,
   'Me pagaron puntual cada semana, sin descuentos raros. Eso para mí vale mucho, causa.', 'avatar-04.jpg'),
  ('Rosa Mendoza', 'Ate', 'Restaurante', 4,
   'Empecé en cocina los fines de semana. El horario es flexible y mi jefa entiende cuando tengo que cuidar a mi hija.', 'avatar-05.jpg'),
  ('Marco Ríos', 'San Miguel', 'Construcción', 4,
   'Conseguí de ayudante en una obra cerca de casa. Faltó algo más de detalle del pago en la oferta, pero en la obra todo bien.', 'avatar-06.jpg'),
  ('Elena Vargas', 'Los Olivos', 'Limpieza', 5,
   'Me da tranquilidad saber el horario y la dirección antes de aceptar. Ya llevo tres meses limpiando oficinas por las tardes.', 'avatar-07.jpg'),
  ('Luis Cárdenas', 'San Martín de Porres', 'Mantenimiento', 3,
   'Está bien, salió un puesto a dos cuadras de mi casa. Tardaron unos días en responderme, pero al final me llamaron.', 'avatar-08.jpg'),
  ('Valeria Torres', 'Jesús María', 'Administrativo', 5,
   'Nunca había armado un perfil de trabajo y me guió paso a paso. Ahora apoyo en una oficina medio tiempo.', 'avatar-01.jpg'),
  ('Anthony Flores', 'Independencia', 'Eventos', 4,
   'Trabajé armando escenarios en un concierto. Me avisaron por la app con tiempo y me pagaron a los dos días.', 'avatar-02.jpg'),
  ('Milagros Rojas', 'Chorrillos', 'Atención al cliente', 4,
   'Lo que más me gustó fue poder hablar directo con la empresa por el chat, sin intermediarios ni llamadas raras.', 'avatar-03.jpg'),
  ('Kevin Ccori', 'San Juan de Miraflores', 'Delivery', 3,
   'Las ofertas salen rápido y eso es bueno. A veces la zona de reparto es lejos de mi casa, pero uno filtra y listo.', 'avatar-04.jpg'),
  ('Rocío Chávez', 'La Victoria', 'Retail', 5,
   'Trabajo en una tienda de ropa en campaña. La respuesta fue rapidísima: postulé en la mañana y en la tarde ya tenía entrevista.', 'avatar-05.jpg'),
  ('Renzo Gutiérrez', 'Surquillo', 'Restaurante', 5,
   'Empecé de mozo por horas y ahora me quedaron fijo. Lo mejor es que las propinas y el pago llegan claros.', 'avatar-06.jpg'),
  ('Nancy Alva', 'Carabayllo', 'Limpieza', 4,
   'Encontré horarios de mañana que me dejan recoger a mis hijos. Me gustaría que hubiera más ofertas por mi zona.', 'avatar-07.jpg'),
  ('Percy Loayza', 'Puente Piedra', 'Almacén', 4,
   'La empresa me contactó por la misma plataforma y me explicaron todo el proceso. Me sentí tomado en cuenta.', 'avatar-08.jpg'),
  ('Andrea Villanueva', 'Magdalena del Mar', 'Eventos', 5,
   'Hice atención en bodas los sábados. Es una chamba distinta cada fin de semana y me pagan por evento, súper cómodo.', 'avatar-01.jpg'),
  ('Sergio Medina', 'Lince', 'Administrativo', 4,
   'Buscaba algo de digitación y archivo para juntar plata. Postulé a cuatro ofertas y me respondieron tres.', 'avatar-02.jpg'),
  ('Yesenia Ramos', 'El Agustino', 'Mantenimiento', 4,
   'Hago mantenimiento de jardines en un condominio. Me gustó que la oferta decía claro las horas y lo que iba a ganar.', 'avatar-03.jpg'),
  ('Fabrizio Núñez', 'Barranco', 'Retail', 5,
   'Mi primer trabajo formal. Me sentí acompañado desde que postulé hasta el primer día en la tienda.', 'avatar-04.jpg'),
  ('Karen Osorio', 'Rímac', 'Restaurante', 3,
   'Buen sistema para postular, sin tanto papeleo. Yo hubiera querido más detalle de los turnos, pero en general bien.', 'avatar-05.jpg'),
  ('Walter Espinoza', 'Lurín', 'Construcción', 5,
   'Fui a trabajar en una obra y el pago fue puntual, tal como decía la oferta. Ya me llamaron para otra.', 'avatar-06.jpg'),
  ('Diana Cueva', 'Pueblo Libre', 'Administrativo', 4,
   'Compagino la universidad con un trabajo de asistente en una oficina. El horario flexible me salvó los exámenes.', 'avatar-07.jpg'),
  ('Bryan Machaca', 'Villa María del Triunfo', 'Eventos', 5,
   'Hice logística en una feria. Me escribieron por el chat con todas las indicaciones y llegué sabiendo qué hacer.', 'avatar-08.jpg');
