Markdown
# Education for All: Donor Insights & Strategic Fundraising Report

## 📌 Project Overview
This project focuses on leveraging data analytics to support the **"Education-for-All"** initiative, which provides underprivileged children with access to quality education. By analyzing historical donor behavior and donation patterns, this project aims to identify strategic opportunities to maximize fundraising efforts, optimize contributions from existing donors, and discover effective pathways to attract new supporters.

---

## 🎯 Business Objectives
* **Analyze Donor Behavior:** Identify trends in donation frequency, high-value donor demographics, and giving cycles.
* **Optimize Retention:** Uncover insights on how to keep existing donors engaged and increase their lifetime value.
* **Acquisition Strategy:** Formulate data-backed recommendations to target and acquire new donor segments.
* **Executive Presentation:** Translate complex query results into high-level, actionable recommendations for organizational leadership[cite: 1].

---

## 🛠️ Tech Stack & Skills Demonstrated
* **SQL (PostgreSQL):** Advanced querying, relational table joins, data aggregation, filtering, and cohort analysis[cite: 1].
* **Data Visualization:** Interactive dashboard development highlighting key donor metrics[cite: 1].
* **Data-Driven Storytelling:** Translating raw database tables into executive-level strategic summaries[cite: 1].
* **Stakeholder Communication:** Building professional reports and slide decks tailored for non-technical leadership[cite: 1].

---

## 📂 Repository Structure
This repository contains all the deliverables representing the end-to-end analytical workflow:

| File / Folder Path | Description |
| :--- | :--- |
| 📁 [**sql/**](./sql) | The complete PostgreSQL scripts containing data exploration, quality assessment, cleaning, and analytical queries[cite: 1]. |
| 📁 [**data/**](./data) | Contains the database Entity-Relationship Diagram (ERD) mapping the schema[cite: 1]. |
| 📁 [**visualizations/**](./visualizations) | Screenshots of the interactive donor dashboard and key charts[cite: 1]. |
| 📄 [**portfolio/Oodo_Janefrances_SQL_Portfolio.pdf**](./portfolio) | A comprehensive, formal PDF report documenting the analysis, methodology, and detailed strategic recommendations[cite: 1]. |
| 📄 [**Education_for_All_Presentation.pptx**](./Education_for_All_Presentation.pptx) | An executive-ready presentation slide deck summarizing key findings for stakeholders[cite: 1]. |

---

## 📊 Key Insights & Recommendations
Our database analysis yielded the following critical findings:

* **High-Value Concentration:** Over **65% of total capital ($162,350.00)** is driven by a high-value tier of donors giving more than $200 per transaction, despite this group making up a minority of total interactions (410 donations)[cite: 1].
* **Top Professional Sectors:** Corporate employees working in **Business Development** and **Engineering** represent our highest-grossing donor networks, bringing in $42,150.00 and $38,900.00 respectively[cite: 1].
* **Geographic Hubs:** Performance is heavily concentrated in major metropolitan hubs led by **California ($34,500.00)** and **New York ($29,100.00)**, while smaller states like Wyoming yield negligible returns[cite: 1].
* **Lifestyle Correlations:** Cross-referencing donor profiles revealed a strong correlation between high-value giving and owners of premium car brands such as **Tesla, BMW, and Mercedes-Benz**[cite: 1].

---

## 🗺️ Database Schema & Join Logic
The database connects relational tables securely using unique donor IDs[cite: 1]:

```sql
SELECT d1.donation, d2.donation_frequency
FROM Donation_Data d1
INNER JOIN Donor_Data d2 ON d1.id = d2.id;
🔍 How to Explore This Project
View the Queries: Open the sql/ folder to review the SQL logic used to query and analyze the donor database[cite: 1].

Read the Strategic Report: Download the Oodo_Janefrances_SQL_Portfolio.pdf for a deep dive into the business findings and methodology[cite: 1].

Flip Through the Slides: Check out the Education_for_All_Presentation.pptx to see how the findings are packaged for executive stakeholders[cite: 1].

👤 Author
Janefrances Chinaza Oodo

Data Analyst & CEO of Franzol's Stitches

[cite: 1]

LinkedIn

GitHub Po
