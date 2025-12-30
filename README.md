# Analise-de-Utilizacao-de-Frota 🚚📊

## 📌 Visão Geral
Este projeto tem como objetivo analisar a performance operacional e financeira de uma frota de caminhões, utilizando **SQL** para exploração e preparação dos dados e **Power BI** para visualização e geração de insights.

A análise foca em utilização da frota, downtime, receita e custos de manutenção, apoiando decisões gerenciais e identificação de oportunidades de otimização.

---

## 🗂 Dataset
- Fonte: Kaggle — Logistics Operations Database  
- Tabela principal: `truck_utilization_metrics`
- Observações: o dataset contém métricas agregadas por caminhão, como utilização, downtime, custos de manutenção, receita e distância percorrida.

---

## 🧩 Perguntas de Negócio
As análises foram guiadas por perguntas típicas de stakeholders operacionais e gerenciais, como:

- Quais caminhões apresentam maior e menor taxa de utilização?
- Existe relação entre downtime e nível de utilização?
- Quais veículos geram mais receita e receita por milha?
- Custos de manutenção impactam a eficiência operacional?
- Quais caminhões apresentam melhor equilíbrio entre utilização, receita e downtime?

---

## 🧮 Análise em SQL
As consultas SQL foram utilizadas para:
- Calcular métricas médias e rankings por caminhão
- Identificar padrões de eficiência e subutilização
- Criar bases consolidadas para consumo no Power BI

📂 As queries estão organizadas em:  
`sql/analysis_queries.sql`

---

## 📊 Dashboard (Power BI)
O dashboard apresenta indicadores-chave (KPIs) para acompanhamento da “saúde” da frota, incluindo:

- Utilização média por caminhão
- Downtime médio
- Receita total e receita por milha
- Custos de manutenção
- Análises comparativas entre eficiência operacional e financeira

📂 Arquivo:  
`powerbi/Análise de Utilização de Frota.pbix`

📸 Preview disponível em:  
`images/`

---


