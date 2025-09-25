# 🚀 SQL Challenge: Identify Role Changes  

## 📖 Story Background  
Welcome aboard, Data Master! 👩‍💻👨‍💻  

You’ve stumbled upon a chaotic situation: the **ship’s data is scattered** across multiple datasets. As the newly designated **data person**, the Captain has entrusted you with an important mission—**find out which current team members have changed their roles**.  

To achieve this, you must navigate through different datasets and stitch the pieces together like a true SQL detective. 🕵️‍♂️  

---

## 🗂 Datasets You’ll Encounter  

### 1. **`start_dates`**  
This dataset provides:  
- Employee **ID number**  
- **Date of birth (DOB)**  
- **Employment start date**  
- **Current employment status**  

👉 A promising source to track **who is currently on the team**.  

---

### 2. **`old_database`**  
This dataset contains **outdated information** about employees, including:  
- Employee **ID number**  
- **Previous occupation (role)**  

👉 Though outdated, it reveals **what roles employees used to have**.  

---

### 3. **`new_database`**  
This dataset contains **updated information** with:  
- Employee **ID number**  
- **Current occupation (role)**  

👉 A **goldmine** of up-to-date data to compare with the old records.  

---

## ⚠️ The Challenge  
Your Captain needs answers fast ⏳:  

- **Who** on the current team has **changed roles** between `old_database` and `new_database`?  
- **When** did they start working (from `start_dates`)?  
- **What** is their **current role** (from `new_database`)?  
- **What** was their **previous role** (from `old_database`)?  

---

## 🎯 Task  
👉 Write an SQL query in **SQLite** to:  

1. Identify employees who are **still employed** (`start_dates` shows status as *Employed*).  
2. Join data from all three datasets (`start_dates`, `old_database`, `new_database`).  
3. Compare occupations to see **which employees have changed roles**.  
4. Select the following details:  
   - Employee full name  
   - Employment start date  
   - Current role  
   - Previous role  

---

## ✅ What You’ll Learn

- How to join multiple datasets in SQLite.
- How to compare current vs previous data.
- How to filter only active employees.
- How to present insights clearly to stakeholders.