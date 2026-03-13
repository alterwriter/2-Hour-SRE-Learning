# 2 — Reliabilitas sebagai Target

> Bagian dari paket **2-Hour SRE**. Gunakan file ini untuk presentasi fokus per topik atau saat ingin berpindah chapter tanpa kehilangan struktur.

- Bab sebelumnya: [01](./01-landasan-sre.md)
- Bab berikutnya: [03](./03-observability-dan-alerting.md)

---

## Istilah Inti
| Istilah | Arti Praktis | Contoh |
|---|---|---|
| SLI | Ukuran perilaku layanan | availability, latency p95, error rate |
| SLO | Target minimum yang disepakati | availability 99,90% per 30 hari |
| SLA | Komitmen layanan ke pihak eksternal | kompensasi jika target gagal |
| Error Budget | Ruang toleransi kegagalan | 0,10% per window 30 hari |

## Diagram Error Budget
![Error Budget Decision](assets/02-error-budget-decision.svg)

## Contoh Definisi SLI dan SLO
| Layanan | SLI | Target SLO | Window | Ambang perhatian |
|---|---|---:|---|---|
| Checkout | Availability | 99,90% | 30 hari | burn rate > 1,0 |
| Checkout | Latency p95 | < 250 ms | 30 hari | > 250 ms selama 10 menit |
| Checkout | Error rate | < 0,50% | 30 hari | > 0,50% selama 5 menit |

## Pesan untuk Diskusi
- Target yang tidak diukur adalah slogan.
- Target yang diukur tetapi tidak mengubah keputusan operasional juga tidak berguna.
- Error budget dipakai untuk memutuskan laju perubahan, bukan sekadar untuk laporan bulanan.

---
