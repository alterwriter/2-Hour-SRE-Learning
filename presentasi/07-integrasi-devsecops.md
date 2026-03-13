# 7 — Integrasi DevSecOps

> Bagian dari paket **2-Hour SRE**. Gunakan file ini untuk presentasi fokus per topik atau saat ingin berpindah chapter tanpa kehilangan struktur.

- Bab sebelumnya: [06](./06-audit-sre-praktis.md)
- Bab berikutnya: [08](./08-penugasan-peserta.md)

---

## Mengapa DevSecOps Masuk ke Workshop SRE
Reliabilitas tidak dapat dipisahkan dari keamanan perubahan. Pipeline yang tidak menguji dependensi, container, atau konfigurasi infrastruktur berisiko menambah kegagalan operasional.

## Fokus Praktik Peserta di GitLab
| Area | Aktivitas | Output minimum |
|---|---|---|
| SAST | Mengaktifkan template SAST | Pipeline berhasil menampilkan finding |
| SCA / Dependency Scanning | Mengaktifkan dependency scanning | Daftar dependency bermasalah atau status clean |
| IaC Scanning | Menjalankan scan terhadap Terraform/Kubernetes | Temuan konfigurasi atau bukti tidak ada temuan |
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

## Sampel Konfigurasi IaC
File sumber: `samples/sample-iac-main.tf` dan `samples/sample-k8s-deployment.yaml`

### Contoh hal yang dapat diminta ke peserta
- Memastikan public access block aktif pada bucket.
- Memeriksa ingress/egress yang terlalu longgar.
- Memastikan readiness dan liveness probe tersedia.
- Mengaitkan temuan keamanan terhadap potensi dampak reliabilitas.

---
