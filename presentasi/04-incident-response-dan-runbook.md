# 4 — Incident Response dan Runbook

> Bagian dari paket **2-Hour SRE**. Gunakan file ini untuk presentasi fokus per topik atau saat ingin berpindah chapter tanpa kehilangan struktur.

- Bab sebelumnya: [03](./03-observability-dan-alerting.md)
- Bab berikutnya: [05](./05-postmortem-dan-perbaikan-sistemik.md)

---

## Diagram Siklus Insiden
![Incident Lifecycle](assets/04-incident-lifecycle.svg)

## Fokus Pengawasan Saat Insiden
| Fase | Pertanyaan utama |
|---|---|
| Detection | Apakah gejala terdeteksi cepat dan dapat dipercaya? |
| Triage | Apakah scope, severity, dan owner langsung jelas? |
| Mitigation | Apakah langkah mitigasi pertama aman dan terdokumentasi? |
| Communication | Apakah pemangku kepentingan menerima update yang konsisten? |
| Recovery | Apakah indikator pemulihan didefinisikan dengan jelas? |
| Postmortem | Apakah pembelajaran diterjemahkan menjadi aksi yang dapat ditutup? |

## Karakteristik Runbook yang Baik
- Memiliki trigger yang jelas.
- Menjelaskan langkah konfirmasi awal.
- Menyediakan urutan triage yang aman.
- Menjelaskan opsi mitigasi, rollback, atau failover.
- Menentukan siapa yang harus dihubungi.
- Memiliki kriteria recovery yang objektif.

## Referensi Template
- `templates/sample-runbook.md`
- `templates/template-alert-review.md`

---
