Program ABC;

//uses //uFileLoader, cari, uDate, sysutilsmanual;
uses uFileLoader, uHilang;

var
	arrBuku : array[1..1000] of Buku;
	arrUser : array[1..1000] of User;
	arrHistoryPeminjaman : array[1..1000] of HistoryPeminjaman;
	arrHistoryPengembalian : array[1..1000] of HistoryPengembalian;
	arrLaporanHilang : array[1..1000] of LaporanHilang;
	k : integer;
	//a,d : Date;
	b,c, bukufilename : string;

begin
	write('Masukkan nama file buku: ');
	readln(bukufilename);
	writeln('Data Buku');
	LoadBuku(arrBuku, bukufilename);
	PrintBuku(arrBuku);
{
	writeln('');
	writeln('Data User');
	LoadUser(arrUser);
	PrintUser(arrUser);
	writeln('');
	writeln('Data History Peminjaman');
	LoadHistoryPeminjaman(arrHistoryPeminjaman);
	PrintHistoryPeminjaman(arrHistoryPeminjaman);
	writeln('');
	writeln('Data History Pengembalian');
	LoadHistoryPengembalian(arrHistoryPengembalian);
	PrintHistoryPengembalian(arrHistoryPengembalian);
	writeln('');
}
	writeln('Data Laporan Kehilangan');
	LoadLaporanHilang(arrLaporanHilang);
	PrintLaporanHilang(arrLaporanHilang);
	PrintLaporanWithJudul(arrLaporanHilang)
	writeln('');
	{
	for k := 1 to (uFileLoader.GetSizeBuku()) do
		begin
			write(k);
			write(' | ');
			write(arrBuku[k].ID_Buku);
			write(' | ');
			write(arrBuku[k].Judul_Buku);
			write(' | ');
			write(arrBuku[k].Author);
			write(' | ');
			write(arrBuku[k].Jumlah_Buku);
			write(' | ');
			write(arrBuku[k].Tahun_Penerbit);
			write(' | ');
			write(arrBuku[k].Kategori);
			writeln();
		end;
	LoadUser(arrUser);
	PrintUser(arrUser);
	for k := 1 to (GetSizeUser()) do
		begin
			write(k);
			write(' | ');
			write(arrUser[k].Nama);
			write(' | ');
			write(arrUser[k].Alamat);
			write(' | ');
			write(arrUser[k].Username);
			write(' | ');
			write(arrUser[k].Password);
			write(' | ');
			write(arrUser[k].Role);
			writeln();
		end;
	}
end.