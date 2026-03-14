# 6 — Audit SRE Praktis

- Bab sebelumnya: [05 — Postmortem dan Perbaikan Sistemik](./05-postmortem-dan-perbaikan-sistemik.md)
- Bab berikutnya: [07 — Integrasi DevSecOps](./07-integrasi-devsecops.md)

---

## Tujuan Audit
Audit SRE dipakai untuk menjawab pertanyaan sederhana tetapi penting: **kontrol reliabilitas apa yang sudah ada, apa buktinya, dan mana yang paling mendesak untuk ditutup?**

## Analogi Dunia Nyata
### Analogi 1 — Audit gedung sebelum acara besar
Sebuah gedung yang akan dipakai untuk acara besar tidak cukup hanya dinilai dari tampilannya. Yang diperiksa adalah:
- kapasitas,
- jalur evakuasi,
- listrik cadangan,
- alat pemadam,
- prosedur darurat,
- dan petugas yang bertanggung jawab.

Layanan digital juga demikian. Sistem bisa tampak baik pada hari biasa, tetapi gagal total saat beban tinggi jika kontrol dasar tidak pernah diaudit.

### Analogi 2 — Restoran saat jam makan siang
Restoran dapat terlihat rapi ketika sepi. Audit yang baik harus melihat kondisi pada saat tekanan muncul:
- apakah dapur sanggup,
- apakah pesanan tercatat dengan benar,
- apakah bahan baku cukup,
- apakah ada prosedur ketika pembayaran bermasalah.

## Praktikal Checklist Audit SRE
| Area | Kontrol audit | Bukti yang dicari | Status |
|---|---|---|---|
| SLI/SLO | Layanan memiliki SLI dan SLO yang terdokumentasi | Dokumen SLO, dashboard | Ya / Tidak / Parsial |
| Error Budget | Ada kebijakan operasional saat error budget terpakai | Kebijakan rilis, review change | Ya / Tidak / Parsial |
| Observability | Metrics, logs, traces tersedia dan saling melengkapi | Dashboard, log sample, trace | Ya / Tidak / Parsial |
| Alerting | Alert dapat ditindaklanjuti dan memiliki owner | Rule alert, runbook URL | Ya / Tidak / Parsial |
| Incident Response | Ada severity matrix dan prosedur eskalasi | Runbook, playbook on-call | Ya / Tidak / Parsial |
| Postmortem | Ada template dan aksi tindak lanjut yang dilacak | Postmortem terdahulu | Ya / Tidak / Parsial |
| Capacity | Ada pemantauan saturation dan review kapasitas | Trend CPU, memory, QPS | Ya / Tidak / Parsial |
| Change Safety | Deployment dapat dihubungkan ke gejala operasional | Pipeline, release log, audit trail | Ya / Tidak / Parsial |

## Skema Penilaian Sederhana
| Nilai | Interpretasi |
|---:|---|
| 2 | Kontrol tersedia dan bukti memadai |
| 1 | Kontrol tersedia sebagian atau belum konsisten |
| 0 | Kontrol belum tersedia atau tidak dapat dibuktikan |

## Matriks Prioritas Temuan
| Kondisi | Contoh | Prioritas |
|---|---|---|
| Kontrol tidak ada dan dampaknya tinggi | Tidak ada alert untuk error rate checkout | Sangat tinggi |
| Kontrol ada tetapi bukti lemah | Runbook ada, tetapi tidak pernah diuji | Tinggi |
| Kontrol ada namun belum konsisten | SLO hanya untuk sebagian layanan | Sedang |
| Kontrol matang dan bukti lengkap | Burn-rate alert dan freeze policy aktif | Rendah untuk perbaikan segera |

## Pertanyaan Audit yang Perlu Dijawab
- Kontrol mana yang langsung memengaruhi pengalaman pengguna?
- Kontrol mana yang paling murah untuk diperbaiki tetapi memberi dampak besar?
- Temuan mana yang berasal dari proses, mana dari arsitektur, dan mana dari budaya kerja?

## Artefak yang Relevan
- `samples/sample-log-app.txt`
- `samples/sample-log-nginx.txt`
- `samples/sample-metrics.csv`
- `samples/sample-prometheus-alerts.yml`
- `templates/template-alert-review.md`
- `templates/template-sli-slo-basic.md`
