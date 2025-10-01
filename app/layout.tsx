import type { Metadata } from 'next'
import { DM_Sans, Outfit } from 'next/font/google'
import './globals.css'

const dmSans = DM_Sans({ 
  subsets: ['latin'],
  variable: '--font-dm-sans',
})

const outfit = Outfit({ 
  subsets: ['latin'],
  weight: '700',
  variable: '--font-outfit',
})

export const metadata: Metadata = {
  title: 'Audira - Premium Headphones',
  description: 'Engineered for clarity, comfort, and immersive sound — Audira redefines your listening experience with style and performance in perfect harmony.',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <body className={`${dmSans.variable} ${outfit.variable} font-sans`}>
        {children}
      </body>
    </html>
  )
}
