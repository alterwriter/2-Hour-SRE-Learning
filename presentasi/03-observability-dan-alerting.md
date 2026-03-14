# 3 — Observability dan Alerting

- Bab sebelumnya: [02 — Reliabilitas sebagai Target](./02-reliabilitas-sebagai-target.md)
- Bab berikutnya: [04 — Incident Response dan Runbook](./04-incident-response-dan-runbook.md)

---

## Prinsip Dasar
Observability yang baik bukan sekadar banyak dashboard. Observability harus memungkinkan tim menjawab empat pertanyaan operasional berikut secara cepat:
1. Apa yang sedang rusak?
2. Seberapa besar dampaknya?
3. Perubahan atau dependency apa yang paling mungkin memicu gejala tersebut?
4. Langkah mitigasi pertama apa yang paling aman?

## Analogi Dunia Nyata
### Analogi 1 — Tubuh manusia
Dalam dunia medis:
- **Metrics** seperti detak jantung, suhu, tekanan darah.
- **Logs** seperti catatan kejadian: obat apa yang diberikan, kapan gejala muncul.
- **Traces** seperti rekam jejak perjalanan satu pasien dari pendaftaran hingga tindakan.

Jika seseorang hanya tahu “pasien terlihat lemah”, itu belum cukup. Yang dibutuhkan adalah indikator, kronologi, dan konteks. Sistem digital juga sama.

### Analogi 2 — Pusat perbelanjaan
- CCTV memberi gambaran visual global.
- Catatan transaksi kasir menunjukkan kejadian terstruktur.
- Nomor antrian memperlihatkan waktu tunggu.
- Riwayat pintu akses memperlihatkan alur perpindahan orang.

Semua sinyal ini saling melengkapi. Jika salah satunya hilang, investigasi menjadi lebih lambat.

## Diagram Observability
![Observability Pipeline](../assets/03-observability-pipeline.svg)

## Empat Sinyal Praktis
| Domain | Pertanyaan audit | Bukti minimum |
|---|---|---|
| Metrics | Apakah ada metrik untuk latency, traffic, errors, saturation? | Dashboard, query, threshold |
| Logs | Apakah log cukup terstruktur untuk investigasi? | request_id, trace_id, severity, service |
| Traces | Apakah perjalanan request antarlayanan dapat ditelusuri? | trace waterfall, span detail |
| Dashboard | Apakah dashboard fokus pada layanan, bukan sekadar host? | panel per service / endpoint |

## Sampel Log Aplikasi
File sumber: `samples/sample-log-app.txt`

```log
2026-03-10T09:14:55Z level=ERROR service=checkout env=prod request_id=1259cb4c9ae1 trace_id=41d71f2cb2bf11d4 msg="checkout failed" error_code=PAYMENT_TIMEOUT http_status=504 elapsed_ms=1504 customer_tier=premium
```

## Cara Membaca Log di Atas
| Field | Makna operasional |
|---|---|
| `service=checkout` | Gangguan terjadi di domain transaksi pembayaran |
| `request_id` dan `trace_id` | Dipakai untuk mengaitkan bukti lintas log dan trace |
| `error_code=PAYMENT_TIMEOUT` | Indikasi dependency eksternal atau bottleneck internal |
| `http_status=504` | Pengguna menerima kegagalan timeout |
| `elapsed_ms=1504` | Durasi sudah jauh di atas target contoh 250 ms |
| `customer_tier=premium` | Dapat membantu menilai dampak bisnis atau prioritas penanganan |

## Sampel Rule Alert
File sumber: `samples/sample-prometheus-alerts.yml`

```yaml
groups:
  - name: sre-demo.rules
    rules:
      - alert: CheckoutErrorRateHigh
        expr: sum(rate(http_requests_total{service="checkout",status=~"5.."}[5m])) / sum(rate(http_requests_total{service="checkout"}[5m])) > 0.005
        for: 5m
        labels:
          severity: critical
          team: sre
        annotations:
          summary: "Error rate checkout melebihi 0,5%"
          description: "Aktifkan triage, validasi dampak pengguna, dan pertimbangkan rollback."
```

## Checklist Review Alert
| Aspek | Pertanyaan |
|---|---|
| Kejelasan | Apakah nama alert menjelaskan gejala layanan? |
| Relevansi | Apakah alert terkait risiko nyata terhadap SLO? |
| Actionability | Apakah ada langkah awal yang dapat dilakukan dalam lima menit pertama? |
| Konteks | Apakah annotation mencantumkan dampak, service, severity, dan runbook? |
| Noise | Apakah alert cukup stabil dan tidak berisik? |
| Coverage | Apakah alert mengawasi kegagalan yang memang penting? |

## Blind Spot yang Sering Terjadi
- Dashboard hanya menampilkan infrastruktur, bukan pengalaman layanan.
- Log tidak terstruktur sehingga sulit dicari saat insiden.
- Alert dibuat dari threshold teknis yang tidak terkait ke SLO.
- Tidak ada korelasi antara deployment terakhir dan gejala layanan.
- Semua alert diperlakukan sama, padahal dampaknya berbeda.

## Pertanyaan Reflektif
- Jika latency naik tetapi error belum naik, apakah organisasi sudah punya alert yang tepat?
- Jika satu transaksi gagal, seberapa cepat tim bisa melacak alurnya lintas service?
- Jika dashboard terlihat hijau, apakah itu benar-benar berarti pengguna tidak mengalami masalah?
