<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Ana Duarte | Backend Engineer AWS</title>

  <meta name="description" content="Engenheira de Software especialista em AWS, Java, microsserviços e arquitetura distribuída. Experiência em sistemas críticos e alta escalabilidade.">

  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }

    body {
      font-family: 'Inter', sans-serif;
      background: #020617;
      color: #e2e8f0;
      line-height: 1.6;
    }

    header {
      text-align: center;
      padding: 80px 20px;
      background: linear-gradient(180deg, #020617 0%, #0f172a 100%);
    }

    h1 { font-size: 42px; font-weight: 600; }
    h2 { color: #38bdf8; margin-bottom: 20px; }

    .highlight { color: #38bdf8; }

    .subtitle {
      margin-top: 15px;
      font-size: 18px;
      color: #94a3b8;
    }

    .cta {
      margin-top: 25px;
    }

    .cta a {
      padding: 12px 25px;
      background: #38bdf8;
      color: #020617;
      border-radius: 6px;
      margin: 5px;
      display: inline-block;
      font-weight: 600;
      transition: 0.3s;
    }

    .cta a:hover {
      opacity: 0.8;
    }

    .container {
      max-width: 1100px;
      margin: auto;
      padding: 50px 20px;
    }

    .card {
      background: #0f172a;
      padding: 25px;
      border-radius: 12px;
      margin-bottom: 20px;
      border: 1px solid #1e293b;
      transition: 0.3s;
    }

    .card:hover {
      transform: translateY(-5px);
      border-color: #38bdf8;
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 20px;
    }

    .stack {
      margin-top: 10px;
      font-size: 13px;
      color: #94a3b8;
    }

    .impact {
      color: #22c55e;
      font-weight: bold;
      margin-top: 10px;
    }

    footer {
      text-align: center;
      padding: 30px;
      border-top: 1px solid #1e293b;
      margin-top: 40px;
    }

    a {
      text-decoration: none;
      color: #38bdf8;
    }
  </style>
</head>

<body>

<header>
  <h1>Ana Duarte</h1>
  <h2 class="highlight">Backend Engineer | AWS Cloud | Distributed Systems</h2>

  <p class="subtitle">
    Construo sistemas resilientes, escaláveis e orientados a eventos em ambientes críticos.
  </p>

  <div class="cta">
    <a href="http://digifusion.apduartte.com.br/" target="_blank">Ver Projeto Principal</a>
    <a href="https://github.com/apduartte" target="_blank">GitHub</a>
  </div>
</header>

<div class="container">

  <!-- PROJETO PRINCIPAL -->
  <h2>Projeto Destaque</h2>

  <div class="card">
    <h3>DigiFusion-N8N</h3>

    <p>
      Arquitetura distribuída na AWS baseada em eventos, utilizando SQS, Auto Scaling e separação por camadas.
      Projetada para alta resiliência, escalabilidade e segurança em ambientes de produção.
    </p>

    <p class="stack">AWS | SQS | EC2 | RDS | S3 | Terraform | Docker</p>

    <div style="margin-top:15px;">
      <a href="http://digifusion.apduartte.com.br/" target="_blank">Ver Arquitetura →</a><br>
      <a href="https://github.com/apduartte/DigiFusion" target="_blank">Ver Código →</a>
    </div>
  </div>

  <!-- DECISÕES DE ENGENHARIA -->
  <h2>Decisões de Engenharia</h2>

  <div class="card">
    <p><strong>Arquitetura orientada a eventos:</strong> desacoplamento e escalabilidade</p>
    <p><strong>SQS + DLQ:</strong> tolerância a falhas e resiliência</p>
    <p><strong>SSM ao invés de SSH:</strong> segurança e governança</p>
    <p><strong>Terraform:</strong> infraestrutura reproduzível e automatizada</p>
  </div>

  <!-- OUTROS PROJETOS -->
  <h2>Outros Projetos</h2>

  <div class="grid">

    <div class="card">
      <h3>Infraestrutura como Código</h3>
      <p>Provisionamento automatizado de ambientes AWS com Terraform.</p>
      <p class="impact">✔ Padronização e redução de erros</p>
    </div>

    <div class="card">
      <h3>Microsserviços Backend</h3>
      <p>Desenvolvimento de APIs REST escaláveis com Java e Spring Boot.</p>
      <p class="impact">✔ Alta performance e desacoplamento</p>
    </div>

  </div>

  <!-- STACK -->
  <h2 style="margin-top:40px;">Stack Tecnológica</h2>

  <div class="card">
    <p><strong>Cloud:</strong> AWS (SQS, EC2, RDS, S3, CloudWatch)</p>
    <p><strong>Infraestrutura:</strong> Terraform</p>
    <p><strong>Backend:</strong> Java, Spring Boot</p>
    <p><strong>Arquitetura:</strong> Microsserviços, Event-driven</p>
  </div>

</div>

<footer>
  <p>© 2026 Ana Duarte | Backend Engineer AWS</p>
</footer>

</body>
</html>
