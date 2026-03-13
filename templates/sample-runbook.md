# Sample Runbook — Checkout High Latency

## Tujuan
Menangani peningkatan latensi p95 pada layanan `checkout` dengan cepat, aman, dan terdokumentasi.

## Trigger
- Alert `CheckoutHighLatencyP95` aktif selama > 10 menit
- Keluhan pengguna terkait transaksi lambat
- Peningkatan tajam error budget burn rate

## Dampak Potensial
- Gagal bayar atau timeout transaksi
- Penurunan konversi
- Backlog request pada upstream payment-gateway

## Langkah 0 — Konfirmasi Awal
1. Buka dashboard latency, error rate, dan throughput.
2. Validasi scope: satu region atau seluruh layanan.
3. Cek deployment terakhir, perubahan konfigurasi, dan dependency eksternal.

## Langkah 1 — Triage
| Pemeriksaan | Pertanyaan |
|---|---|
| Latency | Apakah hanya p95/p99 yang naik atau median juga ikut naik? |
| Error | Apakah 5xx meningkat? |
| Saturation | Apakah CPU, memory, atau connection pool mendekati batas? |
| Dependency | Apakah payment-gateway atau database melambat? |

## Langkah 2 — Mitigasi
- Kurangi trafik ke fitur non-kritis.
- Aktifkan rollback jika insiden berkorelasi dengan deployment terakhir.
- Naikkan replica jika bottleneck ada pada kapasitas.
- Terapkan failover atau mode degradasi terkontrol.

## Langkah 3 — Komunikasi
- Severity:
- Owner insiden:
- Kanal komunikasi:
- Interval update status: setiap 15 menit

## Langkah 4 — Kriteria Recovery
- Latensi p95 kembali di bawah 250 ms selama minimal 15 menit
- Error rate kembali di bawah 0,50%
- Tidak ada lonjakan ulang setelah mitigasi

## Langkah 5 — Tindak Lanjut
- Buat postmortem maksimal 2 hari kerja
- Evaluasi threshold alert
- Tambahkan bukti dashboard, log, trace, dan perubahan konfigurasi
