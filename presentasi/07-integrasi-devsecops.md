# 7 — Integrasi DevSecOps

- Bab sebelumnya: [06 — Audit SRE Praktis](./06-audit-sre-praktis.md)
- Bab berikutnya: [08 — Penugasan Peserta](./08-penugasan-peserta.md)

---

## Mengapa DevSecOps Masuk ke Workshop SRE
Reliabilitas tidak dapat dipisahkan dari keamanan perubahan. Perubahan yang lolos tanpa pemeriksaan dependency, container, atau konfigurasi infrastruktur dapat menambah kegagalan operasional, memperlebar blast radius, dan memperpanjang waktu pemulihan.

## Analogi Dunia Nyata
### Analogi 1 — Rantai pasok bahan makanan
Sebuah restoran bukan hanya perlu dapur yang cepat, tetapi juga bahan baku yang aman dan berkualitas. Jika bahan baku tercemar, operasi restoran tetap akan gagal meskipun kokinya andal. Dalam dunia perangkat lunak:
- **SCA** memeriksa komponen yang ikut dibawa,
- **SAST** menilai apa yang ditulis sendiri,
- **IaC scanning** memeriksa rancangan lingkungan tempat sistem dijalankan.

### Analogi 2 — Pemeriksaan kendaraan sebelum perjalanan jauh
Kendaraan mungkin masih bisa dinyalakan, tetapi rem yang aus, ban tipis, atau lampu mati adalah risiko perubahan yang seharusnya diketahui sebelum jalan. Pipeline security berfungsi seperti pemeriksaan prajalanan: semakin awal ditemukan, semakin murah dan aman diperbaiki.

## Fokus Praktik Peserta di GitLab
| Area | Aktivitas | Output minimum |
|---|---|---|
| SAST | Mengaktifkan template SAST | Pipeline menampilkan finding atau status clean |
| SCA / Dependency Scanning | Mengaktifkan scanning dependency | Daftar dependency bermasalah atau bukti aman |
| IaC Scanning | Menjalankan scan terhadap Terraform dan Kubernetes | Temuan konfigurasi atau bukti nihil temuan |
| Review Hasil | Mengklasifikasikan temuan | Temuan kritis, tinggi, sedang, rendah |
| Hardening | Menyusun rekomendasi | Daftar perbaikan dan prioritas |

## Sampel Konfigurasi GitLab
File sumber: `samples/sample-gitlab-ci-security.yml`

```yaml
include:
  - template: Security/SAST.gitlab-ci.yml
  - template: Security/Dependency-Scanning.gitlab-ci.yml
  - template: Jobs/Container-Scanning.gitlab-ci.yml

iac_scan:
  stage: security
  image:
    name: bridgecrew/checkov:latest
    entrypoint: [""]
  script:
    - checkov -d infrastructure --framework terraform,kubernetes --compact
```

## Kaitan Langsung ke Reliabilitas
| Kontrol DevSecOps | Risiko bila lemah | Dampak ke reliabilitas |
|---|---|---|
| SAST | Bug atau pola kode berisiko masuk ke main branch | Gangguan logika, error runtime, retry storm |
| SCA | Dependency rentan atau usang | Crash, incompatibility, exploit, downtime pemulihan |
| IaC scanning | Security group, bucket, atau manifest salah konfigurasi | Eksposur layanan, kapasitas buruk, rollout gagal |
| Container scanning | Image membawa paket bermasalah | Risiko patch darurat, beban operasi tambahan |

## Sampel Konfigurasi IaC
File sumber: `samples/sample-iac-main.tf` dan `samples/sample-k8s-deployment.yaml`

### Contoh hal yang dapat dinilai
- Apakah public access block aktif pada bucket?
- Apakah ingress dan egress terlalu longgar?
- Apakah readiness dan liveness probe tersedia?
- Apakah resource request dan limit cukup realistis?
- Apakah temuan keamanan dapat dihubungkan ke potensi dampak reliabilitas?

## Pertanyaan Reflektif
- Berapa banyak insiden yang sebenarnya dipicu oleh perubahan yang kurang aman?
- Apakah hasil scan hanya berhenti sebagai laporan, atau benar-benar memengaruhi keputusan rilis?
- Jika sebuah misconfiguration direplikasi otomatis ke banyak environment, apakah organisasi sedang mempercepat delivery atau mempercepat masalah?
