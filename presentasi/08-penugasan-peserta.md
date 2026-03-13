# 8 — Penugasan Peserta

> Bagian dari paket **2-Hour SRE**. Gunakan file ini untuk presentasi fokus per topik atau saat ingin berpindah chapter tanpa kehilangan struktur.

- Bab sebelumnya: [07](./07-integrasi-devsecops.md)
- Lanjut ke [Template dan Berkas Pendukung](../README.md#template-dan-berkas-pendukung)

---

## Tujuan Penugasan
Peserta diminta menggabungkan perspektif **DevSecOps** dan **SRE** dalam satu laporan pengawasan layanan.

## Tugas yang Harus Dilakukan
### Bagian A — DevSecOps
1. Menyiapkan atau menggunakan project GitLab contoh.
2. Mengaktifkan **SAST**, **Dependency Scanning / SCA**, dan **IaC scanning**.
3. Menjalankan pipeline.
4. Mendokumentasikan hasil scan: temuan, severity, dan rekomendasi.
5. Menyertakan **URL pipeline**, **URL repository / merge request**, dan **capture** hasil.

### Bagian B — SRE
1. Meninjau sample log, metrics, dan rule alert.
2. Mengisi review alert menggunakan template.
3. Mendefinisikan SLI/SLO dasar untuk layanan contoh.
4. Menyusun ringkasan audit SRE dengan status kontrol.
5. Menyusun laporan pengawasan singkat yang memuat temuan dan rekomendasi.

## Artefak yang Harus Dikumpulkan Peserta
| Artefak | Format |
|---|---|
| Laporan audit SRE | Excel (`template-laporan-penugasan.xlsx`) |
| Review alert | Markdown |
| Template SLI/SLO | Markdown |
| Ringkasan postmortem (bila diminta) | Markdown |
| Bukti DevSecOps | URL pipeline, URL repo/MR, capture |

## Kriteria Penilaian
| Kriteria | Bobot |
|---|---:|
| Kelengkapan bukti | 30% |
| Ketepatan analisis temuan | 25% |
| Kualitas rekomendasi | 20% |
| Keterkaitan DevSecOps dengan reliabilitas | 15% |
| Kerapian pelaporan | 10% |

---

# Template dan Berkas Pendukung

## Templates
- [Template Postmortem](templates/template-postmortem.md)
- [Template Alert Review](templates/template-alert-review.md)
- [Template SLI/SLO Dasar](templates/template-sli-slo-basic.md)
- [Sample Runbook](templates/sample-runbook.md)
- `templates/template-laporan-penugasan.xlsx`

## Samples
- `samples/sample-log-app.txt`
- `samples/sample-log-nginx.txt`
- `samples/sample-metrics.csv`
- `samples/sample-prometheus-alerts.yml`
- `samples/sample-gitlab-ci-security.yml`
- `samples/sample-iac-main.tf`
- `samples/sample-k8s-deployment.yaml`

---

# Saran Penyampaian
- Tampilkan diagram lebih dahulu, baru masuk ke artefak teknis.
- Saat menampilkan sampel log dan metrik, ajukan pertanyaan audit sebelum memberi jawaban.
- Simpan waktu paling akhir untuk penjelasan penugasan dan format pengumpulan.
- Bila waktu sempit, prioritaskan chapter 2, 3, 6, dan 8.

---

# Penutup
Paket ini dirancang agar penyaji dapat membawakan workshop SRE dua jam secara profesional hanya dengan **Markdown**, tanpa bergantung pada slide presentasi. Seluruh materi dapat ditunjukkan langsung melalui preview Markdown dan file pendukung yang telah disediakan.
