# 5 — Postmortem dan Perbaikan Sistemik

- Bab sebelumnya: [04 — Incident Response dan Runbook](./04-incident-response-dan-runbook.md)
- Bab berikutnya: [06 — Audit SRE Praktis](./06-audit-sre-praktis.md)

---

## Prinsip Dasar
Postmortem bukan dokumen untuk menyalahkan individu, melainkan sarana untuk memperbaiki **sistem**, **proses**, **observability**, dan **pengendalian perubahan**.

## Analogi Dunia Nyata
### Analogi 1 — Investigasi kecelakaan transportasi
Setelah sebuah kecelakaan, pertanyaan yang diajukan bukan hanya “siapa yang terakhir menyentuh tombol?”, tetapi:
- prosedur apa yang lemah,
- sinyal peringatan mana yang tidak terbaca,
- desain sistem apa yang memudahkan kegagalan,
- kontrol pencegahan apa yang seharusnya ada.

Postmortem yang matang melihat kegagalan sebagai hasil dari kombinasi faktor, bukan kesalahan tunggal.

### Analogi 2 — Bangunan yang bocor saat hujan
Memperbaiki titik bocor sekali saja tanpa melihat kemiringan atap, kualitas material, dan jalur air biasanya hanya menunda masalah. Dalam sistem digital, mengganti pod atau me-restart service tanpa menutup akar masalah juga hanya memberi ilusi perbaikan.

## Struktur Minimum Postmortem
| Bagian | Isi |
|---|---|
| Ringkasan | Apa yang terjadi, layanan mana terdampak, berapa lama |
| Dampak | Pengguna, proses bisnis, dan estimasi gangguan |
| Timeline | Urutan peristiwa berbasis bukti |
| Akar masalah | Analisis penyebab dan faktor kontribusi |
| Tindakan | Apa yang dilakukan saat insiden |
| Perbaikan | Aksi pencegahan dengan PIC dan target waktu |

## Kerangka Analisis yang Disarankan
### 1. Bedakan gejala dan akar masalah
- **Gejala**: checkout timeout, latency meningkat, error rate naik.
- **Akar masalah**: query lambat, dependency payment melambat, koneksi pool habis, alert terlambat, rollback tidak otomatis.

### 2. Cari faktor kontribusi
- observability kurang detail,
- perubahan tidak terhubung ke release note,
- kapasitas terlalu tipis,
- runbook tidak memadai,
- dependency eksternal tidak dipantau.

### 3. Hasilkan aksi yang bisa diverifikasi
Action item harus memiliki:
- pemilik,
- tenggat waktu,
- prioritas,
- dan bukti penutupan.

## Referensi Template
- [Template Postmortem](../templates/template-postmortem.md)

## Contoh Aksi Sistemik yang Baik
| Aksi | Alasan |
|---|---|
| Menambahkan burn-rate alert dua tingkat | Deteksi lebih cepat tanpa noise berlebihan |
| Menambahkan correlation ID pada log gateway dan aplikasi | Investigasi lintas service menjadi lebih cepat |
| Menetapkan freeze policy saat error budget kritis | Keputusan perubahan lebih disiplin |
| Memperbarui runbook dengan langkah rollback teruji | Respons awal menjadi lebih aman |

## Pertanyaan Reflektif
- Apakah organisasi biasanya berhenti pada “service sudah hidup lagi”?
- Berapa banyak insiden berulang yang sebenarnya berasal dari action item yang tidak pernah benar-benar ditutup?
- Apakah bukti pasca-insiden cukup lengkap untuk diuji ulang enam bulan kemudian?
