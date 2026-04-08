<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>DigiFusion-N8N | Arquitetura AWS</title>

  <script src="https://cdn.tailwindcss.com"></script>

  <style>
    body { font-family: 'Inter', sans-serif; }
  </style>
</head>

<body class="bg-gray-950 text-gray-100">

<!-- HEADER -->
<header class="p-6 border-b border-gray-800 flex justify-between items-center">
  <h1 class="text-2xl font-bold text-orange-400">🚀 DigiFusion-N8N</h1>
  <button onclick="toggleTheme()" class="bg-gray-800 px-4 py-2 rounded-xl hover:bg-gray-700">🌙/☀️</button>
</header>

<!-- HERO -->
<section class="text-center py-16 px-6">
  <h2 class="text-4xl font-bold mb-4">Arquitetura Escalável na AWS</h2>
  <p class="text-gray-400 max-w-2xl mx-auto">
    Plataforma moderna para automação de workflows com foco em escalabilidade, resiliência e eficiência operacional.
  </p>
</section>

<!-- CARDS -->
<section class="grid md:grid-cols-3 gap-6 px-6 pb-16">

  <div class="bg-gray-900 p-6 rounded-2xl shadow">
    <h3 class="text-xl font-semibold mb-2">⚙️ DevOps</h3>
    <p class="text-gray-400">CI/CD automatizado, Terraform e deploy contínuo.</p>
  </div>

  <div class="bg-gray-900 p-6 rounded-2xl shadow">
    <h3 class="text-xl font-semibold mb-2">🔐 Segurança</h3>
    <p class="text-gray-400">IAM, WAF, criptografia e acesso via SSM.</p>
  </div>

  <div class="bg-gray-900 p-6 rounded-2xl shadow">
    <h3 class="text-xl font-semibold mb-2">📈 SRE</h3>
    <p class="text-gray-400">Alta disponibilidade, SLOs e observabilidade.</p>
  </div>

</section>

<!-- FLUXO -->
<section class="px-6 pb-16">
  <h3 class="text-2xl font-bold mb-4">🔄 Fluxo da Aplicação</h3>
  <div class="bg-gray-900 p-6 rounded-2xl overflow-x-auto">
    <pre class="text-green-400">Usuário → Route53 → WAF → ALB → N8N → Fila → Workers → RDS</pre>
  </div>
</section>

<!-- DIFERENCIAIS -->
<section class="px-6 pb-16">
  <h3 class="text-2xl font-bold mb-4">🎯 Diferenciais</h3>
  <ul class="grid md:grid-cols-2 gap-4 text-gray-400">
    <li>✔ Arquitetura evolutiva</li>
    <li>✔ Segurança sem SSH</li>
    <li>✔ Automação com Terraform</li>
    <li>✔ Alta confiabilidade</li>
  </ul>
</section>

<!-- FOOTER -->
<footer class="text-center p-6 border-t border-gray-800 text-gray-500">
  <p>✨ Projeto profissional pronto para portfólio e produção</p>
</footer>

<script>
function toggleTheme() {
  document.body.classList.toggle('bg-white');
  document.body.classList.toggle('text-black');
}
</script>

</body>
</html>
