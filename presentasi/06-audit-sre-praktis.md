# 6 — Audit SRE Praktis

> Bagian dari paket **2-Hour SRE**. Gunakan file ini untuk presentasi fokus per topik atau saat ingin berpindah chapter tanpa kehilangan struktur.

- Bab sebelumnya: [05](./05-postmortem-dan-perbaikan-sistemik.md)
- Bab berikutnya: [07](./07-integrasi-devsecops.md)

---

## Praktikal Checklist Audit SRE
Gunakan checklist ini sebagai diskusi langsung atau studi kasus kelompok.

| Area | Kontrol Audit | Bukti yang Dicari | Status |
|---|---|---|---|
| SLI/SLO | Layanan memiliki SLI dan SLO yang terdokumentasi | Dokumen SLO, dashboard | Ya / Tidak / Parsial |
| Error Budget | Ada kebijakan operasional saat error budget terpakai | Kebijakan rilis, review change | Ya / Tidak / Parsial |
| Observability | Metrics, logs, traces tersedia dan saling melengkapi | Dashboard, log sample, trace | Ya / Tidak / Parsial |
| Alerting | Alert dapat ditindaklanjuti dan memiliki owner | Rule alert, runbook URL | Ya / Tidak / Parsial |
| Incident Response | Ada severity matrix dan prosedur eskalasi | Runbook, playbook on-call | Ya / Tidak / Parsial |
| Postmortem | Ada template dan aksi tindak lanjut yang dilacak | Postmortem terdahulu | Ya / Tidak / Parsial |
| Capacity | Ada pemantauan saturation dan review kapasitas | Trend CPU/memory/QPS | Ya / Tidak / Parsial |
| Change Safety | Deployment dapat dihubungkan ke gejala operasional | Pipeline, release log, audit trail | Ya / Tidak / Parsial |

## Skema Penilaian Sederhana
| Nilai | Interpretasi |
|---:|---|
| 2 | Kontrol tersedia dan bukti memadai |
| 1 | Kontrol tersedia sebagian atau belum konsisten |
| 0 | Kontrol belum tersedia atau tidak dapat dibuktikan |

## Pertanyaan Diskusi
- Kontrol mana yang paling penting untuk ditutup lebih dahulu?
- Bukti mana yang paling mudah dikumpulkan oleh tim?
- Apakah temuan bersifat operasional, arsitektural, atau proses?

---
