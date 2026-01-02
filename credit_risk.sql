DROP TABLE IF EXISTS loan_applicants;
CREATE TABLE loan_applicants (
    applicant_id INTEGER PRIMARY KEY AUTOINCREMENT,
    loan_amnt REAL,
    annual_inc REAL,
    int_rate REAL,
    dti REAL
);

INSERT INTO loan_applicants (loan_amnt, annual_inc, int_rate, dti)
VALUES (30000, 100000, 15.5, 25.0);

DROP VIEW IF EXISTS v_applicant_risk;
CREATE VIEW v_applicant_risk AS
SELECT
    applicant_id,
    1.0 / (
        1.0 + EXP(-(
            -1.4162572357921508
            + (0.132738 * loan_amnt)
            + (-0.196206 * annual_inc)
            + (0.576956 * int_rate)
            + (0.130706 * dti)
        ))
    ) AS default_risk_score
FROM loan_applicants;

WITH vals(loan_amnt, annual_inc, int_rate, dti) AS (
    VALUES (30000, 100000, 15.5, 25.0)
)
SELECT
    1.0 / (
        1.0 + EXP(-(
            -1.4162572357921508
            + (0.132738 * loan_amnt)
            + (-0.196206 * annual_inc)
            + (0.576956 * int_rate)
            + (0.130706 * dti)
        ))
    ) AS default_risk_score
FROM vals;

SELECT * FROM v_applicant_risk;

SELECT
    applicant_id,
    default_risk_score,
    CASE
        WHEN default_risk_score < 0.30 THEN 'LOW RISK'
        WHEN default_risk_score BETWEEN 0.30 AND 0.60 THEN 'MEDIUM RISK'
        ELSE 'HIGH RISK'
    END AS risk_category
FROM v_applicant_risk;