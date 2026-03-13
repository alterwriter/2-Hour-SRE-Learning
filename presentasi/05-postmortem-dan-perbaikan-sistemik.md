# 5 — Postmortem dan Perbaikan Sistemik

> Bagian dari paket **2-Hour SRE**. Gunakan file ini untuk presentasi fokus per topik atau saat ingin berpindah chapter tanpa kehilangan struktur.

- Bab sebelumnya: [04](./04-incident-response-dan-runbook.md)
- Bab berikutnya: [06](./06-audit-sre-praktis.md)

---

## Prinsip
Postmortem bertujuan memperbaiki sistem, proses, dan deteksi, bukan mencari kambing hitam.

## Struktur Minimum Postmortem
| Bagian | Isi |
|---|---|
| Ringkasan | Apa yang terjadi, layanan mana terdampak, berapa lama |
| Dampak | Pengguna, proses bisnis, dan estimasi gangguan |
| Timeline | Urutan peristiwa berbasis bukti |
| Akar masalah | Analisis penyebab dan faktor kontribusi |
| Tindakan | Apa yang dilakukan saat insiden |
| Perbaikan | Aksi pencegahan dengan PIC dan target waktu |

## Referensi Template
- `templates/template-postmortem.md`

---
