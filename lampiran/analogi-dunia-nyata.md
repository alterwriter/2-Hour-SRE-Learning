# Lampiran — Analogi Dunia Nyata untuk Memahami SRE

Lampiran ini membantu menerjemahkan istilah teknis SRE ke contoh sehari-hari agar konsep lebih cepat dipahami.

## 1. Availability
**Analogi:** kios pasar yang benar-benar buka saat pembeli datang.

Sebuah layanan bisa dianggap tersedia bila pengguna bisa mengakses fungsi utamanya saat dibutuhkan. Jika kios tutup pada jam sibuk, pembeli tetap menganggap layanannya buruk meskipun bangunannya masih berdiri.

## 2. Latency
**Analogi:** lama antre di kasir.

Toko bisa tetap buka, tetapi bila pembeli menunggu terlalu lama, pengalaman tetap buruk. Dalam sistem, response time yang lama sering terasa “rusak” meskipun secara teknis layanan masih merespons.

## 3. Error Rate
**Analogi:** transaksi gagal atau salah hitung.

Pembeli sudah memilih barang, tetapi pembayaran gagal atau struk salah. Dalam sistem, ini seperti HTTP 5xx, timeout, atau proses bisnis yang tidak selesai.

## 4. Saturation
**Analogi:** kapasitas dapur, kasir, atau gudang mencapai batas.

Masalah tidak selalu muncul karena sistem mati. Sering kali sistem mulai sempit: CPU penuh, connection pool habis, queue menumpuk, atau dependency terlalu lambat.

## 5. SLI
**Analogi:** alat ukur mutu layanan.

Seperti menghitung berapa pelanggan yang terlayani sukses, berapa lama rata-rata menunggu, dan berapa banyak transaksi gagal.

## 6. SLO
**Analogi:** target mutu internal.

Misalnya restoran menetapkan bahwa 95% pesanan harus sampai ke meja dalam waktu kurang dari 15 menit.

## 7. SLA
**Analogi:** janji resmi ke pelanggan.

Jika target layanan gagal, ada konsekuensi atau kompensasi. Karena itu SLA biasanya lebih formal daripada SLO.

## 8. Error Budget
**Analogi:** jatah toleransi keterlambatan atau kegagalan.

Jika sebuah layanan menetapkan target sangat tinggi, ruang untuk gagal menjadi sangat kecil. Ketika jatah itu hampir habis, organisasi harus lebih berhati-hati terhadap perubahan.

## 9. Observability
**Analogi:** gabungan CCTV, catatan kasir, nomor antrean, dan buku kejadian.

Tidak ada satu alat tunggal yang cukup. Yang dibutuhkan adalah gabungan sinyal agar masalah dapat dijelaskan, bukan hanya terlihat samar.

## 10. Alert
**Analogi:** alarm yang harus memicu tindakan nyata.

Alarm yang terlalu sering salah akan diabaikan. Alarm yang terlambat juga tidak berguna. Alert yang baik harus jelas, relevan, dan dapat langsung ditindaklanjuti.

## 11. Runbook
**Analogi:** prosedur darurat di gedung atau rumah sakit.

Ketika kondisi tertentu terjadi, langkah awal harus jelas: apa yang dicek, siapa yang dihubungi, dan kapan kondisi dinyatakan pulih.

## 12. Postmortem
**Analogi:** investigasi kecelakaan yang fokus pada sistem.

Tujuannya bukan menyalahkan orang terakhir yang terlihat, tetapi memahami mengapa sistem memungkinkan kegagalan itu terjadi dan apa yang perlu diperbaiki.

## 13. DevSecOps dalam konteks SRE
**Analogi:** pemeriksaan kualitas bahan baku dan kendaraan sebelum operasi.

Jika bahan baku buruk atau kendaraan tidak aman, operasi harian akan terganggu. Begitu pula pada perangkat lunak: keamanan perubahan adalah bagian dari reliabilitas.
