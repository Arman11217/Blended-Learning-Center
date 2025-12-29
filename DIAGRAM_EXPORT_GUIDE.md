# 📤 PBLC ডায়াগ্রাম PNG/PDF Export গাইড

এই গাইডে আপনি শিখবেন কিভাবে Class Diagram এবং ER Diagram PNG বা PDF ফরম্যাটে export করবেন প্রিন্ট বা শেয়ার করার জন্য।

---

## 🎯 দ্রুত সারাংশ

### ফাইল লোকেশন:
- ✅ **Combined File:** `DIAGRAMS.md` (দুটো ডায়াগ্রাম একসাথে)
- ✅ **Class Diagram:** `docs/class-diagram.md`
- ✅ **ER Diagram:** `docs/er-diagram.md`

### Export Options:
1. **PowerShell Script** (সবচেয়ে সহজ - Node.js লাগবে)
2. **VS Code Extension** (Screenshots)
3. **Online Tool** (কোন ইনস্টলেশন লাগবে না)
4. **Screenshot Tool** (Windows built-in)

---

## পদ্ধতি ১: PowerShell Script দিয়ে PNG Export (সুপারিশকৃত)

### প্রয়োজনীয়তা:
- Node.js ইনস্টল থাকতে হবে ([https://nodejs.org/](https://nodejs.org/))

### ধাপ সমূহ:

#### ১. PowerShell ওপেন করুন
```powershell
# প্রজেক্ট ফোল্ডারে যান
cd "E:\4th Semester\CIT 221-222\PBLC(Project)"
```

#### ২. Script Run করুন
```powershell
.\export-diagrams-to-png.ps1
```

#### ৩. Output দেখুন
- PNG ফাইল গুলো পাবেন: `diagrams-export/` ফোল্ডারে
- `class-diagram.png` - Class Diagram
- `er-diagram.png` - ER Diagram

### সমস্যা সমাধান:

**যদি "Script execution is disabled" error আসে:**
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

**যদি Node.js না থাকে:**
- Download: [https://nodejs.org/en/download/](https://nodejs.org/en/download/)
- Install করুন
- PowerShell restart করুন
- আবার script run করুন

---

## পদ্ধতি ২: VS Code Extension দিয়ে Export

### ধাপ ১: Extension ইনস্টল করুন
```
1. VS Code খুলুন
2. Extensions (Ctrl+Shift+X) তে যান
3. Search করুন: "Markdown Preview Mermaid Support"
4. Install করুন
```

### ধাপ ২: Preview ওপেন করুন
```
1. DIAGRAMS.md বা যেকোনো diagram ফাইল ওপেন করুন
2. Ctrl+Shift+V প্রেস করুন (Open Preview)
3. Diagram গুলো রেন্ডার হবে
```

### ধাপ ৩: Screenshot নিন (Windows Snipping Tool)
```
1. Win+Shift+S প্রেস করুন
2. Diagram টা সিলেক্ট করুন
3. Clipboard থেকে paste করে save করুন
```

### ধাপ ৪: (অপশনাল) HTML/PDF Export
```
1. Preview থেকে Right-click
2. "Open in Browser" সিলেক্ট করুন
3. Browser এ Ctrl+P (Print)
4. "Save as PDF" সিলেক্ট করুন
5. Save করুন
```

---

## পদ্ধতি ৩: Online Mermaid Editor (কোন ইনস্টল লাগবে না)

### ধাপ ১: Website Visit করুন
- URL: [https://mermaid.live/](https://mermaid.live/)

### ধাপ ২: Diagram Code কপি করুন

#### Class Diagram এর জন্য:
```
1. docs/class-diagram.md খুলুন
2. ```mermaid থেকে ``` পর্যন্ত কপি করুন (মাঝের কোড)
3. Mermaid Live Editor এ paste করুন
```

#### ER Diagram এর জন্য:
```
1. docs/er-diagram.md খুলুন
2. ```mermaid থেকে ``` পর্যন্ত কপি করুন
3. Mermaid Live Editor এ paste করুন
```

### ধাপ ৩: Export করুন
```
1. Diagram রেন্ডার হলে "Actions" বাটনে ক্লিক করুন
2. "PNG", "SVG", বা "PDF" সিলেক্ট করুন
3. Download হবে
```

### সুবিধা:
✅ কোন সফটওয়্যার ইনস্টল লাগে না  
✅ যেকোনো কম্পিউটার/ফোন থেকে ব্যবহার করা যায়  
✅ High-quality export (SVG support)  

---

## পদ্ধতি ৪: Windows Screenshot Tool (সবচেয়ে সহজ)

### ধাপ সমূহ:
```
1. VS Code এ DIAGRAMS.md খুলুন
2. Ctrl+Shift+V প্রেস করে preview দেখুন
3. Win+Shift+S প্রেস করুন (Snipping Tool)
4. Diagram area সিলেক্ট করুন
5. Ctrl+V দিয়ে Paint/Word এ paste করুন
6. PNG/PDF হিসেবে save করুন
```

### সুবিধা:
✅ কোন ইনস্টল লাগে না  
✅ Windows built-in tool  
✅ খুব দ্রুত  

### অসুবিধা:
❌ Resolution কম হতে পারে  
❌ Manual process  

---

## 📋 Export Quality তুলনা

| Method | Quality | Speed | Setup Required | Best For |
|--------|---------|-------|----------------|----------|
| PowerShell Script | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | Node.js | Automated export, বার বার export |
| VS Code + Extension | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | VS Code ext | Quick previews |
| Online Mermaid | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | None | SVG export, sharing |
| Windows Screenshot | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ | None | Quick captures |

---

## 🎨 PNG থেকে PDF Convert করা

### Method 1: Microsoft Print to PDF
```
1. PNG file টা দুইবার ক্লিক করে ওপেন করুন (Photos app)
2. Ctrl+P (Print)
3. Printer: "Microsoft Print to PDF" সিলেক্ট করুন
4. Print করুন → PDF save হবে
```

### Method 2: MS Word দিয়ে
```
1. Word ওপেন করুন
2. PNG image insert করুন
3. File → Save As → PDF সিলেক্ট করুন
```

### Method 3: Online Converter
- Visit: [https://www.ilovepdf.com/jpg_to_pdf](https://www.ilovepdf.com/jpg_to_pdf)
- Upload PNG, Download PDF

---

## 🖨️ প্রিন্ট করার জন্য Tips

### Best Settings:
- **Paper Size:** A4
- **Orientation:** Landscape (আড়াআড়ি) - ডায়াগ্রাম বড় দেখাবে
- **Margins:** Narrow
- **Quality:** High/Best

### Class Diagram Print:
```
✅ Landscape orientation সুপারিশকৃত
✅ A4 এ ফিট হবে
✅ Readable text
```

### ER Diagram Print:
```
✅ Landscape orientation সুপারিশকৃত
✅ A4 এ ফিট হবে
✅ Clear relationships
```

---

## 📁 Output ফাইল গুলো কোথায় পাবেন?

### PowerShell Script ব্যবহার করলে:
```
📂 diagrams-export/
   ├── class-diagram.png
   └── er-diagram.png
```

### Manual Export করলে:
- আপনি যেখানে save করবেন সেখানে পাবেন (Downloads folder সাধারণত)

---

## ⚡ Quick Commands Reference

### PowerShell Script Run:
```powershell
cd "E:\4th Semester\CIT 221-222\PBLC(Project)"
.\export-diagrams-to-png.ps1
```

### Check if Node.js installed:
```powershell
node --version
npm --version
```

### Install Node.js (if needed):
- Visit: [https://nodejs.org/](https://nodejs.org/)
- Download LTS version
- Install with default settings

### Open Diagrams folder:
```powershell
explorer diagrams-export
```

---

## 🆘 সমস্যা সমাধান

### সমস্যা: Script চলছে না
**সমাধান:**
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### সমস্যা: Node.js পাচ্ছে না
**সমাধান:**
- PowerShell restart করুন
- Node.js re-install করুন
- System PATH check করুন

### সমস্যা: PNG quality খারাপ
**সমাধান:**
- Online Mermaid editor ব্যবহার করুন
- SVG export করুন (vector format, scale করলে blur হবে না)

### সমস্যা: Mermaid render হচ্ছে না VS Code এ
**সমাধান:**
- "Markdown Preview Mermaid Support" extension ইনস্টল করুন
- VS Code reload করুন

---

## 📞 সাহায্যের জন্য

যদি কোন সমস্যা হয়:
1. এই গাইড আবার পড়ুন
2. সব prerequisites (Node.js, Extensions) check করুন
3. Error message টা note করুন
4. Alternative method ট্রাই করুন

---

## 📝 সারাংশ

### সবচেয়ে সহজ পদ্ধতি (No Install):
1. VS Code এ DIAGRAMS.md খুলুন
2. Ctrl+Shift+V → Preview
3. Win+Shift+S → Screenshot
4. ✅ Done!

### সবচেয়ে ভালো Quality:
1. Install Node.js
2. Run `.\export-diagrams-to-png.ps1`
3. Get PNG files in `diagrams-export/`
4. ✅ Professional quality!

### Online Method (কোথাও থেকে):
1. Visit [mermaid.live](https://mermaid.live/)
2. Copy-paste diagram code
3. Export PNG/SVG
4. ✅ Works anywhere!

---

**Created:** October 20, 2025  
**Project:** PBLC (Problem-Based Learning Center)  
**For:** Teachers, Students, Documentation
