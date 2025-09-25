# 🐠 SQL Challenge: The Impostor Fish  

## 📖 Story Background  
You are the **captain of a research vessel** studying a newly discovered aquatic ecosystem. Your team has been collecting data on various marine species in the area.  

One day, a **strange creature** is discovered and brought onboard for analysis.  
Shortly after, strange things start happening:  

- Your **marine life database becomes corrupted**.  
- All the data has been replaced with **gibberish**.  
- Your team suspects that the **creature is disguising itself** and may be responsible.  

Now it’s up to your **SQL skills** to figure out what happened.  

---

## 🗂 Dataset Information  
You are working with a table named **`marine_life`** that contains the following columns:  

- `species_name` *(TEXT)* → the scientific name of the species  
- `common_name` *(TEXT)* → the common name of the species  
- `length` *(REAL)* → the length of the species (in **meters**)  
- `weight` *(REAL)* → the weight of the species (in **kilograms**)  
- `habitat_type` *(TEXT)* → the type of habitat where the species lives (e.g. coral reef, rocky shore, kelp forest)  

⚠️ The impostor creature may have **changed its name** to avoid detection!  

---

## 🐟 Known Species (Baseline Data)  
Your research has confirmed three authentic species:  

1. **Clownfish**  
   - Length: **3–7 inches** (≈ 0.08–0.18 m)  
   - Weight: **0.2–0.8 lbs** (≈ 0.09–0.36 kg)  
   - Habitat: **Coral reef**  

2. **Octopus (Octopus vulgaris)**  
   - Length: **12–36 inches** (≈ 0.3–0.9 m)  
   - Weight: **6.6–23 lbs** (≈ 3–10.4 kg)  
   - Habitat: **Coastal marine waters**  

3. **Starfish**  
   - Length: **0.5–40 inches** (≈ 0.01–1.0 m)  
   - Weight: **3.3–6.6 lbs** (≈ 1.5–3.0 kg)  
   - Habitat: **Kelp forest**  

---

## 🎯 Challenge Task  
👉 Write an SQL query to:  

- **Select every column** in the `marine_life` table.  
- Create a **new column** called `impostor_status`.  
- Use a **CASE statement** to check each record:  
  - If the marine creature **matches** any of the known species criteria → label as **`not impostor`**  
  - If it **doesn’t fit any known range** → label as **`impostor`**  

---

## ✅ What You’ll Learn

- How to use **CASE statements** in SQLite.
- How to **apply conditional ranges** for multiple categories.
- How to **detect anomalies** in datasets using SQL logic.