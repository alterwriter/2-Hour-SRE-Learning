# 2-Hour SRE

> Paket workshop dua jam berbasis **Markdown** untuk pembelajaran, diskusi, audit artefak, dan penugasan terarah tanpa bergantung pada slide presentasi.

## Orientasi Materi
Materi ini dirancang agar dapat dipakai langsung untuk dua kebutuhan sekaligus:
1. **Sesi kelas atau workshop** melalui screen sharing Markdown.
2. **Bahan belajar mandiri** yang tetap nyaman dibaca ulang setelah sesi selesai.

Fokus utama materi ini adalah membantu peserta memahami bahwa **reliabilitas** bukan sekadar urusan “server hidup”, melainkan kemampuan layanan menjaga pengalaman pengguna, kapasitas sistem, kualitas perubahan, dan kecepatan pemulihan saat gangguan terjadi.

## Struktur Folder
```text
2-hour-sre-workshop-id/
├── README.md
├── presentasi/
│   ├── 00-agenda.md
│   ├── 01-landasan-sre.md
│   ├── 02-reliabilitas-sebagai-target.md
│   ├── 03-observability-dan-alerting.md
│   ├── 04-incident-response-dan-runbook.md
│   ├── 05-postmortem-dan-perbaikan-sistemik.md
│   ├── 06-audit-sre-praktis.md
│   ├── 07-integrasi-devsecops.md
│   └── 08-penugasan-peserta.md
├── lampiran/
│   └── analogi-dunia-nyata.md
├── assets/
├── templates/
└── samples/
```

## Cara Menggunakan Materi Ini
### Opsi 1 — Alur linear
Buka `README.md` sebagai pintu masuk utama, lalu ikuti chapter sesuai urutan. Model ini cocok untuk sesi dua jam karena alurnya rapi dan tidak membuat perpindahan konteks terlalu tajam.

### Opsi 2 — Alur modular
Buka file pada folder `presentasi/` jika ingin fokus pada satu topik tertentu, mengulang bab tertentu, atau menjadikan materi ini sebagai bacaan mandiri per topik.

### Opsi 3 — Bukti teknis langsung
Saat masuk ke bagian praktikal, buka folder `samples/` dan `templates/` untuk melihat log, metrics, rule alert, pipeline security, contoh IaC, template postmortem, dan workbook pelaporan.

## Agenda Workshop (120 Menit)
| Waktu | Chapter | Fokus hasil belajar |
|---|---|---|
| 00–10 menit | 1. Landasan SRE | Memahami posisi SRE sebagai fungsi pengendalian reliabilitas |
| 10–25 menit | 2. Reliabilitas sebagai Target | Memahami SLI, SLO, SLA, dan error budget sebagai alat keputusan |
| 25–45 menit | 3. Observability dan Alerting | Menilai kualitas logs, metrics, traces, dashboard, dan alert |
| 45–65 menit | 4. Incident Response dan Runbook | Memahami triage, mitigasi, komunikasi, dan pemulihan |
| 65–80 menit | 5. Postmortem dan Perbaikan Sistemik | Membedakan perbaikan sistemik dari sekadar respons insiden |
| 80–100 menit | 6. Audit SRE Praktis | Menggunakan checklist audit pada contoh layanan |
| 100–115 menit | 7. Integrasi DevSecOps | Mengaitkan keamanan perubahan dengan stabilitas layanan |
| 115–120 menit | 8. Penugasan Peserta | Menyiapkan bukti, temuan, dan format pelaporan |

## Navigasi Materi
- [00 — Agenda Workshop](presentasi/00-agenda.md)
- [01 — Landasan SRE](presentasi/01-landasan-sre.md)
- [02 — Reliabilitas sebagai Target](presentasi/02-reliabilitas-sebagai-target.md)
- [03 — Observability dan Alerting](presentasi/03-observability-dan-alerting.md)
- [04 — Incident Response dan Runbook](presentasi/04-incident-response-dan-runbook.md)
- [05 — Postmortem dan Perbaikan Sistemik](presentasi/05-postmortem-dan-perbaikan-sistemik.md)
- [06 — Audit SRE Praktis](presentasi/06-audit-sre-praktis.md)
- [07 — Integrasi DevSecOps](presentasi/07-integrasi-devsecops.md)
- [08 — Penugasan Peserta](presentasi/08-penugasan-peserta.md)
- [Lampiran — Analogi Dunia Nyata](lampiran/analogi-dunia-nyata.md)

## Peta Aset Visual
- Diagram model operasional SRE: `assets/01-operating-model-sre.svg`
- Diagram keputusan error budget: `assets/02-error-budget-decision.svg`
- Diagram pipeline observability: `assets/03-observability-pipeline.svg`
- Diagram siklus insiden: `assets/04-incident-lifecycle.svg`
- Grafik tren latensi p95: `assets/05-latency-p95.png`
- Grafik tren error rate: `assets/06-error-rate.png`

## Daftar Template dan Sampel
### Templates
- [Template Postmortem](templates/template-postmortem.md)
- [Template Alert Review](templates/template-alert-review.md)
- [Template SLI/SLO Dasar](templates/template-sli-slo-basic.md)
- [Sample Runbook](templates/sample-runbook.md)
- `templates/template-laporan-penugasan.xlsx`

### Samples
- `samples/sample-log-app.txt`
- `samples/sample-log-nginx.txt`
- `samples/sample-metrics.csv`
- `samples/sample-prometheus-alerts.yml`
- `samples/sample-gitlab-ci-security.yml`
- `samples/sample-iac-main.tf`
- `samples/sample-k8s-deployment.yaml`

## Prinsip Membaca Materi
- Mulai dari **dampak ke pengguna**, baru turun ke metrics dan konfigurasi.
- Gunakan **analogi yang nyata** untuk memahami konsep, lalu kembali ke definisi teknis.
- Bedakan antara **gejala**, **indikator**, **akar masalah**, dan **aksi perbaikan**.
- Perlakukan SRE sebagai cara berpikir operasional yang terukur, bukan sekadar kumpulan tool.

## Catatan Akhir
Materi ini disusun dengan bahasa yang dapat dibagikan langsung kepada peserta. Seluruh bagian dibuat netral dan dapat dibaca tanpa penjelasan tambahan yang bersifat internal.
