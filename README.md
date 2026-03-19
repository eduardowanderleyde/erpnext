# ERPNext On-Premise (Engeletra)

Estrutura inicial para rodar ERPNext no PC-servidor da empresa, com acesso pelos outros computadores da rede local.

## 1) Copiar variaveis de ambiente

```powershell
copy .env.example .env
```

Edite o arquivo `.env` e ajuste senhas e nome do site.

## 2) Subir os containers

```powershell
docker compose up -d
```

## 3) Criar o site ERPNext (primeira execucao)

```powershell
docker compose run --rm create-site
```

## 4) Acessar pela rede interna

No servidor local:

- `http://localhost:8080`

Nos outros PCs da empresa:

- `http://IP_DO_SERVIDOR:8080`

Exemplo: `http://192.168.0.10:8080`

## 5) Operacao recomendada

- Deixar o servidor com IP fixo na rede.
- Restringir acesso apenas na rede local (firewall).
- Fazer backup diario dos volumes Docker (`db-data`, `sites`, `logs`).

## Observacoes

- Este ambiente e para uso interno (on-premise).
- Para producao, configure HTTPS com proxy reverso e rotina de backup testada.
