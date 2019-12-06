temp_index=1;
index_usr=1;
loop=1;
loop1=1;
loop_main=1;
loop_menu=1;
check=0;
max=0;
declare -a usr;
declare -a pass;

daftar (){
clear
echo "---------------- DAFTAR ----------------"
let loop=1;												#inisialisasi loop
while [[ $loop -eq 1 ]]; do
  read -p "Masukkan username 	: " temp_usr;			#input username
  let max=$index_usr-1;
  for (( i = 0; i < $index_usr; i++ )); do
    if [[ $temp_usr == ${usr[$i]} ]]; then			#cek apabila username telah terpakai atau belum
      echo "Username sudah digunakan!";
      read
      clear
    elif [[ $i == $max ]]; then	read clear
      #statements
      let loop=0;
      break;
    fi
  done
done
let loop=1;												#inisialisasi loop
while [[ $loop -eq 1 ]]; dotemp_index=1;
  read -sp "Masukkan Password	: " temp_pass1;			#input Password
  let check=0;										#inisialisiasi flag untuk cek password
  let max=$index_usr-1;
  for (( i = 0; i < $index_usr; i++ )); do
    if [[ ${pass[$i]} == $temp_pass1 ]]; then
      echo "password sudah digunakan";
      break;
    elif [[ $i == $max ]]; then
      echo "Sudah Oke!!";
      let check=1;
      break;
    fi
  done											#spacing
  read -sp "Masukkan kembali Password : " temp_pass2;
  if [[ $temp_pass1 == $temp_pass2 ]]; then
    if [[ $check == 0 ]]; then
      echo "Password sudah terdaftar oleh username lain";
    else
      echo "Okeysip"index=0	read clear
loop=1
      usr[$index_usr]=$temp_usr;
      pass[$index_usr]=$temp_pass1;
      change_control $index_usr
      let index_usr=$index_usr+1;
      let loop=0;
    fi

  else
    echo "Password yang anda masukkan tidak sesuai"
  fi

done
}

login(){
	let loop=1;

	while [[ $loop == 1 ]]; do
		clear
		echo "-----------Login--------------"
		read -p "Masukkan username 	: " temp_usr;
		read -sp "Password 		: " temp_pass;
		let max=$index_usr-1;	read clear
		echo "$max";
		for (( i = 0; i < $index_usr ; i++ )); do
			if [[ $temp_usr == ${usr[$i]} ]]; then
				if [[ $temp_pass == ${pass[$i]} ]]; then
					clear
					echo "Login Berhasil !!";
					echo "Selamat datang ${usr[$i]}!!";
					let temp_index=$i;
					let loop=0;
					break;
				elif [[ $i == $max ]]; then
					echo "Maaf Password salah!"
					echo "Silakan Login Kembali"
				fi
			elif [[ $i == $max ]]; then
				echo "Maaf username anda tidak terdaftar!!!"
				echo "LOGIN LAGI SANA!!"
			fi
		done
		index=0
loop=0

	done

}
daftar_pembeli(){
	clear
echo -n "nama  : ";
read nama[$index];
echo -n "alamat  : ";
read alamat[$index];
echo -n "nomor hp : ";
read hp[$index];
let index=$index+1
}
view_pembeli(){
	for ((i = 0;i < index;i++)); do
	echo "nama : ${nama[$i]}"
	echo "alamat : ${alamat[$i]}"
	echo "nomor hp : ${hp[$i]}"
	echo "===================="
	done
	read clear
clear
}

 beli (){
	 clear
 	echo "Masukkan Merk motor anda!!"
 	echo "1.Yamaha"
 	echo "2.Honda"
 	echo "3.Suzuki"
 	read merk;
 	case $merk in
 		"1" )
 		echo "Masukkan tipe motor Yamaha anda!!!"
 		echo "1.Matic"
 		echo "2.Bebek"
 		read tipe;pembayaran
 		case $tipe in
 			"1" ) clear
 			 		echo "Motor Yamaha Tipe Matic"
           echo "1.spakbor belakang"
           echo "harga : Rp50.000"
           echo "2.lampu depan"
           echo "harga : Rp125.000"
           echo "3. paket bore up 150cc"
           echo "harga : Rp450.000"
           echo "4.knalpot ori mio fino"
           echo "harga : Rp120.000"
					 echo "Masukkan barang yang ingin anda beli!"
					 read beli;
					 case $beli in
					 	"1" ) clear
						echo "berhasil membeli spakbor belakang seharga 50.000 rupiah"
						  let harga=harga+50000;
					 		;;
							"2" ) clear
							echo "Berhasil membeli lampu depan seharga 125.000 rupiah"
							let harga=harga+125000;
							;;
							"3" ) clear
							echo "Berhasil membeli paket bore up 150cc seharga 450.000 rupiah"
							let harga=harga+450000;
							;;
							"4" ) clear
							echo "Berhasil membeli paket Knalpot ori mio fino seharga 120.000 rupiah"
							let harga=harga+120000;
							;;
					 esac
 				;;
 			"2" ) clear
 					echo "Motor Yamaha Tipe Bebek"
           echo "21.batok depan"
           echo "harga : Rp40.000"
           echo "2.lampu sein depan belakang"
           echo "harga : Rp130.000"
