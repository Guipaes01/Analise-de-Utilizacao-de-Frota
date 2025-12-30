1️⃣ Utilização da Frota

🔹 Utilização média por caminhão
SELECT
    truck_id,
    AVG(utilization_rate) AS utilizacao_media
FROM truck_utilization_metrics
GROUP BY truck_id
ORDER BY utilizacao_media DESC;

🔹 Caminhões mais e menos utilizados (ranking)
SELECT
    truck_id,
    ROUND(AVG(utilization_rate), 3) AS utilizacao_media
FROM truck_utilization_metrics
GROUP BY truck_id
ORDER BY utilizacao_media DESC;

🔹 Utilização média da frota (visão geral)
SELECT
    AVG(utilization_rate) AS utilizacao_media_frota
FROM truck_utilization_metrics;

--------------------------------------------------------------------------

2️⃣ Downtime e Eficiência Operacional

🔹 Downtime médio por caminhão
SELECT
    truck_id,
    AVG(downtime_hours) AS downtime_medio
FROM truck_utilization_metrics
GROUP BY truck_id
ORDER BY downtime_medio DESC;

🔹 Relação entre utilização e downtime
SELECT
    truck_id,
    AVG(utilization_rate) AS utilizacao_media,
    AVG(downtime_hours) AS downtime_medio
FROM truck_utilization_metrics
GROUP BY truck_id;

3️⃣ Receita e Eficiência Financeira

🔹 Receita total por caminhão
SELECT
    truck_id,
    SUM(total_revenue) AS receita_total
FROM truck_utilization_metrics
GROUP BY truck_id
ORDER BY receita_total DESC;

🔹 Receita por milha por caminhão
SELECT
    truck_id,
    SUM(total_revenue) / NULLIF(SUM(total_miles), 0) AS receita_por_milha
FROM truck_utilization_metrics
GROUP BY truck_id
ORDER BY receita_por_milha DESC;

🔹 Utilização x Receita por milha
SELECT
    truck_id,
    AVG(utilization_rate) AS utilizacao_media,
    SUM(total_revenue) / NULLIF(SUM(total_miles), 0) AS receita_por_milha
FROM truck_utilization_metrics
GROUP BY truck_id;

--------------------------------------------------------------------------

4️⃣ Manutenção e Desempenho

🔹 Custo médio de manutenção por caminhão
SELECT
    truck_id,
    AVG(maintenance_cost) AS custo_manutencao_medio
FROM truck_utilization_metrics
GROUP BY truck_id
ORDER BY custo_manutencao_medio DESC;

🔹 Manutenção x Utilização
SELECT
    truck_id,
    AVG(utilization_rate) AS utilizacao_media,
    AVG(maintenance_cost) AS custo_manutencao_medio
FROM truck_utilization_metrics
GROUP BY truck_id;

🔹 Manutenção x Downtime
SELECT
    truck_id,
    AVG(downtime_hours) AS downtime_medio,
    AVG(maintenance_cost) AS custo_manutencao_medio
FROM truck_utilization_metrics
GROUP BY truck_id;

--------------------------------------------------------------------------

5️⃣ Base Consolidada  


SELECT
    truck_id,
    AVG(utilization_rate)        AS utilizacao_media,
    AVG(downtime_hours)          AS downtime_medio,
    AVG(maintenance_cost)        AS custo_manutencao_medio,
    SUM(total_revenue)           AS receita_total,
    SUM(total_revenue) / NULLIF(SUM(total_miles), 0) AS receita_por_milha
FROM truck_utilization_metrics
GROUP BY truck_id;