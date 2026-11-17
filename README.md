# Mendeleyev davriy jadvali — iOS ilovasi

Ilova ichida `mendeleyev.html` (telefon va kompyuter/iPad interfeysi birga) to'liq ekranda,
internetsiz ishlaydi (WKWebView). Interfeys (telefon/kompyuter), til, mavzu (yorug'/qorong'i/avto) va boshqa narsalarni
Sozlamalar (⚙️) ichidan almashtirish mumkin. Mavzu almashganda iOS holat paneli rangi ham moslashadi. Elementni bosganda iPhone yengil tebranadi (haptic).

## Kerak bo'ladi
- Mac kompyuter va **Xcode 15** yoki yangisi (App Store'dan bepul)
- iPhone (iOS 16+) yoki Xcode ichidagi simulyator
- O'z iPhone'ingizda sinash uchun bepul Apple ID kifoya (ilova 7 kun ishlaydi).
  App Store yoki TestFlight uchun pullik Apple Developer hisobi kerak ($99/yil).

## 1-usul: tayyor loyihani ochish
1. `Mendeleyev.swiftpm` papkasini ikki marta bosing (yoki Xcode → File → Open).
2. Chapda **Mendeleyev** ni tanlang → **Signing & Capabilities** → **Team** ga Apple ID'ingizni qo'ying.
3. **Bundle Identifier** ni o'zgartiring (masalan, `com.sizningismingiz.mendeleyev`).
4. Yuqorida qurilmani tanlang (simulyator yoki ulangan iPhone) va ▶ bosing.
   iPhone'da: Sozlamalar → Maxfiylik va xavfsizlik → **Developer Mode** yoqilgan bo'lishi kerak;
   birinchi ishga tushirishda Sozlamalar → Umumiy → VPN va qurilmalarni boshqarish → ishonch bildiring.

## 2-usul: Xcode'da yangi loyiha (1-usul ochilmasa)
1. Xcode → File → New → Project → **iOS → App** (Interface: SwiftUI, Language: Swift), nomi: Mendeleyev.
2. Avtomatik yaratilgan `ContentView.swift` ni o'chiring.
3. `MendeleyevApp.swift` ichini bizning `MendeleyevApp.swift` bilan almashtiring.
4. `WebContainer.swift` va `Resources/mendeleyev.html` fayllarini loyihaga sudrab qo'ying
   ("Copy items if needed" va Target belgisi yoqilgan bo'lsin).
5. `Assets.xcassets` → AppIcon ga `icon-1024.png` ni tashlang.
6. Signing'da Team'ni tanlab, ▶ bosing.

## App Store'ga chiqarish
Product → Archive → Distribute App → App Store Connect. Ilova tavsifi, skrinshotlar va
maxfiylik siyosati kerak bo'ladi.

## Mac'siz variant (ilova emas, lekin ilovaga o'xshaydi)
iPhone'da Safari'da sahifa havolasini oching → **Ulashish** → **Bosh ekranga qo'shish**.
Ikonka bosh ekranda paydo bo'ladi va sahifa to'liq ekranda ochiladi.
