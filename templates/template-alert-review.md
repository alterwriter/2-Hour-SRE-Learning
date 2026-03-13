# Template Alert Review

> Template ini dipakai untuk menilai apakah sebuah alert benar-benar dapat ditindaklanjuti dan relevan terhadap SLO.

## Identitas Alert
- **Nama alert**:
- **Layanan**:
- **Severity**:
- **Owner / on-call**:
- **Sumber rule**:
- **Runbook URL**:

## Evaluasi Kualitas Alert
| Kriteria | Pertanyaan audit | Hasil |
|---|---|---|
| Kejelasan | Apakah nama alert menjelaskan gejala layanan? | Ya / Tidak / Parsial |
| Relevansi | Apakah alert terkait target reliabilitas atau risiko nyata? | Ya / Tidak / Parsial |
| Actionability | Apakah operator tahu langkah pertama dalam 5 menit pertama? | Ya / Tidak / Parsial |
| Konteks | Apakah label/annotation mencantumkan service, severity, dan runbook? | Ya / Tidak / Parsial |
| Noise | Apakah alert sering false positive? | Rendah / Sedang / Tinggi |
| Coverage | Apakah alert mengawasi kegagalan penting? | Ya / Tidak / Parsial |

## Detail Teknis
```yaml
# Tempel rule alert di sini
```

## Temuan Review
- **Sinyal utama**:
- **Kelemahan saat ini**:
- **Potensi false positive**:
- **Potensi blind spot**:

## Rekomendasi
| No | Rekomendasi | Dampak | Prioritas |
|---|---|---|---|
| 1 | | | Tinggi / Sedang / Rendah |
| 2 | | | Tinggi / Sedang / Rendah |
