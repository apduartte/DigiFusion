<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- SEO -->
  <title>Ana Duarte | Backend Engineer AWS | Sistemas Distribuídos</title>

  <meta name="description" content="Engenheira de Software especializada em AWS, Java, microsserviços e sistemas distribuídos. Experiência em arquitetura orientada a eventos, DevOps e alta escalabilidade.">

  <meta name="keywords" content="AWS, Backend Engineer, Java, Microsserviços, Event-Driven, Sistemas Distribuídos, Terraform, DevOps">

  <!-- Open Graph (LinkedIn / compartilhamento) -->
  <meta property="og:title" content="Ana Duarte | Backend Engineer AWS">
  <meta property="og:description" content="Especialista em sistemas distribuídos, cloud AWS e arquitetura orientada a eventos.">
  <meta property="og:type" content="website">

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
      max-width: 700px;
      margin-left: auto;
      margin-right: auto;
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
      opacity: 0.85;
      transform: scale(1.05);
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
      transform: translateY(-6px);
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

    .tag {
      display: inline-block;
      background: #1e293b;
      padding: 5px 10px;
      border-radius: 6px;
      margin: 5px 5px 0 0;
      font-size: 12px;
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
  <h2 class="highlight">Backend Engineer | AWS | Distributed Systems</h2>

  <p class="subtitle">
    Especialista em sistemas distribuídos, arquitetura orientada a eventos e cloud AWS.
    Foco em construção de soluções resilientes, escaláveis e seguras para ambientes críticos.
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
      Arquitetura cloud distribuída baseada em eventos, com processamento assíncrono via SQS,
      Auto Scaling e separação por camadas. Projetada com princípios de DevOps, SRE e FinOps.
    </p>

    <div class="tag">Event-Driven</div>
    <div class="tag">AWS</div>
    <div class="tag">Terraform</div>
    <div class="tag">Docker</div>

    <div style="margin-top:15px;">
      <a href="http://digifusion.apduartte.com.br/" target="_blank">Ver Arquitetura →</a><br>
      <a href="https://github.com/apduartte/DigiFusion" target="_blank">Ver Código →</a>
    </div>
  </div>

  <!-- PROJETO SECUNDÁRIO -->
  <h2>Projeto de Engenharia</h2>

  <div class="card">
    <h3>Event-Driven Fraud Detection System</h3>

    <p>
      Sistema distribuído para detecção de fraude em tempo real, utilizando arquitetura hexagonal,
      processamento assíncrono e regras de análise de risco.
    </p>

    <div class="tag">Hexagonal Architecture</div>
    <div class="tag">Fraud Detection</div>
    <div class="tag">SQS</div>

    <a href="https://github.com/apduartte/foodtech-fraud-alerts" target="_blank">
      Ver Projeto →
    </a>
  </div>

  <!-- DECISÕES DE ENGENHARIA -->
  <h2>Decisões de Engenharia</h2>

  <div class="card">
    <p><strong>Event-Driven:</strong> desacoplamento e escalabilidade</p>
    <p><strong>Hexagonal:</strong> isolamento do domínio</p>
    <p><strong>SQS + DLQ:</strong> tolerância a falhas</p>
    <p><strong>Terraform:</strong> infraestrutura como código</p>
    <p><strong>SSM:</strong> segurança sem SSH</p>
  </div>

  <!-- SEGURANÇA -->
  <h2>Cyber Security</h2>

  <div class="card">
    <p>✔ Autenticação via JWT</p>
    <p>✔ IAM (princípio do menor privilégio)</p>
    <p>✔ HTTPS e criptografia</p>
    <p>✔ Validação de entrada</p>
  </div>

  <!-- DATA -->
  <h2>Data & Analytics</h2>

  <div class="card">
    <p>✔ Processamento de eventos em tempo real</p>
    <p>✔ Análise de fraude baseada em regras</p>
    <p>✔ Preparado para evolução com Machine Learning</p>
  </div>

  <!-- DEVOPS -->
  <h2>DevOps & FinOps</h2>

  <div class="card">
    <p>✔ CI/CD automatizado</p>
    <p>✔ Infraestrutura com Terraform</p>
    <p>✔ Otimização de custos com arquitetura desacoplada</p>
    <p>✔ Monitoramento com CloudWatch</p>
  </div>

  <!-- STACK -->
  <h2>Stack Tecnológica</h2>

  <div class="card">
    <p><strong>Cloud:</strong> AWS (SQS, EC2, RDS, S3)</p>
    <p><strong>Backend:</strong> Java, Spring Boot</p>
    <p><strong>Infra:</strong> Terraform, Docker</p>
    <p><strong>Arquitetura:</strong> Microsserviços, Event-driven</p>
  </div>

</div>

<footer>
  <p>© 2026 Ana Duarte | Backend Engineer AWS</p>
</footer>

</body>
</html>
