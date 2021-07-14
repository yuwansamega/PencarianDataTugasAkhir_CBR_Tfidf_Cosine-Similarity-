<?php
//=============== Kumpulan fungsi ===================
//fungsi untuk melakukan preprocessing terhadap teks
//tokenizing, stopword/stoplist, stemming, dan casefolding.
//--------------------------------------------------------------------------------------------
function preprocessing($teks) {
	//import php koneksi
	include "koneksi.php";
  	//Tokenizing (hilangkan tanda baca)
	$teks = str_replace("'", " ", $teks);
	$teks = str_replace("-", " ", $teks);
	$teks = str_replace(")", " ", $teks);
	$teks = str_replace("(", " ", $teks);
	$teks = str_replace("\"", " ", $teks);
	$teks = str_replace("/", " ", $teks);
	$teks = str_replace("=", " ", $teks);
	$teks = str_replace(".", " ", $teks);
	$teks = str_replace(",", " ", $teks);
	$teks = str_replace(":", " ", $teks);
	$teks = str_replace(";", " ", $teks);
	$teks = str_replace("!", " ", $teks);
	$teks = str_replace("?", " ", $teks);
	$teks = str_replace("%", " ", $teks);
	//remove numbers
	$teks = preg_replace('/0/', '', $teks ); // remove numbers
	$teks = preg_replace('/1/', '', $teks ); // remove numbers
	$teks = preg_replace('/2/', '', $teks ); // remove numbers
	$teks = preg_replace('/3/', '', $teks ); // remove numbers
	$teks = preg_replace('/4/', '', $teks ); // remove numbers
	$teks = preg_replace('/5/', '', $teks ); // remove numbers
	$teks = preg_replace('/6/', '', $teks ); // remove numbers
	$teks = preg_replace('/7/', '', $teks ); // remove numbers
	$teks = preg_replace('/8/', '', $teks ); // remove numbers
	$teks = preg_replace('/9/', '', $teks ); // remove numbers
	//casefolding
	$teks = strtolower(trim($teks));
	//stopword removal
	$bstoplist = array ("ada","adalah","adanya","adapun","agak","agaknya","agar","akan","akankah","akhir","akhiri","akhirnya","aku","akulah","amat","amatlah","anda",
						"andalah","antar","antara","antaranya","apa","apaan","apabila","apakah","apalagi","apatah","artinya","asal","asalkan","atas","atau","ataukah","ataupun",
						"awal","awalnya","bagai","bagaikan","bagaimana","bagaimanakah","bagaimanapun","bagi","bagian","bahkan","bahwa","bahwasanya","baik","bakal","bakalan","balik","banyak","bapak","baru","bawah","beberapa","begini","beginian","beginikah","beginilah","begitu","begitukah","begitulah","begitupun",
						"bekerja","belakang","belakangan","belum","belumlah","benar","benarkah","benarlah","berada","berakhir","berakhirlah","berakhirnya","berapa","berapakah","berapalah","berapapun","berarti","berawal","berbagai","berdatangan","beri","berikan","berikut","berikutnya",
						"berjumlah","berkali-kali","berkata","berkehendak","berkeinginan","berkenaan","berlainan","berlalu","berlangsung","berlebihan","bermacam","bermacam-macam","bermaksud","bermula","bersama","bersama-sama","bersiap","bersiap-siap","bertanya","bertanya-tanya","berturut",
						"berturut-turut","bertutur","berujar","berupa","besar","betul","betulkah","biasa","biasanya","bila","bilakah","bisa","bisakah","boleh","bolehkah","bolehlah","buat","bukan","bukankah","bukanlah","bukannya","bulan","bung",
						"cara","caranya","cukup","cukupkah","cukuplah","cuma","dahulu","dalam","dan","dapat","dari","daripada","datang","dekat","demi","demikian","demikianlah","dengan","depan","di","dia","diakhiri","diakhirinya","dialah","diantara","diantaranya","diberi","diberikan","diberikannya","dibuat","dibuatnya",
						"didapat","didatangkan","digunakan","diibaratkan","diibaratkannya","diingat","diingatkan","diinginkan","dijawab","dijelaskan","dijelaskannya","dikarenakan","dikatakan","dikatakannya","dikerjakan","diketahui","diketahuinya","dikira",
						"dilakukan","dilalui","dilihat","dimaksud","dimaksudkan","dimaksudkannya","dimaksudnya","diminta","dimintai","dimisalkan","dimulai","dimulailah","dimulainya","dimungkinkan","dini","dipastikan","diperbuat","diperbuatnya","dipergunakan","diperkirakan","diperlihatkan","diperlukan","diperlukannya",
						"dipersoalkan","dipertanyakan","dipunyai","diri","dirinya","disampaikan",'disebut',"disebutkan","disebutkannya",'disini',"disinilah","ditambahkan","ditandaskan","ditanya","ditanyai","ditanyakan","ditegaskan","ditujukan","ditunjuk","ditunjuki","ditunjukkan","ditunjukkannya","ditunjuknya","dituturkan",
						"dituturkannya","diucapkan","diucapkannya","diungkapkan","dong","dua","dulu","empat","enggak","enggaknya","entah","entahlah","guna","gunakan","hal","hampir","hanya","hanyalah","hari","harus","haruslah","harusnya","hendak","hendaklah","hendaknya","hingga",
						"ia","ialah","ibarat","ibaratkan","ibaratnya","ibu","ikut","ingat","ingat-ingat","ingin","inginkah","inginkan","ini","inikah","inilah","itu","itukah","itulah","jadi","jadilah","jadinya","jangan","jangankan","janganlah","jauh","jawab","jawaban","jawabnya","jelas","jelaskan",
						"jelaslah","jelasnya","jika",'jikalau',"juga","jumlah","jumlahnya","justru","kala","kalau","kalaulah","kalaupun","kalian","kami","kamilah","kamu","kamulah","kan","kapan","kapankah","kapanpun","karena","karenanya","kasus","kata","katakan","katakanlah","katanya","ke","keadaan","kebetulan",
						"kecil","kedua","keduanya","keinginan","kelamaan","kelihatan","kelihatannya","kelima","keluar","kembali","kemudian","kemungkinan","kemungkinannya","kenapa","kepada","kepadanya","kesampaian","keseluruhan","keseluruhannya","keterlaluan","ketika","khususnya","kini",
						"kinilah","kira","kira-kira","kiranya","kita","kitalah","kok","kurang","lagi","lagian","lah","lain","lainnya","lalu","lama","lamanya","lanjut","lanjutnya","lebih","lewat","lima","luar","macam","maka","makanya","makin","malah","malahan","mampu","mampukah","mana","manakala","manalagi",
						"masa","masalah","masalahnya","masih","masihkah","masing","masing-masing","mau","maupun","melainkan","melakukan","melalui","melihat","melihatnya","memang","memastikan","memberi","memberikan","membuat","memerlukan","memihak","meminta","memintakan","memisalkan","memperbuat",
						"mempergunakan","memperkirakan","memperlihatkan","mempersiapkan","mempersoalkan","mempertanyakan","mempunyai","memulai","memungkinkan","menaiki","menambahkan","menandaskan","menanti","menanti-nanti","menantikan","menanya","menanyai","menanyakan","mendapat","mendapatkan",
						"mendatang","mendatangi","mendatangkan","menegaskan","mengakhiri","mengapa","mengatakan","mengatakannya","mengenai","mengerjakan","mengetahui","menggunakan","menghendaki","mengibaratkan","mengibaratkannya","mengingat","mengingatkan","menginginkan","mengira","mengucapkan","mengucapkannya","mengungkapkan",
						"menjadi","menjawab","menjelaskan","menuju","menunjuk","menunjuki","menunjukkan",'menunjuknya',"menurut","menuturkan","menyampaikan","menyangkut","menyatakan","menyebutkan","menyeluruh","menyiapkan","merasa","mereka","merekalah","merupakan","meski","meskipun","meyakini","meyakinkan","minta","mirip","misal","misalkan",
						"misalnya","mula","mulai","mulailah","mulanya","mungkin","mungkinkah","nah","naik","namun","nanti","nantinya","nyaris","nyatanya","oleh","olehnya","pada","padahal","padanya","pak","paling","panjang","pantas","para","pasti","pastilah","penting","pentingnya","per","percuma","perlu","perlukah",
						"perlunya","pernah","persoalan","pertama","pertama-tama","pertanyaan","pertanyakan","pihak","pihaknya","pukul","pula","pun","punya","rasa","rasanya","rata","rupanya","saat","saatnya","saja","sajalah","saling","sama","sama-sama","sambil","sampai","sampai-sampai","sampaikan","sana","sangat","sangatlah","satu","saya",
						"sayalah","se","sebab","sebabnya","sebagai","sebagaimana","sebagainya","sebagian","sebaik","sebaik-baiknya","sebaiknya","sebaliknya","sebanyak","sebegini","sebegitu","sebelum","sebelumnya","sebenarnya","seberapa","sebesar","sebetulnya","sebisanya","sebuah","sebut","sebutlah","sebutnya","secara","secukupnya",
						"sedang","sedangkan","sedemikian","sedikit","sedikitnya","seenaknya","segala","segalanya","segera","seharusnya","sehingga","seingat","sejak","sejauh","sejenak","sejumlah","sekadar","sekadarnya","sekali","sekali-kali","sekalian","sekaligus","sekalipun","sekarang","sekarang","sekecil","seketika","sekiranya","sekitar",
						"sekitarnya","sekurang-kurangnya","sekurangnya","sela","selain","selaku","selalu","selama","selama-lamanya","selamanya","selanjutnya","seluruh","seluruhnya","semacam","semakin","semampu","semampunya","semasa","semasih","semata","semata-mata","semaunya","sementara","semisal","semisalnya","sempat","semua","semuanya",
						"semula","sendiri","sendirian","sendirinya","seolah","seolah-olah","seorang","sepanjang","sepantasnya","sepantasnyalah","seperlunya","seperti","sepertinya","sepihak","sering","seringnya","serta","serupa","sesaat","sesama","sesampai","sesegera","sesekali","seseorang","sesuatu","sesuatunya","sesudah","sesudahnya","setelah","setempat",
						"setengah","seterusnya","setiap","setiba","setibanya","setidak-tidaknya","setidaknya","setinggi","seusai","sewaktu","siap","siapa","siapakah","siapapun","sini","sinilah","soal","soalnya","suatu","sudah","sudahkah","sudahlah","supaya","tadi","tadinya","tahu","tahun","tak","tambah","tambahnya","tampak","tampaknya","tandas","tandasnya","tanpa",
						"tanya","tanyakan","tanyanya","tapi","tegas","tegasnya","telah","tempat","tengah","tentang","tentu","tentulah","tentunya","tepat","terakhir","terasa","terbanyak","terdahulu","terdapat","terdiri","terhadap","terhadapnya","teringat","teringat-ingat","terjadi","terjadilah","terjadinya","terkira","terlalu","terlebih","terlihat","termasuk",
						"ternyata","tersampaikan","tersebut","tersebutlah","tertentu","tertuju","terus","terutama","tetap","tetapi","tiap","tiba","tiba-tiba","tidak","tidakkah","tidaklah","tiga","tinggi","toh","tunjuk","turut","tutur","tuturnya","ucap","ucapnya","ujar","ujarnya","umum","umumnya","ungkap","ungkapnya","untuk","usah","usai","waduh","wah","wahai","waktu","waktunya",
						"walau","walaupun","wong","yaitu","yakin","yakni","yang","nya");				
	foreach ($bstoplist as $i => $value) {
   	$teks = str_replace($bstoplist[$i], "", $teks);
	}
	//stemming
	//membuat query berdasarkan tabel tbstem dan dibandingkan dengan dokumen diurutkan berdasarkan id dari kecil ke besar.
	$query_tbstem = mysqli_query($conn,"SELECT * FROM tbstem ORDER BY Id");

	while($row_tbstem = mysqli_fetch_array($query_tbstem)) {
  		$teks = str_replace($row_tbstem['Term'], $row_tbstem['Stem'], $teks);
  	}

	//kembalikan teks yang telah dipreproses
	$teks = strtolower(trim($teks));
	return $teks;
} 
//end function preproses
//--------------------------------------------------------------------------------------------

