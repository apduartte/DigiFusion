<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>DigiFusion-N8N | Arquitetura AWS</title>
  
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
<!DOCTYPE html> <html lang="pt-BR"> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <title>DigiFusion-N8N: Arquitetura Escalável na AWS</title> <style> body { font-family: Arial, sans-serif; margin: 2rem; background-color: #f9f9f9; color: #333; line-height: 1.6; } h1, h2, h3 { color: #2c3e50; } .badges img { margin-right: 0.5rem; vertical-align: middle; } table { border-collapse: collapse; width: 100%; margin-bottom: 1.5rem; } th, td { border: 1px solid #ddd; padding: 0.75rem; text-align: left; } th { background-color: #2c3e50; color: white; } pre { background-color: #eee; padding: 1rem; overflow-x: auto; } blockquote { border-left: 4px solid #2c3e50; padding-left: 1rem; color: #555; font-style: italic; margin: 1rem 0; } section { margin-bottom: 2rem; } </style> </head> <body> <header> <h1>🚀 DigiFusion-N8N</h1> <h2>Arquitetura evolutiva para automação de workflows com N8N na AWS</h2> <div class="badges"> <img src="https://img.shields.io/badge/AWS-Cloud-%23FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" alt="AWS Badge"> <img src="https://img.shields.io/badge/Terraform-IaC-%237B42BC?style=for-the-badge&logo=terraform" alt="Terraform Badge"> <img src="https://img.shields.io/badge/Docker-Container-%230db7ed?style=for-the-badge&logo=docker" alt="Docker Badge"> </div> </header>

<section>
    <h3>📌 Objetivo</h3>
    <p>O <strong>DigiFusion-N8N</strong> demonstra a construção de uma arquitetura moderna na AWS, evoluindo de uma <strong>prova de conceito (POC)</strong> até um ambiente <strong>produtivo escalável e resiliente</strong>.</p>
    <p>A solução aplica práticas consolidadas de:</p>
    <ul>
        <li>Cloud Computing</li>
        <li>DevOps</li>
        <li>Segurança</li>
        <li>FinOps</li>
        <li>SRE (Site Reliability Engineering)</li>
    </ul>
</section>

<section>
    <h3>🧠 Modelo Arquitetural</h3>
    <table>
        <thead>
            <tr><th>Nível</th><th>Descrição</th></tr>
        </thead>
        <tbody>
            <tr><td><strong>POC</strong></td><td>Baixo custo, implementação rápida</td></tr>
            <tr><td><strong>Alta Disponibilidade (HA)</strong></td><td>Redundância e estabilidade</td></tr>
            <tr><td><strong>Produção Escalável</strong></td><td>Performance, resiliência e escalabilidade</td></tr>
        </tbody>
    </table>
</section>

<section>
    <h3>🏗️ Arquitetura em Camadas</h3>
    <ol>
        <li><strong>Entrada (Edge)</strong> → DNS, WAF, Load Balancer, ACM</li>
        <li><strong>Aplicação</strong> → N8N, Workers, Auto Scaling</li>
        <li><strong>Dados</strong> → RDS PostgreSQL, S3 (histórico/backups)</li>
        <li><strong>Acesso</strong> → AWS Systems Manager (SSM), sem SSH</li>
        <li><strong>Identidade (IAM)</strong> → Roles, Policies, Least Privilege</li>
        <li><strong>Observabilidade</strong> → Logs, métricas, alarmes</li>
        <li><strong>FinOps (Transversal)</strong> → Monitoramento e otimização de custos</li>
    </ol>
</section>

<section>
    <h3>🔄 Fluxo da Aplicação</h3>
    <pre>Usuário → Route 53 → WAF → ALB → N8N → Fila → Workers → RDS</pre>
</section>

<section>
    <h3>🔐 Segurança</h3>
    <ul>
        <li>HTTPS com ACM</li>
        <li>WAF contra ataques HTTP</li>
        <li>IAM com princípio do menor privilégio</li>
        <li>Administração via SSM (SSH desabilitado)</li>
        <li>Criptografia em trânsito (TLS) e em repouso</li>
    </ul>
</section>

<section>
    <h3>⚙️ DevOps</h3>
    <ul>
        <li>Infraestrutura como código (Terraform)</li>
        <li>Pipeline CI/CD automatizado</li>
        <li>Execução remota via SSM</li>
        <li>Automação de deploy, backup e health checks</li>
    </ul>
</section>

<section>
    <h3>📈 SRE (Confiabilidade)</h3>
    <ul>
        <li><strong>SLIs</strong>: latência, taxa de erro, disponibilidade</li>
        <li><strong>SLOs</strong>: 99.9% de disponibilidade, latência &lt; 300ms</li>
        <li>Estratégias: Multi-AZ, Auto Scaling, Load Balancer, tolerância a falhas</li>
    </ul>
</section>

<section>
    <h3>💰 FinOps</h3>
    <ul>
        <li>Drivers de custo: execução N8N, CPU EC2, RDS, logs</li>
        <li>Estratégias: ambientes isolados (dev/staging/prod), uso sob demanda, rightsizing, desligamento de ambientes não produtivos</li>
    </ul>
</section>

<section>
    <h3>🧪 Engenharia de Dados</h3>
    <p>Fluxo:</p>
    <pre>Webhook → N8N → Fila → Worker → Banco</pre>
    <p>Evolução planejada:</p>
    <ul>
        <li>Armazenamento histórico em S3</li>
        <li>Separação entre dados operacionais e analíticos</li>
    </ul>
</section>

<section>
    <h3>🚀 Ambientes</h3>
    <table>
        <thead>
            <tr><th>Ambiente</th><th>Arquitetura</th></tr>
        </thead>
        <tbody>
            <tr><td>Dev</td><td>POC</td></tr>
            <tr><td>Staging</td><td>Alta Disponibilidade</td></tr>
            <tr><td>Produção</td><td>Escalável</td></tr>
        </tbody>
    </table>
</section>

<section>
    <h3>🎯 Diferenciais</h3>
    <ul>
        <li>Arquitetura evolutiva e escalável</li>
        <li>Segurança sem exposição via SSH</li>
        <li>Automação completa com Terraform</li>
        <li>Governança de custos (FinOps)</li>
        <li>Alta confiabilidade (SRE)</li>
        <li>Separação clara por camadas</li>
    </ul>
</section>

<section>
    <h3>🧭 Conclusão</h3>
    <p>O DigiFusion-N8N demonstra a implementação de uma arquitetura moderna na nuvem, com foco em:</p>
    <ul>
        <li>Eficiência operacional</li>
        <li>Segurança</li>
        <li>Escalabilidade</li>
        <li>Controle de custos</li>
        <li>Resiliência</li>
    </ul>
</section>

<section>
    <h3>📌 Frase do Projeto</h3>
    <blockquote>"Do simples ao escalável: evolução guiada por automação, segurança e eficiência."</blockquote>
</section>

<footer>
    <p>✨ Essa versão está pronta para ser publicada no <strong>GitHub Pages</strong> e usada como <strong>portfólio técnico</strong>.</p>
</footer>

</body> </html><!DOCTYPE html> <html lang="pt-BR"> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <title>DigiFusion-N8N: Arquitetura Escalável na AWS</title> <style> body { font-family: Arial, sans-serif; margin: 2rem; background-color: #f9f9f9; color: #333; line-height: 1.6; } h1, h2, h3 { color: #2c3e50; } .badges img { margin-right: 0.5rem; vertical-align: middle; } table { border-collapse: collapse; width: 100%; margin-bottom: 1.5rem; } th, td { border: 1px solid #ddd; padding: 0.75rem; text-align: left; } th { background-color: #2c3e50; color: white; } pre { background-color: #eee; padding: 1rem; overflow-x: auto; } blockquote { border-left: 4px solid #2c3e50; padding-left: 1rem; color: #555; font-style: italic; margin: 1rem 0; } section { margin-bottom: 2rem; } </style> </head> <body> <header> <h1>🚀 DigiFusion-N8N</h1> <h2>Arquitetura evolutiva para automação de workflows com N8N na AWS</h2> <div class="badges"> <img src="https://img.shields.io/badge/AWS-Cloud-%23FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" alt="AWS Badge"> <img src="https://img.shields.io/badge/Terraform-IaC-%237B42BC?style=for-the-badge&logo=terraform" alt="Terraform Badge"> <img src="https://img.shields.io/badge/Docker-Container-%230db7ed?style=for-the-badge&logo=docker" alt="Docker Badge"> </div> </header>

<section>
    <h3>📌 Objetivo</h3>
    <p>O <strong>DigiFusion-N8N</strong> demonstra a construção de uma arquitetura moderna na AWS, evoluindo de uma <strong>prova de conceito (POC)</strong> até um ambiente <strong>produtivo escalável e resiliente</strong>.</p>
    <p>A solução aplica práticas consolidadas de:</p>
    <ul>
        <li>Cloud Computing</li>
        <li>DevOps</li>
        <li>Segurança</li>
        <li>FinOps</li>
        <li>SRE (Site Reliability Engineering)</li>
    </ul>
</section>

<section>
    <h3>🧠 Modelo Arquitetural</h3>
    <table>
        <thead>
            <tr><th>Nível</th><th>Descrição</th></tr>
        </thead>
        <tbody>
            <tr><td><strong>POC</strong></td><td>Baixo custo, implementação rápida</td></tr>
            <tr><td><strong>Alta Disponibilidade (HA)</strong></td><td>Redundância e estabilidade</td></tr>
            <tr><td><strong>Produção Escalável</strong></td><td>Performance, resiliência e escalabilidade</td></tr>
        </tbody>
    </table>
</section>

<section>
    <h3>🏗️ Arquitetura em Camadas</h3>
    <ol>
        <li><strong>Entrada (Edge)</strong> → DNS, WAF, Load Balancer, ACM</li>
        <li><strong>Aplicação</strong> → N8N, Workers, Auto Scaling</li>
        <li><strong>Dados</strong> → RDS PostgreSQL, S3 (histórico/backups)</li>
        <li><strong>Acesso</strong> → AWS Systems Manager (SSM), sem SSH</li>
        <li><strong>Identidade (IAM)</strong> → Roles, Policies, Least Privilege</li>
        <li><strong>Observabilidade</strong> → Logs, métricas, alarmes</li>
        <li><strong>FinOps (Transversal)</strong> → Monitoramento e otimização de custos</li>
    </ol>
</section>

<section>
    <h3>🔄 Fluxo da Aplicação</h3>
    <pre>Usuário → Route 53 → WAF → ALB → N8N → Fila → Workers → RDS</pre>
</section>

<section>
    <h3>🔐 Segurança</h3>
    <ul>
        <li>HTTPS com ACM</li>
        <li>WAF contra ataques HTTP</li>
        <li>IAM com princípio do menor privilégio</li>
        <li>Administração via SSM (SSH desabilitado)</li>
        <li>Criptografia em trânsito (TLS) e em repouso</li>
    </ul>
</section>

<section>
    <h3>⚙️ DevOps</h3>
    <ul>
        <li>Infraestrutura como código (Terraform)</li>
        <li>Pipeline CI/CD automatizado</li>
        <li>Execução remota via SSM</li>
        <li>Automação de deploy, backup e health checks</li>
    </ul>
</section>

<section>
    <h3>📈 SRE (Confiabilidade)</h3>
    <ul>
        <li><strong>SLIs</strong>: latência, taxa de erro, disponibilidade</li>
        <li><strong>SLOs</strong>: 99.9% de disponibilidade, latência &lt; 300ms</li>
        <li>Estratégias: Multi-AZ, Auto Scaling, Load Balancer, tolerância a falhas</li>
    </ul>
</section>

<section>
    <h3>💰 FinOps</h3>
    <ul>
        <li>Drivers de custo: execução N8N, CPU EC2, RDS, logs</li>
        <li>Estratégias: ambientes isolados (dev/staging/prod), uso sob demanda, rightsizing, desligamento de ambientes não produtivos</li>
    </ul>
</section>

<section>
    <h3>🧪 Engenharia de Dados</h3>
    <p>Fluxo:</p>
    <pre>Webhook → N8N → Fila → Worker → Banco</pre>
    <p>Evolução planejada:</p>
    <ul>
        <li>Armazenamento histórico em S3</li>
        <li>Separação entre dados operacionais e analíticos</li>
    </ul>
</section>

<section>
    <h3>🚀 Ambientes</h3>
    <table>
        <thead>
            <tr><th>Ambiente</th><th>Arquitetura</th></tr>
        </thead>
        <tbody>
            <tr><td>Dev</td><td>POC</td></tr>
            <tr><td>Staging</td><td>Alta Disponibilidade</td></tr>
            <tr><td>Produção</td><td>Escalável</td></tr>
        </tbody>
    </table>
</section>

<section>
    <h3>🎯 Diferenciais</h3>
    <ul>
        <li>Arquitetura evolutiva e escalável</li>
        <li>Segurança sem exposição via SSH</li>
        <li>Automação completa com Terraform</li>
        <li>Governança de custos (FinOps)</li>
        <li>Alta confiabilidade (SRE)</li>
        <li>Separação clara por camadas</li>
    </ul>
</section>

<section>
    <h3>🧭 Conclusão</h3>
    <p>O DigiFusion-N8N demonstra a implementação de uma arquitetura moderna na nuvem, com foco em:</p>
    <ul>
        <li>Eficiência operacional</li>
        <li>Segurança</li>
        <li>Escalabilidade</li>
        <li>Controle de custos</li>
        <li>Resiliência</li>
    </ul>
</section>

<section>
    <h3>📌 Frase do Projeto</h3>
    <blockquote>"Do simples ao escalável: evolução guiada por automação, segurança e eficiência."</blockquote>
</section>

<footer>
    <p>✨ Essa versão está pronta para ser publicada no <strong>GitHub Pages</strong> e usada como <strong>portfólio técnico</strong>.</p>
</footer>

</body> </html><!DOCTYPE html> <html lang="pt-BR"> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <title>DigiFusion-N8N: Arquitetura Escalável na AWS</title> <style> body { font-family: Arial, sans-serif; margin: 2rem; background-color: #f9f9f9; color: #333; line-height: 1.6; } h1, h2, h3 { color: #2c3e50; } .badges img { margin-right: 0.5rem; vertical-align: middle; } table { border-collapse: collapse; width: 100%; margin-bottom: 1.5rem; } th, td { border: 1px solid #ddd; padding: 0.75rem; text-align: left; } th { background-color: #2c3e50; color: white; } pre { background-color: #eee; padding: 1rem; overflow-x: auto; } blockquote { border-left: 4px solid #2c3e50; padding-left: 1rem; color: #555; font-style: italic; margin: 1rem 0; } section { margin-bottom: 2rem; } </style> </head> <body> <header> <h1>🚀 DigiFusion-N8N</h1> <h2>Arquitetura evolutiva para automação de workflows com N8N na AWS</h2> <div class="badges"> <img src="https://img.shields.io/badge/AWS-Cloud-%23FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" alt="AWS Badge"> <img src="https://img.shields.io/badge/Terraform-IaC-%237B42BC?style=for-the-badge&logo=terraform" alt="Terraform Badge"> <img src="https://img.shields.io/badge/Docker-Container-%230db7ed?style=for-the-badge&logo=docker" alt="Docker Badge"> </div> </header>

<section>
    <h3>📌 Objetivo</h3>
    <p>O <strong>DigiFusion-N8N</strong> demonstra a construção de uma arquitetura moderna na AWS, evoluindo de uma <strong>prova de conceito (POC)</strong> até um ambiente <strong>produtivo escalável e resiliente</strong>.</p>
    <p>A solução aplica práticas consolidadas de:</p>
    <ul>
        <li>Cloud Computing</li>
        <li>DevOps</li>
        <li>Segurança</li>
        <li>FinOps</li>
        <li>SRE (Site Reliability Engineering)</li>
    </ul>
</section>

<section>
    <h3>🧠 Modelo Arquitetural</h3>
    <table>
        <thead>
            <tr><th>Nível</th><th>Descrição</th></tr>
        </thead>
        <tbody>
            <tr><td><strong>POC</strong></td><td>Baixo custo, implementação rápida</td></tr>
            <tr><td><strong>Alta Disponibilidade (HA)</strong></td><td>Redundância e estabilidade</td></tr>
            <tr><td><strong>Produção Escalável</strong></td><td>Performance, resiliência e escalabilidade</td></tr>
        </tbody>
    </table>
</section>

<section>
    <h3>🏗️ Arquitetura em Camadas</h3>
    <ol>
        <li><strong>Entrada (Edge)</strong> → DNS, WAF, Load Balancer, ACM</li>
        <li><strong>Aplicação</strong> → N8N, Workers, Auto Scaling</li>
        <li><strong>Dados</strong> → RDS PostgreSQL, S3 (histórico/backups)</li>
        <li><strong>Acesso</strong> → AWS Systems Manager (SSM), sem SSH</li>
        <li><strong>Identidade (IAM)</strong> → Roles, Policies, Least Privilege</li>
        <li><strong>Observabilidade</strong> → Logs, métricas, alarmes</li>
        <li><strong>FinOps (Transversal)</strong> → Monitoramento e otimização de custos</li>
    </ol>
</section>

<section>
    <h3>🔄 Fluxo da Aplicação</h3>
    <pre>Usuário → Route 53 → WAF → ALB → N8N → Fila → Workers → RDS</pre>
</section>

<section>
    <h3>🔐 Segurança</h3>
    <ul>
        <li>HTTPS com ACM</li>
        <li>WAF contra ataques HTTP</li>
        <li>IAM com princípio do menor privilégio</li>
        <li>Administração via SSM (SSH desabilitado)</li>
        <li>Criptografia em trânsito (TLS) e em repouso</li>
    </ul>
</section>

<section>
    <h3>⚙️ DevOps</h3>
    <ul>
        <li>Infraestrutura como código (Terraform)</li>
        <li>Pipeline CI/CD automatizado</li>
        <li>Execução remota via SSM</li>
        <li>Automação de deploy, backup e health checks</li>
    </ul>
</section>

<section>
    <h3>📈 SRE (Confiabilidade)</h3>
    <ul>
        <li><strong>SLIs</strong>: latência, taxa de erro, disponibilidade</li>
        <li><strong>SLOs</strong>: 99.9% de disponibilidade, latência &lt; 300ms</li>
        <li>Estratégias: Multi-AZ, Auto Scaling, Load Balancer, tolerância a falhas</li>
    </ul>
</section>

<section>
    <h3>💰 FinOps</h3>
    <ul>
        <li>Drivers de custo: execução N8N, CPU EC2, RDS, logs</li>
        <li>Estratégias: ambientes isolados (dev/staging/prod), uso sob demanda, rightsizing, desligamento de ambientes não produtivos</li>
    </ul>
</section>

<section>
    <h3>🧪 Engenharia de Dados</h3>
    <p>Fluxo:</p>
    <pre>Webhook → N8N → Fila → Worker → Banco</pre>
    <p>Evolução planejada:</p>
    <ul>
        <li>Armazenamento histórico em S3</li>
        <li>Separação entre dados operacionais e analíticos</li>
    </ul>
</section>

<section>
    <h3>🚀 Ambientes</h3>
    <table>
        <thead>
            <tr><th>Ambiente</th><th>Arquitetura</th></tr>
        </thead>
        <tbody>
            <tr><td>Dev</td><td>POC</td></tr>
            <tr><td>Staging</td><td>Alta Disponibilidade</td></tr>
            <tr><td>Produção</td><td>Escalável</td></tr>
        </tbody>
    </table>
</section>

<section>
    <h3>🎯 Diferenciais</h3>
    <ul>
        <li>Arquitetura evolutiva e escalável</li>
        <li>Segurança sem exposição via SSH</li>
        <li>Automação completa com Terraform</li>
        <li>Governança de custos (FinOps)</li>
        <li>Alta confiabilidade (SRE)</li>
        <li>Separação clara por camadas</li>
    </ul>
</section>

<section>
    <h3>🧭 Conclusão</h3>
    <p>O DigiFusion-N8N demonstra a implementação de uma arquitetura moderna na nuvem, com foco em:</p>
    <ul>
        <li>Eficiência operacional</li>
        <li>Segurança</li>
        <li>Escalabilidade</li>
        <li>Controle de custos</li>
        <li>Resiliência</li>
    </ul>
</section>

<section>
    <h3>📌 Frase do Projeto</h3>
    <blockquote>"Do simples ao escalável: evolução guiada por automação, segurança e eficiência."</blockquote>
</section>

<footer>
    <p>✨ Essa versão está pronta para ser publicada no <strong>GitHub Pages</strong> e usada como <strong>portfólio técnico</strong>.</p>
</footer>

</body> </html>
