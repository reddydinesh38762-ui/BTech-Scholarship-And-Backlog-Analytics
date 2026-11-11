# B.Tech Scholarship & Backlog (Supply) Analytics (SQL Project)

## 📌 Project Overview
An end-to-end relational database and SQL analytics project tracking **50 B.Tech students (1st to 4th year)** across multiple engineering branches (`CSE`, `ECE`, `IT`, `EEE`, `MECH`, `CIVIL`). The project audits scholarship disbursements (`Paid`, `Pending`, `On-Hold`) against student academic performance, active backlogs (supplies), and attendance compliance.

## 🗂️ Database Schema
* **`students`**: Student ID, full name, engineering branch, year of study (1–4), and attendance percentage.
* **`academics`**: Semester Grade Point Average (`SGPA`) and active backlog (`active_supplies`) count.
* **`scholarships`**: Scheme name (`State Reimbursement`, `Merit Scholarship`), sanctioned amount, and payment status.

## 🛠️ SQL Techniques Demonstrated
* **Multi-Table Joins (`INNER JOIN`, `LEFT JOIN`)**: Cross-auditing paid scholarships against active backlogs and detecting missing scholarship allocations using `IS NULL`.
* **Aggregations (`GROUP BY`, `HAVING`, `SUM`, `AVG`)**: Analyzing branch-wise funding disbursements and average supply rates.
* **Subqueries & Derived Tables**: Filtering students outperforming the college-wide average SGPA and isolating top-ranked scholars per academic year.
* **Window Functions (`DENSE_RANK() OVER PARTITION BY`)**: Building year-wise merit leaderboards without rank gaps.
* **Set Operations (`UNION`)**: Consolidating low-attendance and high-backlog compliance watchlists.

## 🚀 How to Run
1. Execute `01_database_setup.sql` in **MySQL Workbench** to create the `btech_scholarship_analytics` schema and populate the 50-student dataset.
2. Run `02_audit_and_analytics_queries.sql` to generate the audit reports and leaderboards.

