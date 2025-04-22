# 🧪 Survival Analysis in SAS

This project performs a basic survival analysis using both SAS on the Remission dataset. The goal is to model the time until remission using a **Cox Proportional Hazards model**.

---

## 📂 Dataset

- **Name:** Remission.csv  
- **Variables:**
  - `SURVT`: Survival time
  - `STATUS`: Censoring status (1 = event occurred, 0 = censored)
  - `SEX`: Gender (0 = Female, 1 = Male)
  - `LOGWBC`: Log white blood cell count
  - `RX`: Treatment group (0 = Standard, 1 = Experimental)

---

## 🔍 Method

- Used **Cox Proportional Hazards Model** in:
  - **SAS:** Using `PROC PHREG`
  - **R:** Using `coxph()` from the `survival` package

---

## 📊 Results

- **LOGWBC** and **RX** were statistically significant predictors of survival at α = 0.05.
- **SEX** was **not significant**.
- **Hazard Ratios:**
  - `LOGWBC`: HR = 4.921 (p < 0.0001)
  - `RX`: HR = 4.018 (p = 0.0023)
  - `SEX`: HR = 1.301 (p = 0.5582)
- **Concordance Index (R):** 0.63 (moderate predictive ability)

---

## 🧠 Interpretation

- Patients with higher **log white blood cell count** had a significantly **higher risk of relapse**.
- The **experimental treatment (RX = 1)** was also associated with an **increased hazard**, which may indicate:
  - The treatment was less effective,
  - Or patients receiving it had worse initial prognoses (selection bias).
- **Sex** was not significantly associated with remission time.
- The **model shows moderate discriminatory power** (C-index = 0.63), meaning it has some ability to differentiate between patients based on predicted risk.

---

## 🚀 Tools Used

- SAS OnDemand for Academics
---

## 💡 Author

Prince Wilson
MSc Biostatistics Student 
