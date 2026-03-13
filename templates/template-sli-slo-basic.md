# Template SLI / SLO Dasar

> Gunakan template ini untuk mendefinisikan target reliabilitas minimum sebuah layanan.

## Identitas Layanan
- **Nama layanan**:
- **Fungsi bisnis**:
- **Pemilik layanan**:
- **Jam operasional kritis**:
- **Dependency utama**:

## Definisi SLI
| Jenis SLI | Definisi | Sumber data | Query / rumus |
|---|---|---|---|
| Availability | Rasio request sukses terhadap total request | Metrics HTTP | |
| Latency p95 | Persentil ke-95 durasi request | Histogram aplikasi | |
| Error rate | Persentase HTTP 5xx / total request | Metrics gateway | |

## Target SLO
| SLI | Target | Window | Catatan |
|---|---|---|---|
| Availability | 99,90% | 30 hari | |
| Latency p95 | < 250 ms | 30 hari | |
| Error rate | < 0,50% | 30 hari | |

## Error Budget
- **Rumus singkat**: `100% - target availability`
- **Contoh**: target 99,90% → error budget 0,10% per window

## Kebijakan Operasional
- Jika burn rate rendah → perubahan normal dapat berjalan.
- Jika burn rate meningkat → lakukan review risiko perubahan.
- Jika burn rate melewati ambang → bekukan perubahan berisiko dan prioritaskan stabilisasi.

## Catatan Audit
- Apakah sumber data reliabel?
- Apakah definisi SLI konsisten lintas tim?
- Apakah dashboard dan alert sudah selaras dengan SLO?
