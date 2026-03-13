# 2-Hour SRE

## Tujuan Paket
Paket ini disusun agar penyaji dapat:
1. Menjelaskan konsep inti SRE secara terstruktur dan profesional.
2. Menampilkan diagram, tabel, checklist audit, sampel log, metrik, dan konfigurasi yang relevan.
3. Memberikan penugasan yang dapat langsung dikerjakan peserta pada domain **SRE** dan **DevSecOps**.
4. Menyediakan template laporan yang siap diisi peserta tanpa harus membuat format dari nol.

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
├── assets/
├── templates/
└── samples/
```

## Cara Menggunakan Paket Ini
### Opsi 1 — Presentasi paling aman
Buka `README.md` sebagai halaman utama, lalu klik chapter sesuai urutan. Model ini paling aman untuk sesi live karena alur tetap terjaga dan perpindahan file tetap rapi.

### Opsi 2 — Presentasi modular
Buka langsung file pada folder `presentasi/` jika ingin fokus pada satu bab tertentu, mengulang bagian tertentu, atau menyesuaikan alur diskusi dengan kebutuhan audiens.

### Opsi 3 — Demonstrasi artefak
Saat membahas praktik, buka file pada folder `samples/` dan `templates/` sebagai bukti teknis, bukan sekadar uraian konsep.

## Agenda Workshop (120 Menit)
| Waktu | Chapter | Tujuan |
|---|---|---|
| 00–10 menit | 1. Landasan SRE | Menyamakan definisi, ruang lingkup, dan peran SRE terhadap operasi layanan |
| 10–25 menit | 2. Reliabilitas sebagai Target | Memahami SLI, SLO, SLA, dan error budget sebagai alat pengambilan keputusan |
| 25–45 menit | 3. Observability dan Alerting | Menilai kualitas metrics, logs, traces, dashboard, dan alert |
| 45–65 menit | 4. Incident Response dan Runbook | Mengulas triage, mitigasi, komunikasi, dan struktur runbook |
| 65–80 menit | 5. Postmortem dan Perbaikan Sistemik | Menekankan pembelajaran terukur, bukan sekadar menyelesaikan insiden |
| 80–100 menit | 6. Audit SRE Praktis | Menerapkan checklist audit ke layanan contoh |
| 100–115 menit | 7. Integrasi DevSecOps | Menghubungkan keamanan pipeline dengan stabilitas operasional |
| 115–120 menit | 8. Instruksi Penugasan | Menjelaskan artefak, bukti, dan format pelaporan peserta |

## Navigasi Presentasi
- [00 — Agenda Workshop](presentasi/00-agenda.md)
- [01 — Landasan SRE](presentasi/01-landasan-sre.md)
- [02 — Reliabilitas sebagai Target](presentasi/02-reliabilitas-sebagai-target.md)
- [03 — Observability dan Alerting](presentasi/03-observability-dan-alerting.md)
- [04 — Incident Response dan Runbook](presentasi/04-incident-response-dan-runbook.md)
- [05 — Postmortem dan Perbaikan Sistemik](presentasi/05-postmortem-dan-perbaikan-sistemik.md)
- [06 — Audit SRE Praktis](presentasi/06-audit-sre-praktis.md)
- [07 — Integrasi DevSecOps](presentasi/07-integrasi-devsecops.md)
- [08 — Penugasan Peserta](presentasi/08-penugasan-peserta.md)

## Peta Aset Visual
- Diagram model operasional SRE: `assets/01-operating-model-sre.png`
- Diagram keputusan error budget: `assets/02-error-budget-decision.png`
- Diagram pipeline observability: `assets/03-observability-pipeline.png`
- Diagram siklus insiden: `assets/04-incident-lifecycle.png`
- Grafik tren latensi p95: `assets/05-latency-p95.png`
- Grafik tren error rate: `assets/06-error-rate.png`

## Template dan Berkas Pendukung
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

## Saran Penyampaian
- Mulai dari `00-agenda.md`, lalu masuk ke chapter satu per satu.
- Gunakan diagram lebih dahulu, kemudian pindah ke tabel audit dan sampel teknis.
- Saat masuk ke observability, tampilkan langsung metrics, log, dan rule alert agar sesi terasa konkret.
- Saat masuk ke penugasan, buka template dan workbook agar peserta memahami ekspektasi hasil akhir.

## Penutup
Struktur hybrid ini dirancang agar materi tetap **nyaman untuk presentasi live**, tetapi juga **rapi sebagai repository GitLab** yang modular dan mudah diperbarui.
