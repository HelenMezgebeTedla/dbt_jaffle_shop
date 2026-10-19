# dbt Jaffle Shop - BigQuery Setup

Based on the [dbt Labs jaffle_shop](https://github.com/dbt-labs/jaffle_shop) sample project (Apache-2.0).

## What it does
Transforms raw orders, customers and payments data into analytics-ready models using dbt on DuckDB (BigQuery-compatible with profile change).

## Setup
```bash
source ~/projects/env/bin/activate
pip install dbt-bigquery
```

## Run
```bash
dbt seed --profiles-dir ~/.dbt
dbt run --profiles-dir ~/.dbt
dbt test --profiles-dir ~/.dbt
dbt docs generate --profiles-dir ~/.dbt
```

## What I added
- `monthly_revenue` model: monthly revenue per customer, completed and shipped orders only
- Tests: not_null, unique, relationships, accepted_values on all models

## Security
- profiles.yml is gitignored - credentials never reach the repository

## What I would improve
- Move from DuckDB to BigQuery
- Add row-level access controls per role