echo "Masukkan barang yang ingin anda beli!"
					 read beli;
					 case $beli in
					 	"1" ) clear
						echo "Berhasil membeli batok depan seharga 40.000 rupiah"
						let harga=harga+40000;
					 		;;
						"2" ) clear
						echo "Berhasil membeli lampu sein depan belakang seharga 130.000 rupiah"
						let harga=harga+130000;
						;;
					 esac
 					;;
				esac
				;;


 		"2" ) clear
 				echo "Masukkan tipe motor Honda anda!!!"
 				echo "1.Sport"
 		read tipe;
 		case $tipe in
 			"1" )	clear
 						echo " Motor Honda "
             echo "==============="
             echo "=Sport Honda="
             echo "1.spakbor depan"
             echo "harga : Rp30.000"
             echo "2.velg ring 17 lebar 5inc"
             echo "harga : Rp800.000"
 					   echo "3.kaliper brembo 4 piston"
             echo "harga 900.000"
						 echo "Masukkan barang yang ingin anda beli!"
						 read beli;
						 case $beli in
						 	"1" ) clear
							echo "Berhasil membeli spakbor depan seharga 30.000 rupiah"
							let harga=harga+30000;
						 		;;
							"2" ) clear
							echo "Berhasil membeli velg ring 17 lebar 5inc seharga 800.000 rupiah"
							let harga=harga+800000;
								;;
							"3" ) clear
							echo "Berhasil membeli kaliper brembo 4 piston seharga 900.000 rupiah"
							let harga=harga+900000;
								;;
						 esac
 				;;
 		esac
 		;;
 		"3" ) clear
 		echo "Masukkan tipe motor Suzuki anda!!!"
 		echo "1.Matic"
 		read tipe;
 		case $tipe in
 			"1" )	clear
 						echo "==============="
             echo " Motor Suzuki "
             echo "==============="
             echo "Matic Suzuki"
             echo "1.velg ori bawaan"
             echo "harga : 400.000"
             echo "2.stoplamp belakang"
             echo "harga 150.000"
             echo "3.firing depan"
             echo "harga 200.000"
             echo "4.paket bore up 155cc";
             echo "harga 600.000"
             echo "5.lampu sein LED"
             echo "harga 300.000"
						 echo "Masukkan barang yang ingin anda beli!!"
						 read beli;
						 case $beli in
						 "1" ) clear
						 echo "Berhasil membeli velg ori bawaan seharga 400.000 rupiah"
						 let harga=harga+400000;
							 ;;
						 "2" ) clear
						 echo "Berhasil membeli stoplamp belakang seharga 150.000 rupiah"
						 let harga=harga+150000;
							 ;;
						"3" ) clear
						 echo "Berhasil membeli firing depan seharga 200.000 rupiah"
						 let harga=harga+200000;
								 ;;
						 "4" ) clear
		 				 echo "Berhasil membeli paket bore up seharga 600.000 rupiah"
		 				 let harga=harga+600000;
								 ;;
						 "5" ) clear
		 				 echo "Berhasil membeli lampu sein LED seharga 300.000 rupiah"
		 				 let harga=harga+300000;
								 ;;
							 esac
					;;
				esac

			;;
		esac




}

bayar_barang (){
clear
	echo "total harga yang harus anda bayarkan adalah sebesar :"
	echo $harga
}

menu(){
	loop_menu=1
	while [[ $loop_menu == 1 ]]; do
		echo ""
		echo ""
		echo "------------------------------"
    echo "Sistem Pendaftaran Mahasiswa"
    echo "1. Daftarkan pembeli "
    echo "2. Lihat pembeli terdaftar"
		echo "3. Beli barang"
		echo "4. Pembayaran"
		echo "5. Keluar"
    read temp_case;
		case $temp_case in
			 "1" )daftar_pembeli
				;;
				"2" )view_pembeli
				;;
				"3" )beli
				;;
				"4" ) bayar_barang
				;;
				"5" )echo "apakah anda yakin ingin keluar?"
				echo "1.ya"
				echo "2.tidak"
				read keluar;
				if [[ keluar -eq 1 ]]; then
					loop_menu=0
				fi
				;;
		esac
	done
}

let loop_main=1;
while [[ $loop_main == 1 ]]; do
	clear
	read -p "apakah anda adalah user terdaftar ? (1. Yes/ 2. No) Press 3 to quit" prep;
  echo ""
	if [[ $prep == 1 ]]; then
		login
		menu
	elif [[ $prep == 2 ]]; then
		daftar
		login
		menu
	elif [[ $prep == 3 ]]; then
		let loop_main=0;
	fi

done
