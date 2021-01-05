-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2021 pada 06.19
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `close_kasir`
--

CREATE TABLE `close_kasir` (
  `id_close` varchar(20) NOT NULL,
  `id_kasir` varchar(20) NOT NULL,
  `id_open` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `coa`
--

CREATE TABLE `coa` (
  `no_coa` varchar(50) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `nama_coa` varchar(100) NOT NULL,
  `header_coa` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_diskon_produk`
--

CREATE TABLE `detail_diskon_produk` (
  `id_diskon` varchar(20) NOT NULL,
  `id_produk` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `id_pembelian` varchar(20) NOT NULL,
  `id_produk` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `id_produk` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_retur_pembelian`
--

CREATE TABLE `detail_retur_pembelian` (
  `id_retur_pembelian` varchar(20) NOT NULL,
  `id_produk` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_retur_penjualan`
--

CREATE TABLE `detail_retur_penjualan` (
  `id_retur_pembelian` varchar(20) NOT NULL,
  `id_produk` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_stok_produk`
--

CREATE TABLE `detail_stok_produk` (
  `id_stok` varchar(20) NOT NULL,
  `id_produk` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `jumlah_satuan` int(11) NOT NULL,
  `jumlah_detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_supplier`
--

CREATE TABLE `detail_supplier` (
  `id_supplier` varchar(20) NOT NULL,
  `id_produk` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `harga_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskon_produk`
--

CREATE TABLE `diskon_produk` (
  `id_diskon` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` varchar(20) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal`
--

CREATE TABLE `jurnal` (
  `id_transaksi` varchar(20) NOT NULL,
  `no_coa` varchar(50) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `posisi` varchar(1) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_temp`
--

CREATE TABLE `jurnal_temp` (
  `id_transaksi` varchar(20) NOT NULL,
  `no_coa` varchar(50) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `posisi` varchar(1) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `status_kasir` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id_kategori` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` varchar(20) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `open_kasir`
--

CREATE TABLE `open_kasir` (
  `id_open` varchar(20) NOT NULL,
  `id_kasir` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(20) NOT NULL,
  `id_jabatan` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` varchar(20) NOT NULL,
  `id_supplier` varchar(20) NOT NULL,
  `id_stok` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `periode` varchar(6) NOT NULL,
  `nominal` int(11) NOT NULL,
  `potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `periode` varchar(6) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `periode` varchar(6) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan_penjualan` varchar(10) NOT NULL,
  `satuan_pembelian` varchar(10) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `id_subkategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur_pembelian`
--

CREATE TABLE `retur_pembelian` (
  `id_retur_pembelian` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` int(11) NOT NULL,
  `id_supplier` varchar(20) NOT NULL,
  `id_pembelian` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur_penjualan`
--

CREATE TABLE `retur_penjualan` (
  `id_retur_penjualan` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` int(11) NOT NULL,
  `id_penjualan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `saldo`
--

CREATE TABLE `saldo` (
  `id_saldo` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_produk`
--

CREATE TABLE `stok_produk` (
  `id_stok` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkategori_produk`
--

CREATE TABLE `subkategori_produk` (
  `id_subkategori` varchar(20) NOT NULL,
  `nama_subkategori` varchar(100) NOT NULL,
  `id_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(20) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `telp_supplier` varchar(15) NOT NULL,
  `foto` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(20) NOT NULL,
  `periode` varchar(6) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `nominal` int(11) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reading` int(1) NOT NULL,
  `creating` int(1) NOT NULL,
  `updating` int(1) NOT NULL,
  `deleting` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `close_kasir`
--
ALTER TABLE `close_kasir`
  ADD PRIMARY KEY (`id_close`),
  ADD KEY `fk_id_kasir_close` (`id_kasir`),
  ADD KEY `fk_id_open_close` (`id_open`),
  ADD KEY `fk_id_lokasi_close` (`id_lokasi`),
  ADD KEY `id_close` (`id_close`);

--
-- Indeks untuk tabel `coa`
--
ALTER TABLE `coa`
  ADD PRIMARY KEY (`no_coa`),
  ADD KEY `no_coa` (`no_coa`),
  ADD KEY `fk_id_lokasi_coa` (`id_lokasi`);

--
-- Indeks untuk tabel `detail_diskon_produk`
--
ALTER TABLE `detail_diskon_produk`
  ADD KEY `fk_id_diskon_detail_diskon_produk` (`id_diskon`),
  ADD KEY `fk_id_produk_detail_diskon_produk` (`id_produk`),
  ADD KEY `fk_id_lokasi_detail_diskon_produk` (`id_lokasi`);

--
-- Indeks untuk tabel `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD KEY `fk_id_transaksi_detail_pembelian` (`id_pembelian`),
  ADD KEY `fk_id_produk_detail_pembelian` (`id_produk`),
  ADD KEY `fk_id_lokasi_detail_pembelian` (`id_lokasi`);

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD KEY `fk_id_penjualan_detail_penjualan` (`id_penjualan`),
  ADD KEY `fk_id_produk_detail_penjualan` (`id_produk`),
  ADD KEY `fk_id_lokasi_detail_penjualan` (`id_lokasi`);

--
-- Indeks untuk tabel `detail_retur_pembelian`
--
ALTER TABLE `detail_retur_pembelian`
  ADD KEY `fk_id_retur_pembelian_detail` (`id_retur_pembelian`),
  ADD KEY `fk_id_produk_retur_pembelian_detail` (`id_produk`),
  ADD KEY `fk_id_lokasi_detail_retur_pembelian` (`id_lokasi`);

--
-- Indeks untuk tabel `detail_retur_penjualan`
--
ALTER TABLE `detail_retur_penjualan`
  ADD KEY `fk_id_retur_penjualan_detail` (`id_retur_pembelian`),
  ADD KEY `fk_id_produk_retur_penjualan_detail` (`id_produk`),
  ADD KEY `fk_id_lokasi_retur_penjualan_detail` (`id_lokasi`);

--
-- Indeks untuk tabel `detail_stok_produk`
--
ALTER TABLE `detail_stok_produk`
  ADD KEY `fk_id_stok_detail` (`id_stok`),
  ADD KEY `fk_id_produk_detail` (`id_produk`),
  ADD KEY `fk_id_lokasi_detail` (`id_lokasi`);

--
-- Indeks untuk tabel `detail_supplier`
--
ALTER TABLE `detail_supplier`
  ADD KEY `fk_id_supplier_detail_supplier` (`id_supplier`),
  ADD KEY `fk_id_produk_detail_supplier` (`id_produk`),
  ADD KEY `fk_id_lokasi_detail_supplier` (`id_lokasi`);

--
-- Indeks untuk tabel `diskon_produk`
--
ALTER TABLE `diskon_produk`
  ADD PRIMARY KEY (`id_diskon`),
  ADD KEY `id_diskon` (`id_diskon`),
  ADD KEY `fk_id_lokasi_diskon_produk` (`id_lokasi`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`),
  ADD KEY `fk_id_lokasi_jabatan` (`id_lokasi`);

--
-- Indeks untuk tabel `jurnal`
--
ALTER TABLE `jurnal`
  ADD KEY `fk_id_transaksi_jurnal` (`id_transaksi`),
  ADD KEY `fk_no_coa` (`no_coa`),
  ADD KEY `fk_id_lokasi_jurnal` (`id_lokasi`);

--
-- Indeks untuk tabel `jurnal_temp`
--
ALTER TABLE `jurnal_temp`
  ADD KEY `fk_id_transaksi_jurnal_tem` (`id_transaksi`),
  ADD KEY `fk_no_coa_jurnal_temp` (`no_coa`),
  ADD KEY `fk_id_lokasi_jurnal_tem` (`id_lokasi`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`),
  ADD KEY `fk_id_user_kasir` (`id_user`),
  ADD KEY `id_kasir` (`id_kasir`);

--
-- Indeks untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `fk_id_lokasi_kategori_produk` (`id_lokasi`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indeks untuk tabel `open_kasir`
--
ALTER TABLE `open_kasir`
  ADD PRIMARY KEY (`id_open`),
  ADD KEY `fk_id_kasir_open` (`id_kasir`),
  ADD KEY `id_open` (`id_open`),
  ADD KEY `fk_id_lokasi_open` (`id_lokasi`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `fk_id_jabatan_pegawai` (`id_jabatan`),
  ADD KEY `fk_id_lokasi_pegawai` (`id_lokasi`),
  ADD KEY `fk_id_user_pegawai` (`id_user`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `fk_id_supplier_pembelian` (`id_supplier`),
  ADD KEY `id_pembelian` (`id_pembelian`),
  ADD KEY `fk_id_stok_pembelian` (`id_stok`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_penjualan` (`id_penjualan`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_pesanan` (`id_pesanan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `fk_id_subkategori_produk` (`id_subkategori`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `retur_pembelian`
--
ALTER TABLE `retur_pembelian`
  ADD PRIMARY KEY (`id_retur_pembelian`),
  ADD KEY `fk_id_supplier_retur_beli` (`id_supplier`),
  ADD KEY `fk_id_pembelian_retur_beli` (`id_pembelian`),
  ADD KEY `id_retur_pembelian` (`id_retur_pembelian`);

--
-- Indeks untuk tabel `retur_penjualan`
--
ALTER TABLE `retur_penjualan`
  ADD PRIMARY KEY (`id_retur_penjualan`),
  ADD KEY `fk_id_penjualan_retur_jual` (`id_penjualan`),
  ADD KEY `id_retur_penjualan` (`id_retur_penjualan`);

--
-- Indeks untuk tabel `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id_saldo`),
  ADD KEY `id_saldo` (`id_saldo`);

--
-- Indeks untuk tabel `stok_produk`
--
ALTER TABLE `stok_produk`
  ADD PRIMARY KEY (`id_stok`),
  ADD KEY `id_stok` (`id_stok`);

--
-- Indeks untuk tabel `subkategori_produk`
--
ALTER TABLE `subkategori_produk`
  ADD PRIMARY KEY (`id_subkategori`),
  ADD KEY `fk_id_kategori_subkategori_produk` (`id_kategori`),
  ADD KEY `id_subkategori` (`id_subkategori`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `fk_id_lokasi_user` (`id_lokasi`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `close_kasir`
--
ALTER TABLE `close_kasir`
  ADD CONSTRAINT `fk_id_close` FOREIGN KEY (`id_close`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_kasir_close` FOREIGN KEY (`id_kasir`) REFERENCES `kasir` (`id_kasir`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_lokasi_close` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_open_close` FOREIGN KEY (`id_open`) REFERENCES `open_kasir` (`id_open`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `coa`
--
ALTER TABLE `coa`
  ADD CONSTRAINT `fk_id_lokasi_coa` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_diskon_produk`
--
ALTER TABLE `detail_diskon_produk`
  ADD CONSTRAINT `fk_id_diskon_detail_diskon_produk` FOREIGN KEY (`id_diskon`) REFERENCES `diskon_produk` (`id_diskon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_lokasi_detail_diskon_produk` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_produk_detail_diskon_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD CONSTRAINT `fk_id_lokasi_detail_pembelian` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_produk_detail_pembelian` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_transaksi_detail_pembelian` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelian` (`id_pembelian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `fk_id_lokasi_detail_penjualan` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_penjualan_detail_penjualan` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_produk_detail_penjualan` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_retur_pembelian`
--
ALTER TABLE `detail_retur_pembelian`
  ADD CONSTRAINT `fk_id_lokasi_detail_retur_pembelian` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_produk_retur_pembelian_detail` FOREIGN KEY (`id_produk`) REFERENCES `retur_pembelian` (`id_retur_pembelian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_retur_pembelian_detail` FOREIGN KEY (`id_retur_pembelian`) REFERENCES `retur_pembelian` (`id_retur_pembelian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_retur_penjualan`
--
ALTER TABLE `detail_retur_penjualan`
  ADD CONSTRAINT `fk_id_lokasi_retur_penjualan_detail` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_produk_retur_penjualan_detail` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_retur_penjualan_detail` FOREIGN KEY (`id_retur_pembelian`) REFERENCES `retur_penjualan` (`id_retur_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_stok_produk`
--
ALTER TABLE `detail_stok_produk`
  ADD CONSTRAINT `fk_id_lokasi_detail` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_produk_detail` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_stok_detail` FOREIGN KEY (`id_stok`) REFERENCES `stok_produk` (`id_stok`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_supplier`
--
ALTER TABLE `detail_supplier`
  ADD CONSTRAINT `fk_id_lokasi_detail_supplier` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_produk_detail_supplier` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_supplier_detail_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `diskon_produk`
--
ALTER TABLE `diskon_produk`
  ADD CONSTRAINT `fk_id_lokasi_diskon_produk` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD CONSTRAINT `fk_id_lokasi_jabatan` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jurnal`
--
ALTER TABLE `jurnal`
  ADD CONSTRAINT `fk_id_lokasi_jurnal` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_transaksi_jurnal` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_no_coa` FOREIGN KEY (`no_coa`) REFERENCES `coa` (`no_coa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jurnal_temp`
--
ALTER TABLE `jurnal_temp`
  ADD CONSTRAINT `fk_id_lokasi_jurnal_tem` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_transaksi_jurnal_tem` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_no_coa_jurnal_temp` FOREIGN KEY (`no_coa`) REFERENCES `coa` (`no_coa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD CONSTRAINT `fk_id_lokasi_kasir` FOREIGN KEY (`id_kasir`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_user_kasir` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD CONSTRAINT `fk_id_lokasi_kategori_produk` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `open_kasir`
--
ALTER TABLE `open_kasir`
  ADD CONSTRAINT `fk_id_kasir_open` FOREIGN KEY (`id_kasir`) REFERENCES `kasir` (`id_kasir`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_lokasi_open` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `fk_id_jabatan_pegawai` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_lokasi_pegawai` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_user_pegawai` FOREIGN KEY (`id_user`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `fk_id_pembelian` FOREIGN KEY (`id_pembelian`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_stok_pembelian` FOREIGN KEY (`id_stok`) REFERENCES `stok_produk` (`id_stok`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_supplier_pembelian` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_id_subkategori_produk` FOREIGN KEY (`id_subkategori`) REFERENCES `subkategori_produk` (`id_subkategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `retur_pembelian`
--
ALTER TABLE `retur_pembelian`
  ADD CONSTRAINT `fk_id_pembelian_retur_beli` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelian` (`id_pembelian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_supplier_retur_beli` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_transaksi_retur_beli` FOREIGN KEY (`id_retur_pembelian`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `retur_penjualan`
--
ALTER TABLE `retur_penjualan`
  ADD CONSTRAINT `fk_id_penjualan_retur_jual` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_transaksi_retur_jual` FOREIGN KEY (`id_retur_penjualan`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `saldo`
--
ALTER TABLE `saldo`
  ADD CONSTRAINT `fk_id_transaksi` FOREIGN KEY (`id_saldo`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subkategori_produk`
--
ALTER TABLE `subkategori_produk`
  ADD CONSTRAINT `fk_id_kategori_subkategori_produk` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_produk` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_id_lokasi_user` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
