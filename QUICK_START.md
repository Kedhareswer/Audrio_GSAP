# ⚡ Quick Start - Audira Next.js

## 🚀 Get Running in 60 Seconds

### Step 1: Open Terminal
```bash
cd "c:\Users\mbkhn\Downloads\Inspired\Audira Headphone website Tutorial\audira-nextjs"
```

### Step 2: Install (First Time Only)
```bash
npm install
```
⏱️ Takes ~2-3 minutes

### Step 3: Run Development Server
```bash
npm run dev
```

### Step 4: Open Browser
Visit: **http://localhost:3000**

---

## 🎯 That's It!

You should now see:
- ✅ Animated headphone website
- ✅ Smooth scrolling
- ✅ All animations working
- ✅ Responsive design

---

## 🛠️ Common Commands

```bash
npm run dev          # Start development (http://localhost:3000)
npm run build        # Build for production
npm start            # Run production build
npm run lint         # Check code quality
```

---

## 📱 Test on Your Phone

1. Find your computer's IP: `ipconfig`
2. Look for "IPv4 Address" (e.g., 192.168.1.100)
3. On phone: Open `http://YOUR-IP:3000`

---

## ⚠️ Troubleshooting

### Port Already in Use
```bash
npm run dev -- -p 3001
# Opens on port 3001 instead
```

### Installation Fails
```bash
npm cache clean --force
npm install
```

### TypeScript Errors
```bash
npm run type-check
# Shows all type errors
```

### Clear Cache
```bash
npm run clean
# Removes .next folder
```

---

## 📚 Need More Info?

- **Full Setup:** Read `SETUP_GUIDE.md`
- **Documentation:** Read `README.md`
- **Migration Details:** Read `MIGRATION_NOTES.md`
- **Project Info:** Read `PROJECT_SUMMARY.md`

---

## 🎨 Customize

### Change Colors
Edit: `tailwind.config.ts`

### Change Content
Edit files in: `components/`

### Modify Animations
Edit: `hooks/useGSAPAnimations.ts`

---

**Happy Coding! 🎧**
