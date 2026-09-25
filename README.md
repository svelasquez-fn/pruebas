# relevo-landing-ia

Landing estática con Supabase.

## Setup

1. Clonar el repo.
2. `cp config.example.js config.js` y completar `SUPABASE_URL` y `SUPABASE_ANON_KEY`
   (`config.js` está en `.gitignore`, no se sube).
3. Aplicar `migrations-landing/001_create_landing_testimonials.sql` en tu proyecto Supabase.
4. Abrir `index.html` en el navegador.
