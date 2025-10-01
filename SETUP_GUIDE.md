# 🚀 Quick Setup Guide

## Step 1: Copy Assets

Run this PowerShell command from the project root to copy all assets:

```powershell
# Copy all images
Copy-Item "../images" "public/" -Recurse -Force

# Or copy individually if needed
Copy-Item "../images/*.png" "public/images/" -Force
Copy-Item "../images/*.jpeg" "public/images/" -Force
Copy-Item "../images/*.jpg" "public/images/" -Force
Copy-Item "../images/*.mp4" "public/images/" -Force
```

## Step 2: Install Dependencies

```bash
npm install
```

## Step 3: Run Development Server

```bash
npm run dev
```

Visit [http://localhost:3000](http://localhost:3000)

## 🎯 Expected Result

You should see:
- ✅ Smooth scrolling experience
- ✅ Animated headphone moving through sections
- ✅ Parallax effects on scroll
- ✅ Split text animation on hero section
- ✅ All images and videos loading correctly

## ⚠️ Troubleshooting

### Issue: GSAP plugins not working

**Solution**: GSAP premium plugins (ScrollSmoother, SplitText) require a Club GreenSock membership. For development:

1. Sign up for a free trial at [greensock.com/club](https://greensock.com/club)
2. Or use the free version (some animations will be disabled)

### Issue: Images not showing

**Solution**: Make sure all images are copied to `public/images/` directory.

### Issue: TypeScript errors

**Solution**: 
```bash
npm install --save-dev @types/node @types/react @types/react-dom
```

### Issue: Build errors

**Solution**: Clear Next.js cache and rebuild:
```bash
rm -rf .next
npm run build
```

## 📱 Mobile Testing

The site is responsive but animations are optimized for desktop. To test:

```bash
npm run dev
# Visit on mobile or use browser dev tools
```

## 🎨 Customization

### Change Colors
Edit `tailwind.config.ts`:
```typescript
colors: {
  'primary': '#734425',      // Change to your color
  'secondary': '#C26819',    // Change to your color
}
```

### Change Fonts
Edit `app/layout.tsx` to import different Google Fonts.

### Modify Animations
Edit `hooks/useGSAPAnimations.ts` to customize scroll animations.

## 📦 Deployment

### Vercel (Recommended)
```bash
npm install -g vercel
vercel
```

### Build Static
```bash
npm run build
# Deploy the `out` folder
```

## 🎓 Learning Resources

- [Next.js Docs](https://nextjs.org/docs)
- [GSAP Docs](https://greensock.com/docs/)
- [Tailwind CSS](https://tailwindcss.com/docs)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)

---

Need help? Check the [README.md](./README.md) for more details.
