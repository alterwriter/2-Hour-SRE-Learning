# 8 — Penugasan Peserta

- Bab sebelumnya: [07 — Integrasi DevSecOps](./07-integrasi-devsecops.md)
- Kembali ke [README](../README.md)

---

## Tujuan Penugasan
Peserta diminta menggabungkan perspektif **DevSecOps** dan **SRE** ke dalam satu laporan pengawasan layanan yang berbasis bukti.

## Hasil Akhir yang Diharapkan
Pada akhir penugasan, setiap peserta atau kelompok menghasilkan:
1. bukti eksekusi pipeline security,
2. analisis temuan teknis,
3. definisi SLI/SLO dasar,
4. review alert,
5. ringkasan audit SRE,
6. dan rekomendasi perbaikan yang dapat diprioritaskan.

## Bagian A — DevSecOps
1. Menyiapkan atau menggunakan project GitLab contoh.
2. Mengaktifkan **SAST**, **Dependency Scanning / SCA**, dan **IaC scanning**.
3. Menjalankan pipeline.
4. Mendokumentasikan hasil scan: temuan, severity, dan rekomendasi.
5. Menyertakan **URL pipeline**, **URL repository atau merge request**, dan **capture** hasil.

## Bagian B — SRE
1. Meninjau sample log, metrics, dan rule alert.
2. Mengisi review alert menggunakan template.
3. Mendefinisikan SLI/SLO dasar untuk layanan contoh.
4. Menyusun ringkasan audit SRE dengan status kontrol.
5. Menyusun laporan pengawasan singkat yang memuat temuan dan rekomendasi.

## Artefak yang Dikumpulkan
| Artefak | Format |
|---|---|
| Laporan audit SRE | Excel ((template-laporan-penugasan.xlsx() |
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

## Langkah Pengerjaan yang Disarankan
| Langkah | Fokus |
|---|---|
| 1 | Jalankan pipeline security dan kumpulkan bukti |
| 2 | Identifikasi temuan yang paling berdampak |
| 3 | Tinjau log, metrik, dan alert |
| 4 | Susun SLI/SLO dasar |
| 5 | Isi workbook laporan |
| 6 | Tulis rekomendasi dengan prioritas |

## Template dan Berkas Pendukung
### Templates
- [Template Postmortem](../templates/template-postmortem.md)
- [Template Alert Review](../templates/template-alert-review.md)
- [Template SLI/SLO Dasar](../templates/template-sli-slo-basic.md)
- [Sample Runbook](../templates/sample-runbook.md)
- [Template Laporan Penugasan](../templates/template-laporan-penugasan.xlsx)

### Samples
- [Sample Log App](../samples/sample-log-app.txt)
- [Sample log NGINX](../samples/sample-log-nginx.txt)
- [Sample Metrics](../samples/sample-metrics.csv)
- [Sample Prometheus Alerts](../samples/sample-prometheus-alerts.yml)
- [Sample GitLab CI Security](../samples/sample-gitlab-ci-security.yml)
- [Sample IaC Main](../samples/sample-iac-main.tf)
- [Sample k8s Deployment](../samples/sample-k8s-deployment.yaml)

## Standar Kualitas Jawaban
Jawaban dinilai lebih kuat bila:
- temuan tidak berhenti pada gejala,
- rekomendasi dikaitkan ke risiko nyata,
- bukti yang dipakai jelas dan dapat diverifikasi,
- prioritas perbaikan dijelaskan dengan alasan,
- dan hubungan antara keamanan perubahan serta reliabilitas dijelaskan secara eksplisit.
