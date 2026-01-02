# credit-risk-analysis

[Live demo (deployed)](https://credit-risk-score--arshdeepyadavwo.replit.app)

## Credit Risk Scoring System

Title: Credit Risk Scoring System

Technologies:
- Python
- MySQL
- Scikit-learn
- Pandas

Description:
A simple credit-risk scoring project using Lending Club loan data. The project demonstrates how to build a logistic regression model in Python, export the learned coefficients, and implement the scoring logic inside MySQL as a stored procedure.

Key Requirements:
- Develop a logistic regression model in Python to score loan applicants.
- Store scoring logic (coefficients and intercept) in MySQL as a stored procedure.
- Create a sample scoring interface (SQL script) to score new applicants.

Tools and Resources:
- Python
- Scikit-learn
- MySQL
- Pandas

Deliverables:
- Python notebook with data preparation, modeling, and coefficient export
- MySQL stored procedure script implementing the scoring function
- Sample SQL query demonstrating scoring on new records

Quick Start / Contents
- `notebooks/` — Python notebook(s) with preprocessing, model training, and coefficient export.
- `sql/` — MySQL scripts: stored procedure implementing scoring and example scoring queries.
- `data/` — (optional) sample or reference to data used for training.

Usage
1. Run the notebook in `notebooks/` to reproduce preprocessing and model training. Export the final model coefficients and intercept into a JSON or SQL-friendly format.
2. Load the coefficients into MySQL and create the stored procedure found in `sql/create_scoring_procedure.sql`.
3. Use the sample query `sql/sample_scoring_query.sql` to score new applicants stored in a table.

Notes
- This repository contains example code and SQL to demonstrate one way to operationalize a logistic regression scoring function inside a relational database (MySQL). Adjust feature preprocessing and SQL types to match your production schema.

License
- MIT