//Fungsi membuat term atau term.
//--------------------------------------------------------------------------------------------
function makeTerm(){
	include "koneksi.php";
	//Hapus tabel tbterm sebelumnya.
	mysqli_query($conn, "TRUNCATE TABLE tbterm");
	//membuat query berdasarkan tabel tbtugasakhir (title dan abstract=TA).
	$query_tbtugasakhir = mysqli_query($conn, "SELECT * FROM tbtugasakhir ORDER BY id");
	//Melakukan simpan ke tbterm pada setiap baris dokumen
	while ($row_tbtugasakhir = mysqli_fetch_array($query_tbtugasakhir)){
	 	//mengambil kolom 'id' pada tabel tbtugasakhir setiap baris dokumen.
		$dokumenId = $row_tbtugasakhir['id'];
	 	//mengambil/menyatukan kolom 'title dan abstract' pada tabel tbtugasakhir setiap baris dokumen
		$term_title_abstract = $row_tbtugasakhir['title']." ".$row_tbtugasakhir['abstract'];
		//melakukan preprocess terhadap term title dan abstract setiap baris dokumen.
		$term_title_abstract = preprocessing($term_title_abstract);
		// //memisahkan string term setiap baris dokumen
		$exterm_title_abstract = explode(" ", trim($term_title_abstract));
		// //melakukan perulangan setiap term pada setiap baris dokumen.
		foreach ($exterm_title_abstract as $i => $value){
			//membuat kondisi jika kolom $term_title_abstract tidak null atau kosong.
			if($exterm_title_abstract[$i] != ""){
				// mengambil query kolom jumlah term
				$query_tbterm = mysqli_query($conn, "SELECT jumlahTerm FROM tbterm WHERE term = '$exterm_title_abstract[$i]' AND dokumenId = $dokumenId");
				//mengambil baris kolom jumlah term
				@$amount_perterm = mysqli_num_rows($query_tbterm);
				//membuat kondisi jika baris term sudah ada maka jumlah term + 1
				if($amount_perterm > 0){
					$row_amount_perterm = mysqli_fetch_array($query_tbterm);
					$amount_term = $row_amount_perterm['jumlahTerm'];
					$amount_term++;
					mysqli_query($conn, "UPDATE tbterm SET jumlahTerm = $amount_term WHERE term = '$exterm_title_abstract[$i]' AND dokumenId = $dokumenId");
				}
				else {
					//Insert term ke tbterm per dokumenId dengan setiap term berjumlah 1
					mysqli_query($conn, "INSERT INTO tbterm (term, dokumenId, jumlahTerm) VALUES ('$exterm_title_abstract[$i]', $dokumenId, 1)");
				}//end else
			}//end if
		}//end foreach
	}//end while	
}//end function
//--------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------
//fungsi hitungbobot, menggunakan perhitungan tf.idf
function tfidfTerm(){
	include "koneksi.php";
	// mengambil nilai yang berbeda pada kolom dokumenId untuk setiap baris di tabel tbterm.
	$query_tbterm = mysqli_query($conn, "SELECT DISTINCT dokumenId from tbterm");
	// mengambil nilai total jumlah dokumen, n (ada berapa dokumen.)
	$n_doc = mysqli_num_rows($query_tbterm);
	//mengambil query kolom term pada tabel tbterm
	$query_tbterm_id = mysqli_query($conn, "SELECT * FROM tbterm ORDER BY id");
	
	while($row_query_tbterm_id = mysqli_fetch_array($query_tbterm_id)){
		$term = $row_query_tbterm_id['term'];
		//term frequency
		$tf = $row_query_tbterm_id['jumlahTerm'];
		$id = $row_query_tbterm_id['id'];
		//Mengambil query jumlah dokumen yang mewakili term. N term (Berapa dokumen yang mewakil term)
		$query_tbterm_N_term = mysqli_query($conn, "SELECT COUNT(*) AS N FROM tbterm WHERE term = '$term'");
		$row_query_tbterm_N_term = mysqli_fetch_array($query_tbterm_N_term);
		//Menambah jumlah dokumen yang mewakili term dari keyword
		//mengambil query term dari tabel tbkeyword yang sama dengan term tbterm.
		$query_tbkeyword_term = mysqli_query($conn, "SELECT * FROM tbkeyword WHERE term = '$term'");
		$row_query_tbkeyword_term = mysqli_fetch_array($query_tbkeyword_term);
		$amount_term_keyword = mysqli_num_rows($query_tbkeyword_term);

		if($amount_term_keyword > 0){
			$N_term = $row_query_tbterm_N_term['N']+$row_query_tbkeyword_term['jumlahTerm'];

		}else{
			$N_term = $row_query_tbterm_N_term['N'];
		}
		
		$n_doc_after = $n_doc+1;
		//idf = jumlah total dokumen / jumlah dokumen yang mewakili term
		$idf = log10($n_doc_after/$N_term);
		$tfidf = $tf * $idf;

		mysqli_query($conn, "UPDATE tbterm SET tfidf = $tfidf WHERE id = $id");
	}//end while
}//end function
//--------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------
//Funsi hitung panjang vektor setiap dokumen.
//Akar dari penjumlahan kuadrat setiap term per dokumen.
function vectorLengthDoc(){

	include "koneksi.php";

	//hapus isi tabel tbvektor sebelumnya.
	mysqli_query($conn, "TRUNCATE TABLE tbvektor");

	//mengambil query nilai kolom dokumenId yang berbeda
	//hitung panjang vektor setiap dokumenId yang berbeda
	//simpan kedalam tabel tbvektor.
	$query_tbterm = mysqli_query($conn, "SELECT DISTINCT dokumenId FROM tbterm");

	while($row_query_tbterm = mysqli_fetch_array($query_tbterm)){

		$doc_id = $row_query_tbterm['dokumenId'];

		$query_tbterm_docid = mysqli_query($conn, "SELECT tfidf FROM tbterm WHERE dokumenId = $doc_id");
		//panjang vektor = akar penjumlahan kuadrat setiap term per dokumen
		$vector_length = 0;

		while($row_query_tbterm_docid = mysqli_fetch_array($query_tbterm_docid)){

			$vector_length = $vector_length + $row_query_tbterm_docid['tfidf'] * $row_query_tbterm_docid['tfidf'];

			
		}//end while baris vektor

			$vector_length = sqrt($vector_length);

			mysqli_query($conn, "INSERT INTO tbvektor (dokumenId, panjangVektor) VALUES ($doc_id, $vector_length)");
	}//end while baris dokumen id
}//end function
//--------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------
//Fungsi hitung bobot keywotrd (tfidf)
function tfidfKeyword(){

	include "koneksi.php";
	//mengambil nilai yang berbeda dari dokumen id pada tbterm dan jumlah total dokumen
	$query_tbterm_docid = mysqli_query($conn, "SELECT DISTINCT dokumenId FROM tbterm");
	$n_doc = mysqli_num_rows($query_tbterm_docid);

	$query_tbkeyword = mysqli_query($conn, "SELECT * FROM tbkeyword");
	while($row_query_tbkeyword = mysqli_fetch_array($query_tbkeyword)){

		$id_keyword = $row_query_tbkeyword['id'];
		$tf_keyword = $row_query_tbkeyword['jumlahTerm'];
		$term_keyword = $row_query_tbkeyword['term'];
		//mencari dokumen yang mewakili term tbkeyword yang sama dengan term tbterm
		$query_tbterm_totalterm = mysqli_query($conn, "SELECT COUNT(*) AS totalTerm FROM tbterm WHERE term = '$term_keyword'");
		$row_query_tbterm_totalterm = mysqli_fetch_array($query_tbterm_totalterm);
		//jumlah dokumen tbtugasakhir + dokumen keyword.
		$n_doc_after = $n_doc +1;
		$N_term = $row_query_tbterm_totalterm['totalTerm']+1;
		//rumus tfidf keyword
		$idf = log10($n_doc_after/$N_term);
		$tfidf = $tf_keyword * $idf;

		mysqli_query($conn, "UPDATE tbkeyword SET tfidf = $tfidf WHERE id = $id_keyword");
	}//end while	
}//end function tfidfKeyword.
//--------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------
//Fungsi hitung 2 vektor yang sama (wdwdi).
function wdwdi(){

	include "koneksi.php";

	//hapus perhitungan wdwdi sebelumnya dan kosongkan.
	mysqli_query($conn, "DELETE FROM tbwdwdi");
	mysqli_query($conn, "TRUNCATE TABLE tbwdwdi");

	$get_tfidf_keyword = mysqli_query($conn, "SELECT * FROM tbkeyword ORDER BY id");

	while($row_get_tfidf_keyword = mysqli_fetch_array($get_tfidf_keyword)){

		$term_keyword = $row_get_tfidf_keyword['term'];
		$tfidf_keyword = $row_get_tfidf_keyword['tfidf'];

		$query_tbterm = mysqli_query($conn, "SELECT * FROM tbterm WHERE term = '$term_keyword'");

		$wdwdi = 0;

		while($row_query_tbterm = mysqli_fetch_array($query_tbterm)){
			$tbterm_doc_id = $row_query_tbterm['dokumenId'];

			$wdwdi = $tfidf_keyword * $row_query_tbterm['tfidf'];

			mysqli_query($conn, "INSERT INTO tbwdwdi (dokumenId,wdwdi) VALUES ($tbterm_doc_id,$wdwdi)");
		}//end while
	}//end while
}//end function
//--------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------
//Fungsi menghitung kemiripan.
function cosineSimilarity(){

	include "koneksi.php";

	mysqli_query($conn, "DELETE FROM tbsimilarity");
	mysqli_query($conn, "TRUNCATE TABLE tbsimilarity");

	$query_tbkeyword_tfidf = mysqli_query($conn, "SELECT tfidf FROM tbkeyword");

	$vector_length_keyword = 0;

	while($row_query_tbkeyword_tfidf = mysqli_fetch_array($query_tbkeyword_tfidf)){

		$tfidf_keyword = $row_query_tbkeyword_tfidf['tfidf'];
		$vector_length_keyword = $vector_length_keyword + ($tfidf_keyword * $tfidf_keyword);
	}

	$vector_length_keyword = sqrt($vector_length_keyword);

	$query_tbwdwdi = mysqli_query($conn, "SELECT dokumenId, SUM(wdwdi) as total_wdwdi FROM tbwdwdi GROUP BY dokumenId");

	while($row_query_tbwdwdi = mysqli_fetch_array($query_tbwdwdi)){

		$total_wdwdi = $row_query_tbwdwdi['total_wdwdi'];
		$dokumen_id = $row_query_tbwdwdi['dokumenId'];

		$query_tbvektor = mysqli_query($conn, "SELECT * FROM tbvektor WHERE dokumenID = $dokumen_id");

		while($row_query_tbvektor = mysqli_fetch_array($query_tbvektor)){
			
			$vector_doc_id = $row_query_tbvektor['dokumenId'];
			$vector_length_doc = $row_query_tbvektor['panjangVektor'];
			$cosine_similarity = $total_wdwdi/($vector_length_keyword*$vector_length_doc);
			
			if($cosine_similarity > 0.1){
			mysqli_query($conn, "INSERT INTO tbsimilarity(dokumenId, cosineSimilarity) VALUES ($vector_doc_id, $cosine_similarity)");
			}
		}
	}
}





?>