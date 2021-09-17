<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Biara_m extends CI_Model {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function input_contact($data)
	{
		$this->db->insert('contact', $data);
		return TRUE;

	}

	public function inputContentHK($data)
	{
		$this->db->insert('home_kutipan', $data);
		return TRUE;

	}

	public function register_m($data)
	{
		$this->db->insert('register', $data);
		return TRUE;
	}

	public function login_admin($user, $pass)
	{
		$this->db->where('username', $user);
		$this->db->where('password', $pass);

		return $this->db->get('admin')->row();
	}

	public function input_tambah_admin($data)
	{
		$this->db->insert('admin', $data);
		return TRUE;
	}

	// edit admin cara 1
	public function get_all($where = NULL)
	{
		$this->db->order_by('level', 'asc');
		$this->db->order_by('user_id', 'asc');
		
		return $this->db->get_where('admin', $where);
	}

	//INPUT EDIT admin cara 2
	public function input_edit_master_jenis($data, $where)
	{
		// $this->db->where('jenis', $this->input->get('jenis_satu'));
		$this->db->where($where);
		$this->db->update('admin', $data);
		return TRUE;
	}

	// Input edit admin cara 3
	public function edit_data($where)
	{		
	
		// return $this->db->get_where($table,$where);
		$this->db->get_where($where);
		return TRUE;
	}

	//Input edit + update data
	public function update_data($where,$data,$table){
		$this->db->where($where);
		$this->db->update($table,$data);
	}	

	// INPUT EDIT ADMIN CARA 4
	public function getById($where, $id)
    {
        // return $this->db->get_where(["admin" => $id])->row();

        // $this->db->select('admin');
		// $this->db->from('admin');
		$this->db->where('user_id',$where, $id);
		$query=$this->db->get('admin')->row();
		return $query;
    }

    // Coba pake jqeury + modal
    public function edit_user_m($data, $where)
	{
		$this->db->where($where);
		$this->db->update('admin', $data);
		return TRUE;
	}

	public function inputberita_baru($data)
	{
		$this->db->insert('tbl_berita', $data);
		return TRUE;

	}

	public function inputArtikel_baru($data)
	{
		$this->db->insert('tbl_artikel', $data);
		return TRUE;
	}

	public function Inputgallery($data)
	{
		$this->db->insert('galeri', $data);
		return TRUE;

	}

	public function InputAlbum($data)
	{
		$this->db->insert('album', $data);
		return TRUE;

	}

	public function insertGaleri($data)
	{
		$this->db->insert('galeri_album', $data);
		return TRUE;

	}

	public function postGALERI($data = array())
	{
        // Insert Ke Database dengan Banyak Data Sekaligus
        return $this->db->insert_batch('galeri_album',$data);
	}

	public function inputGALERI($data = array())
	{
        // Insert Ke Database dengan Banyak Data Sekaligus
        return $this->db->insert_batch('gallery',$data);
	}

	public function input_MB($data)
	{
		$this->db->insert('management_biara', $data);
		return TRUE;
	}

	public function input_SB($data)
	{
		$this->db->insert('sejarah_biara', $data);
		return TRUE;
	}

	public function input_AF($data)
	{
		$this->db->insert('afiliasi', $data);
		return TRUE;
	}

	public function input_SA($data)
	{
		$this->db->insert('silsilah_ajaran', $data);
		return TRUE;
	}

	public function input_TG($data)
	{
		$this->db->insert('tradisi_gelug', $data);
		return TRUE;
	}

	public function input_SP($data)
	{
		$this->db->insert('silsilah_penahbisan', $data);
		return TRUE;
	}

	public function input_G($data)
	{
		$this->db->insert('guru', $data);
		return TRUE;
	}

	public function input_TS($data)
	{
		$this->db->insert('tentang_sangha', $data);
		return TRUE;
	}

	public function input_DW($data)
	{
		$this->db->insert('dharma_work', $data);
		return TRUE;
	}

	public function input_AT($data)
	{
		$this->db->insert('aktivitas_tahunan', $data);
		return TRUE;
	}

	public function input_AH($data)
	{
		$this->db->insert('aktivitas_harian', $data);
		return TRUE;
	}

	public function input_MS($data)
	{
		$this->db->insert('menjadi_sangha', $data);
		return TRUE;
	}

	public function input_NUS($data)
	{
		$this->db->insert('nasihat_untuk_sangha', $data);
		return TRUE;
	}

	public function input_P($data)
	{
		$this->db->insert('persiapan', $data);
		return TRUE;
	}

	public function input_S($data)
	{
		$this->db->insert('silasrama', $data);
		return TRUE;
	}

	public function input_K($data)
	{
		$this->db->insert('kurikulum', $data);
		return TRUE;
	}

	// Testing yang Berhasil cuyy
	public function get_data($idUser){
	    $this->db->select('*');
	    $this->db->where('user_id',$idUser);
	    return $this->db->get('admin')->row();

	}

	public function get_berita($idUser){
	    $this->db->select('*');
	    $this->db->where('id_berita',$idUser);
	    return $this->db->get('tbl_berita')->row();

	}

	public function get_artikel($idArtikel){
	    $this->db->select('*');
	    $this->db->where('id_artikel',$idArtikel);
	    return $this->db->get('tbl_artikel')->row();

	}

	 public function inputArtikel_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('tbl_artikel', $data);
		return TRUE;
	}

	public function inputberita_edit($data, $where)
	{
		$this->db->where($where);
		$this->db->update('tbl_berita', $data);
		return TRUE;
	}

	public function get_dataBerita($slug)
	{
	    $this->db->select('id_berita, judul_berita, isi_berita, gambar_berita, tanggal_content, jumlahVisitor');
	    $this->db->where('slug',$slug);
	    return $this->db->get('tbl_berita')->row();

	}

	public function get_dataArtikel($slug)
	{
	    $this->db->select('id_artikel, judul_artikel, isi_artikel, gambar_artikel, tanggal_content, jumlahVisitor');
	    $this->db->where('slug',$slug);
	    return $this->db->get('tbl_artikel')->row();
	}

	public function input_tambahJadwal($data)
	{
		$this->db->insert('jadwal_mingguan', $data);
		return TRUE;
	}

	public function get_JM($idUser){
	    $this->db->select('*');
	    $this->db->where('id_JadwalMingguan',$idUser);
	    return $this->db->get('jadwal_mingguan')->row();

	}
	
	public function inputJM_edit($data, $where)
	{
		$this->db->where($where);
		$this->db->update('jadwal_mingguan', $data);
		return TRUE;
	}

	// public function get_dataJM($slug)
	// {
	//     $this->db->select('id_JadwalMingguan, acara, slug, tanggal, isi_content, gambar_content');
	//     $this->db->where('slug', $slug);
	//     return $this->db->get('jadwal_mingguan')->row();

	// }

	public function get_dataJT($id){
	    $this->db->select('*');
	    $this->db->where('id_JadwalTahunan',$id);
	    return $this->db->get('jadwal_tahunan')->row();

	}

	public function get_dataJMG($slug)
	{
	    $this->db->select('jadwal_mendatang.*, akandatang_slideshow.id_adSlide, akandatang_slideshow.id_jadwalMendatang, akandatang_slideshow.gambar_slideshow');
		$this->db->join('jadwal_mendatang','jadwal_mendatang.id_jadwalMendatang = akandatang_slideshow.id_jadwalMendatang');
	    $this->db->where('akandatang_slideshow.slug', $slug);
	    return $this->db->get('akandatang_slideshow');
	}

	public function get_dataJB($slug)
	{
	    $this->db->select('jadwal_bulanan.*, telahberakhir_slideshow.id_tbSlide, telahberakhir_slideshow.id_jadwalBulanan, telahberakhir_slideshow.gambar_slideshow');
		$this->db->join('jadwal_bulanan','jadwal_bulanan.id_jadwalBulanan = telahberakhir_slideshow.id_jadwalBulanan');
	    $this->db->where('telahberakhir_slideshow.slug', $slug);
	    return $this->db->get('telahberakhir_slideshow');
	}

	public function get_dataJM($slug)
	{
	    $this->db->select('jadwal_mingguan.*, sedangberjalan_slideshow.id_sbSlide, sedangberjalan_slideshow.id_jadwalMingguan, sedangberjalan_slideshow.gambar_slideshow');
		$this->db->join('jadwal_mingguan','jadwal_mingguan.id_jadwalMingguan = sedangberjalan_slideshow.id_jadwalMingguan');
	    $this->db->where('sedangberjalan_slideshow.slug', $slug);
	    return $this->db->get('sedangberjalan_slideshow');
	}

	public function inputContentSS($data)
	{
		$this->db->insert('home_slideshow', $data);
		return TRUE;

	}

	public function get_SS($id_SS){
	    $this->db->select('*');
	    $this->db->where('id',$id_SS);
	    return $this->db->get('home_slideshow')->row();

	}

	public function inputSS_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('home_slideshow', $data);
		return TRUE;
	}

	public function get_HK($id_HK){
	    $this->db->select('*');
	    $this->db->where('id',$id_HK);
	    return $this->db->get('home_kutipan')->row();

	}

	public function inputHK_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('home_kutipan', $data);
		return TRUE;
	}

	public function get_HL($id_HL){
	    $this->db->select('*');
	    $this->db->where('id',$id_HL);
	    return $this->db->get('home_lainnya')->row();

	}

	public function inputHL_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('home_lainnya', $data);
		return TRUE;
	}

	public function input_kd($data)
	{
		$this->db->insert('konfirmasi_dana', $data);
		return TRUE;
	}

	public function input_D($data)
	{
		$this->db->insert('donasi', $data);
		return TRUE;
	}

	public function input_DS($data)
	{
		$this->db->insert('donasi_slideshow', $data);
		return TRUE;
	}

	public function input_ADS($data)
	{
		$this->db->insert('akandatang_slideshow', $data);
		return TRUE;
	}

	public function input_SBS($data)
	{
		$this->db->insert('sedangberjalan_slideshow', $data);
		return TRUE;
	}

	public function input_TBS($data)
	{
		$this->db->insert('telahberakhir_slideshow', $data);
		return TRUE;
	}

	public function input_DG($data)
	{
		$this->db->insert('donasi_galeri', $data);
		return TRUE;
	}

	public function input_ADGI($data)
	{
		$this->db->insert('akandatang_galeri', $data);
		return TRUE;
	}

	public function input_TBGI($data)
	{
		$this->db->insert('telahberakhir_galeri', $data);
		return TRUE;
	}

	public function input_SBGI($data)
	{
		$this->db->insert('sedangberjalan_galeri', $data);
		return TRUE;
	}

	// COBA CARA BARU INPUT DONASI
	public function add($post)
	{
		$params = [
			'judul_donasi' => $post['judul_donasi'],
			'jumlah_terkumpul' => $post['jumlah_terkumpul'],
			'jumlah_semula' => $post['jumlah_semula'],
			'jumlah_bar' => $post['jumlah_bar'],
			'jumlah_donasi' => $post['jumlah_donasi'],
			'sisa_hari' => $post['sisa_hari'],
			'gambar_donasi' => $post['gambar_donasi'],
			'deskripsi_donasi' => $post['deskripsi_donasi'],
		];
		$this->db->insert('donasi', $params);
	}

	public function get_donasi($id_donasi){
	    $this->db->select('*');
	    $this->db->where('id_donasi',$id_donasi);
	    return $this->db->get('donasi')->row();

	}

	public function get_donasiS($id_donasiSlide)
	{
		// $this->db->select('*');
	    $this->db->select('donasi.*, donasi_slideshow.id_donasiSlide, donasi_slideshow.gambar_slideshow');
		$this->db->join('donasi','donasi.id_donasi = donasi_slideshow.id_donasi');


	    $this->db->where('id_donasiSlide',$id_donasiSlide);
	    return $this->db->get('donasi_slideshow')->row();

	}

	public function get_akandatangADS($id_adSlide)
	{
	    $this->db->select('jadwal_mendatang.*, akandatang_slideshow.id_adSlide, akandatang_slideshow.gambar_slideshow');
		$this->db->join('jadwal_mendatang','jadwal_mendatang.id_JadwalMendatang = akandatang_slideshow.id_JadwalMendatang');


	    $this->db->where('id_adSlide',$id_adSlide);
	    return $this->db->get('akandatang_slideshow')->row();

	}

	public function get_akandatangSBS($id_sbSlide)
	{
	    $this->db->select('jadwal_mingguan.*, sedangberjalan_slideshow.id_sbSlide, sedangberjalan_slideshow.gambar_slideshow');
		$this->db->join('jadwal_mingguan','jadwal_mingguan.id_jadwalMingguan = sedangberjalan_slideshow.id_jadwalMingguan');


	    $this->db->where('id_sbSlide',$id_sbSlide);
	    return $this->db->get('sedangberjalan_slideshow')->row();

	}

	public function get_telahBS($id_tbSlide)
	{
	    $this->db->select('jadwal_bulanan.*, telahberakhir_slideshow.id_tbSlide, telahberakhir_slideshow.gambar_slideshow');
		$this->db->join('jadwal_bulanan','jadwal_bulanan.id_jadwalBulanan = telahberakhir_slideshow.id_jadwalBulanan');


	    $this->db->where('id_tbSlide',$id_tbSlide);
	    return $this->db->get('telahberakhir_slideshow')->row();

	}

	public function get_donasiG($id_donasiGaleri)
	{
		// $this->db->select('*');
	    $this->db->select('donasi.*, donasi_galeri.id_donasiGaleri, donasi_galeri.gambar_galeri');
		$this->db->join('donasi','donasi.id_donasi = donasi_galeri.id_donasi');


	    $this->db->where('id_donasiGaleri',$id_donasiGaleri);
	    return $this->db->get('donasi_galeri')->row();

	}

	public function get_ADG($id_adGaleri)
	{
	    $this->db->select('jadwal_mendatang.*, akandatang_galeri.id_adGaleri, akandatang_galeri.gambar_galeri');
		$this->db->join('jadwal_mendatang','jadwal_mendatang.id_jadwalMendatang = akandatang_galeri.id_jadwalMendatang');
	    $this->db->where('id_adGaleri',$id_adGaleri);
	    return $this->db->get('akandatang_galeri')->row();

	}

	public function get_TBG($id_tbGaleri)
	{
	    $this->db->select('jadwal_bulanan.*, telahberakhir_galeri.id_tbGaleri, telahberakhir_galeri.gambar_galeri');
		$this->db->join('jadwal_bulanan','jadwal_bulanan.id_jadwalBulanan = telahberakhir_galeri.id_jadwalBulanan');
	    $this->db->where('id_tbGaleri',$id_tbGaleri);
	    return $this->db->get('telahberakhir_galeri')->row();

	}

	public function get_SBG($id_sbGaleri)
	{
	    $this->db->select('jadwal_mingguan.*, sedangberjalan_galeri.id_sbGaleri, sedangberjalan_galeri.gambar_galeri');
		$this->db->join('jadwal_mingguan','jadwal_mingguan.id_jadwalMingguan = sedangberjalan_galeri.id_jadwalMingguan');
	    $this->db->where('id_sbGaleri',$id_sbGaleri);
	    return $this->db->get('sedangberjalan_galeri')->row();

	}

	public function inputDonasi_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('donasi', $data);
		return TRUE;
	}

	public function inputDS_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('donasi_slideshow', $data);
		return TRUE;
	}

	public function inputADS_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('akandatang_slideshow', $data);
		return TRUE;
	}

	public function inputSBS_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('sedangberjalan_slideshow', $data);
		return TRUE;
	}

	public function inputTBS_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('telahberakhir_slideshow', $data);
		return TRUE;
	}

	public function inputDG_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('donasi_galeri', $data);
		return TRUE;
	}

	public function inputADG_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('akandatang_galeri', $data);
		return TRUE;
	}

	public function inputTBG_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('telahberakhir_galeri', $data);
		return TRUE;
	}

	public function inputSBG_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('sedangberjalan_galeri', $data);
		return TRUE;
	}


	public function hitungJumlahdataBerita()
	{   
	    $query = $this->db->get('tbl_berita');
	    if($query->num_rows()>0)
	    {
	      return $query->num_rows();
	    }
	    else
	    {
	      return 0;
	    }
	}

	public function hitungJumlahdataArtikel()
	{   
	    $query = $this->db->get('tbl_artikel');
	    if($query->num_rows()>0)
	    {
	      return $query->num_rows();
	    }
	    else
	    {
	      return 0;
	    }
	}

	public function get_dataDonasi($slug)
	{
	    // $this->db->select('*');
	    // $this->db->where('id_donasi',$idUser);
	 //    $this->db->select('donasi.*, donasi_slideshow.id_donasiSlide, donasi_slideshow.gambar_slideshow');
		// $this->db->join('donasi','donasi.id_donasi = donasi_slideshow.id_donasi');
	 //    $this->db->where('donasi_slideshow.id_donasi', $id_donasiSlide);
	 //    return $this->db->get('donasi')->row();

	    $this->db->select('donasi.*, donasi_slideshow.id_donasiSlide, donasi_slideshow.id_donasi, donasi_slideshow.gambar_slideshow');
		$this->db->join('donasi','donasi.id_donasi = donasi_slideshow.id_donasi');
	    $this->db->where('donasi_slideshow.slug', $slug);
	    return $this->db->get('donasi_slideshow');

	 //    $this->db->select('album.*, galeri_album.id_galeri, galeri_album.gambar_galeri');
		// $this->db->join('album','album.id_album = galeri_album.id_album');
	 //    $this->db->where('galeri_album.slug', $slug);
	 //    return $this->db->get('galeri_album');

	}

	public function get_dataDonasiG($slug)
	{
	    $this->db->select('donasi.*, donasi_galeri.id_donasiGaleri, donasi_galeri.id_donasi, donasi_galeri.gambar_galeri');
		$this->db->join('donasi','donasi.id_donasi = donasi_galeri.id_donasi');
	    $this->db->where('donasi_galeri.slug', $slug);
	    return $this->db->get('donasi_galeri');
	}

	public function getad_G($slug)
	{
	    $this->db->select('jadwal_mendatang.*, akandatang_galeri.id_adGaleri, akandatang_galeri.id_jadwalMendatang, akandatang_galeri.gambar_galeri');
		$this->db->join('jadwal_mendatang','jadwal_mendatang.id_jadwalMendatang = akandatang_galeri.id_jadwalMendatang');
	    $this->db->where('akandatang_galeri.slug', $slug);
	    return $this->db->get('akandatang_galeri');
	}

	public function gettb_G($slug)
	{
	    $this->db->select('jadwal_bulanan.*, telahberakhir_galeri.id_tbGaleri, telahberakhir_galeri.id_jadwalBulanan, telahberakhir_galeri.gambar_galeri');
		$this->db->join('jadwal_bulanan','jadwal_bulanan.id_jadwalBulanan = telahberakhir_galeri.id_jadwalBulanan');
	    $this->db->where('telahberakhir_galeri.slug', $slug);
	    return $this->db->get('telahberakhir_galeri');
	}

	public function get_dataSB($slug)
	{
	    $this->db->select('jadwal_mingguan.*, sedangberjalan_galeri.id_sbGaleri, sedangberjalan_galeri.id_jadwalMingguan, sedangberjalan_galeri.gambar_galeri');
		$this->db->join('jadwal_mingguan','jadwal_mingguan.id_jadwalMingguan = sedangberjalan_galeri.id_jadwalMingguan');
	    $this->db->where('sedangberjalan_galeri.slug', $slug);
	    return $this->db->get('sedangberjalan_galeri');
	}

	public function get_DN()
	{
	    $this->db->select('donasi.*, donasi.id_donasi, donasi.judul_donasi' );
	    $this->db->join('donasi', 'donasi.id_donasi = paket_dana4.id_donasi');
	    $this->db->group_by('id_donasi');
	    return $this->db->get('paket_dana4');
	}

	public function get_PD()
	{
	    $this->db->select('*');
	    $this->db->where('id');
	    return $this->db->get('paket_dana');

	}

	// ANGGOTA SANGHA
	public function inputAnggotaSangha_baru($data)
	{
		$this->db->insert('anggota_sangha', $data);
		return TRUE;
	}

	public function get_anggotaSangha($id_anggotaSangha)
	{
	    $this->db->select('*');
	    $this->db->where('id_anggotaSangha', $id_anggotaSangha);
	    return $this->db->get('anggota_sangha')->row();

	}

	public function get_kantorSangha($id_kantorSangha)
	{
	    $this->db->select('*');
	    $this->db->where('id_kantorSangha', $id_kantorSangha);
	    return $this->db->get('kantor_sangha')->row();

	}

	public function inputAnggotaSangha_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('anggota_sangha', $data);
		return TRUE;
	}

	public function inputKantorSangha_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('kantor_sangha', $data);
		return TRUE;
	}

	// TENTANG BIARA
	public function input_content($data)
	{
		$this->db->insert('tentang_biara', $data);
		return TRUE;
	}

	public function get_TB($id_tb)
	{
	    $this->db->select('*');
	    $this->db->where('id_tentangBiara',$id_tb);
	    return $this->db->get('tentang_biara')->row();

	}

	public function inputTB_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('tentang_biara', $data);
		return TRUE;
	}

	// SEJARAH BIARA
	public function get_SB($id_sb)
	{
	    $this->db->select('*');
	    $this->db->where('id_sejarahBiara', $id_sb);
	    return $this->db->get('sejarah_biara')->row();

	}

	public function inputSB_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('sejarah_biara', $data);
		return TRUE;
	}

	// AFILIASI
	public function get_AF($id_af)
	{
	    $this->db->select('*');
	    $this->db->where('id_afiliasi', $id_af);
	    return $this->db->get('afiliasi')->row();

	}

	public function inputAF_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('afiliasi', $data);
		return TRUE;
	}

	// MANAGEMENT BIARA
	public function get_MB($id_mb)
	{
	    $this->db->select('*');
	    $this->db->where('id_managementBiara', $id_mb);
	    return $this->db->get('management_biara')->row();

	}

	public function inputMB_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('management_biara', $data);
		return TRUE;
	}

	// SILSILAH AJARAN
	public function get_SA($id_sa)
	{
	    $this->db->select('*');
	    $this->db->where('id_silsilahAjaran', $id_sa);
	    return $this->db->get('silsilah_ajaran')->row();

	}

	public function inputSA_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('silsilah_ajaran', $data);
		return TRUE;
	}

	// TRADISI GELUG
	public function get_TG($id_tg)
	{
	    $this->db->select('*');
	    $this->db->where('id_tradisiGelug', $id_tg);
	    return $this->db->get('tradisi_gelug')->row();

	}

	public function inputTG_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('tradisi_gelug', $data);
		return TRUE;
	}

	// Silsilah Penahbisan
	public function get_SP($id_sp)
	{
	    $this->db->select('*');
	    $this->db->where('id_silsilahPenahbisan', $id_sp);
	    return $this->db->get('silsilah_penahbisan')->row();

	}

	public function inputSP_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('silsilah_penahbisan', $data);
		return TRUE;
	}

	// GURU
	public function get_G($id_g)
	{
	    $this->db->select('*');
	    $this->db->where('id_guru', $id_g);
	    return $this->db->get('guru')->row();

	}

	public function inputG_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('guru', $data);
		return TRUE;
	}

	// TENTANG SANGHA
	public function get_TS($id_ts)
	{
	    $this->db->select('*');
	    $this->db->where('id_tentangSangha', $id_ts);
	    return $this->db->get('tentang_sangha')->row();

	}

	public function inputTS_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('tentang_sangha', $data);
		return TRUE;
	}


	// KURIKULUM
	public function get_K($id_k)
	{
	    $this->db->select('*');
	    $this->db->where('id_kurikulum', $id_k);
	    return $this->db->get('kurikulum')->row();

	}

	public function inputK_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('kurikulum', $data);
		return TRUE;
	}

	// DHARMA WORK
	public function get_DW($id_dw)
	{
	    $this->db->select('*');
	    $this->db->where('id_dharmaWork', $id_dw);
	    return $this->db->get('dharma_work')->row();

	}

	public function inputDW_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('dharma_work', $data);
		return TRUE;
	}

	// AKTIVITAS HARIAN
	public function get_AH($id_ah)
	{
	    $this->db->select('*');
	    $this->db->where('id_aktivitasHarian', $id_ah);
	    return $this->db->get('aktivitas_harian')->row();

	}

	public function inputAH_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('aktivitas_harian', $data);
		return TRUE;
	}

	// AKTIVITAS TAHUNAN
	public function get_AT($id_at)
	{
	    $this->db->select('*');
	    $this->db->where('id_aktivitasTahunan', $id_at);
	    return $this->db->get('aktivitas_tahunan')->row();

	}

	public function inputAT_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('aktivitas_tahunan', $data);
		return TRUE;
	}

	// MENJADI SANGHA
	public function get_MS($id_ms)
	{
	    $this->db->select('*');
	    $this->db->where('id_menjadiSangha', $id_ms);
	    return $this->db->get('menjadi_sangha')->row();

	}

	public function inputMS_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('menjadi_sangha', $data);
		return TRUE;
	}

	// NASIHAT UNTUK SANGHA
	public function get_NUS($id_NUS)
	{
	    $this->db->select('*');
	    $this->db->where('id_nasihatuntukSangha', $id_NUS);
	    return $this->db->get('nasihat_untuk_sangha')->row();

	}

	public function inputNUS_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('nasihat_untuk_sangha', $data);
		return TRUE;
	}

	// PERSIAPAN
	public function get_P($id_p)
	{
	    $this->db->select('*');
	    $this->db->where('id_persiapan', $id_p);
	    return $this->db->get('persiapan')->row();

	}

	public function inputP_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('persiapan', $data);
		return TRUE;
	}

	// SILASRAMA
	public function get_S($id_s)
	{
	    $this->db->select('*');
	    $this->db->where('id_silasrama', $id_s);
	    return $this->db->get('silasrama')->row();

	}

	public function inputS_update($where, $data)
	{
		$this->db->where($where);
		$this->db->update('silasrama', $data);
		return TRUE;
	}

	// PROGRAM JADWAL BULANAN
	public function input_tambahJB($data)
	{
		$this->db->insert('jadwal_bulanan', $data);
		return TRUE;
	}

	public function get_JB($id_JB)
	{
	    $this->db->select('*');
	    $this->db->where('id_JadwalBulanan', $id_JB);
	    return $this->db->get('jadwal_bulanan')->row();

	}

	public function inputJB_edit($where, $data)
	{
		$this->db->where($where);
		$this->db->update('jadwal_bulanan', $data);
		return TRUE;
	}

	// PROGRAM JADWAL TAHUNAN
	public function input_tambahJT($data)
	{
		$this->db->insert('jadwal_tahunan', $data);
		return TRUE;
	}

	public function get_JT($id_JT)
	{
	    $this->db->select('*');
	    $this->db->where('id_JadwalTahunan', $id_JT);
	    return $this->db->get('jadwal_tahunan')->row();

	}

	public function inputJT_edit($where, $data)
	{
		$this->db->where($where);
		$this->db->update('jadwal_tahunan', $data);
		return TRUE;
	}

	// PROGRAM JADWAL MENDATANG
	public function input_tambahJMG($data)
	{
		$this->db->insert('jadwal_mendatang', $data);
		return TRUE;
	}

	public function get_JMG($id_JMG)
	{
	    $this->db->select('*');
	    $this->db->where('id_JadwalMendatang', $id_JMG);
	    return $this->db->get('jadwal_mendatang')->row();

	}

	public function inputJMG_edit($where, $data)
	{
		$this->db->where($where);
		$this->db->update('jadwal_mendatang', $data);
		return TRUE;
	}


	// CODING TAG, KOMENTAR, TAG ARTIKEL
	public function ambilTagArtikel ($slug)
	{
		$query = $this->db->query("
			SELECT *
			FROM tag_artikel
			JOIN tag ON tag.id_tag = tag_artikel.id_tag
			WHERE id_artikel = '{$id_artikel}'
		");

		return $query->result();
	}

	public function isiSubkomentar ($komentar, $tabel, $id_tabel)
	{
		$query = $this->db->query("
			SELECT id_komentar, waktu, komentar, name
			FROM komentar
			JOIN register ON register.id = komentar.id_user
			WHERE tabel_induk = '{$tabel}'
			AND id_tabel_induk = '{$id_tabel}'
			AND id_induk_komentar = '{$komentar['id_komentar']}'
		");

		$komentar['subkomentar'] = $query->result_array();

		if (count($komentar['subkomentar']) > 0) {
			// ada subkomentar dari subkomentar
			foreach ($komentar['subkomentar'] as $key => $value) {
				$subkomentar = $this->isiSubkomentar($value, $tabel, $id_tabel);

				$komentar['subkomentar'][$key] = $subkomentar;
			}
		}

		return $komentar;
	}

	public function ambilKomentarArtikel ($slug)
	{
		// ambil data komentar (komentar utama yang tidak membalas komentar lain)
		$query = $this->db->query("
			SELECT id_komentar, waktu, komentar, name
			FROM komentar
			JOIN register ON register.id = komentar.id_user
			WHERE tabel_induk = 'tbl_artikel'
			AND id_tabel_induk = '{$id_artikel}'
			AND id_induk_komentar IS NULL
		");
		$komentar = $query->result_array();

		// perulangan tiap komentar, isi tiap komentar dengan subkomentar (komentar yang membalas komentar lain)
		for ($i=0; $i < count($komentar); $i++) {
			$komentar[$i] = $this->isiSubkomentar($komentar[$i], 'tbl_artikel', $id_artikel);
		}

		return $komentar;
	}

	public function tampilkanKomentar ($komentar, $html = '')
	{
		// html pembuka
		$html .= '
			<li class="comment">
			  <div class="vcard bio">
				 <img src="'.base_url('assets/images/person_1.jpg').'" alt="Image placeholder">
			  </div>
			  <div class="comment-body">
				<h3>'.$komentar['name'].'</h3>
				<div class="meta"><span class="tanggal">'.$komentar['waktu'].'</span></div>
				<p>'.$komentar['komentar'].'</p>
				<p><a href="#" class="reply">Reply</a></p>
			  </div>
	    ';

		// cek apakah ada subkomentar
		if (count($komentar['subkomentar']) > 0) {
			// html pembuka subkomentar
			$html .= '
			  	<ul class="children">
			';

			// perulangan untuk tiap subkomentar
			foreach ($komentar['subkomentar'] as $key => $value) {
				$html = $this->tampilkanKomentar($value, $html);
			}

			//html penutup subkomentar
			$html .= '
				</ul>
			';
		}

		//html penutup komentar
		$html .= '
		  	</li>
		';

		return $html;
	}

	public function hitungJumlahKomentarArtikel($slug)
	{
		$query = $this->db->query("
			SELECT COUNT(*) AS total
			FROM komentar
			WHERE tabel_induk = 'tbl_artikel'
			AND id_tabel_induk = '{$id_artikel}'
		");

		return $query->row('total');
	}

	public function inputKontak($data)
	{
		$this->db->insert('contact', $data);
		return TRUE;
	}

	public function inputKantorsangha($data)
	{
		$this->db->insert('kantor_sangha', $data);
		return TRUE;
	}

	public function get_gallery($id_gallery){
	    $this->db->select('*');
	    $this->db->where('id_gallery',$id_gallery);
	    return $this->db->get('gallery')->row();

	}

	public function inputGallery_edit($where, $data)
	{
		$this->db->where($where);
		$this->db->update('gallery', $data);
		return TRUE;
	}

	public function get_kontak($id_kontak){
	    $this->db->select('*');
	    $this->db->where('id', $id_kontak);
	    return $this->db->get('contact')->row();

	}
	public function Inputgaleri2($data)
	{
		$this->db->insert('galeri2', $data);
		return TRUE;
	}

	public function get_galeri($slug){
	    
	    $this->db->select('album.*, galeri_album.id_galeri, galeri_album.gambar_galeri');
		$this->db->join('album','album.id_album = galeri_album.id_album');
	    $this->db->where('galeri_album.slug', $slug);
	    return $this->db->get('galeri_album');

	}

	public function getData($limit, $start)
	{
		// return $this->db->get('galeri_album', $limit, $start)->result_array();
		$this->db->select('album.*, galeri_album.id_galeri, galeri_album.gambar_galeri');
		$this->db->join('album','album.id_album = galeri_album.id_album');

		$query = $this->db->get('galeri_album', $limit, $start);
		return $query;
	}

	public function countDataGaleri()
	{
		return $this->db->get('galeri_album')->num_rows();
	}

	public function getHomeSlideshow($limit, $start)
	{

		$query = $this->db->get('home_slideshow', $limit, $start);
		return $query;
	}

	public function getHomeKutipan($limit, $start)
	{

		$query = $this->db->get('home_kutipan', $limit, $start);
		return $query;
	}

	public function getHomeLainnya($limit, $start)
	{

		$query = $this->db->get('home_lainnya', $limit, $start);
		return $query;
	}

	public function getAdmin($limit, $start)
	{

		$query = $this->db->get('admin', $limit, $start);
		return $query;
	}

	public function getBerita($limit, $start)
	{

		$query = $this->db->get('tbl_berita', $limit, $start);
		return $query;
	}

	public function getArtikel($limit, $start)
	{

		$query = $this->db->get('tbl_artikel', $limit, $start);
		return $query;
	}

	public function getDonasi($limit, $start)
	{

		$query = $this->db->get('donasi', $limit, $start);
		return $query;
	}

	public function getDs($limit, $start)
	{

		$this->db->select('donasi.*, donasi_slideshow.id_donasiSlide, donasi_slideshow.gambar_slideshow');
		$this->db->join('donasi','donasi.id_donasi = donasi_slideshow.id_donasi');

		$query = $this->db->get('donasi_slideshow', $limit, $start);
		return $query;
	}

	public function get_ads($limit, $start)
	{

		$this->db->select('jadwal_mendatang.*, akandatang_slideshow.id_adSlide, akandatang_slideshow.gambar_slideshow');
		$this->db->join('jadwal_mendatang','jadwal_mendatang.id_jadwalMendatang = akandatang_slideshow.id_JadwalMendatang');

		$query = $this->db->get('akandatang_slideshow', $limit, $start);
		return $query;
	}

	public function get_sds($limit, $start)
	{
		$this->db->select('jadwal_mingguan.*, sedangberjalan_slideshow.id_sbSlide, sedangberjalan_slideshow.gambar_slideshow');
		$this->db->join('jadwal_mingguan','jadwal_mingguan.id_jadwalMingguan = sedangberjalan_slideshow.id_jadwalMingguan');

		$query = $this->db->get('sedangberjalan_slideshow', $limit, $start);
		return $query;
	}

	public function get_tbs($limit, $start)
	{

		$this->db->select('jadwal_bulanan.*, telahberakhir_slideshow.id_tbSlide, telahberakhir_slideshow.gambar_slideshow');
		$this->db->join('jadwal_bulanan','jadwal_bulanan.id_jadwalBulanan = telahberakhir_slideshow.id_jadwalBulanan');

		$query = $this->db->get('telahberakhir_slideshow', $limit, $start);
		return $query;
	}

	public function get_adGaleri($limit, $start)
	{

		$this->db->select('jadwal_mendatang.*, akandatang_galeri.id_adGaleri, akandatang_galeri.gambar_galeri');
		$this->db->join('jadwal_mendatang','jadwal_mendatang.id_jadwalMendatang = akandatang_galeri.id_jadwalMendatang');

		$query = $this->db->get('akandatang_galeri', $limit, $start);
		return $query;
	}

	public function get_tbGaleri($limit, $start)
	{

		$this->db->select('jadwal_bulanan.*, telahberakhir_galeri.id_tbGaleri, telahberakhir_galeri.gambar_galeri');
		$this->db->join('jadwal_bulanan','jadwal_bulanan.id_jadwalBulanan = telahberakhir_galeri.id_jadwalBulanan');

		$query = $this->db->get('telahberakhir_galeri', $limit, $start);
		return $query;
	}

	public function get_sbGaleri($limit, $start)
	{

		$this->db->select('jadwal_mingguan.*, sedangberjalan_galeri.id_sbGaleri, sedangberjalan_galeri.gambar_galeri');
		$this->db->join('jadwal_mingguan','jadwal_mingguan.id_jadwalMingguan = sedangberjalan_galeri.id_jadwalMingguan');

		$query = $this->db->get('sedangberjalan_galeri', $limit, $start);
		return $query;
	}

	public function getDg($limit, $start)
	{

		$this->db->select('donasi.*, donasi_galeri.id_donasiGaleri, donasi_galeri.gambar_galeri');
		$this->db->join('donasi','donasi.id_donasi = donasi_galeri.id_donasi');

		$query = $this->db->get('donasi_galeri', $limit, $start);
		return $query;
	}

	// public function get_ADGLR($id_adGaleri)
	// {
	// 	// $this->db->select('*');
	//     $this->db->select('jadwal_mendatang.*, akandatang_galeri.id_adGaleri, akandatang_galeri.gambar_galeri');
	// 	$this->db->join('jadwal_mendatang','jadwal_mendatang.id_jadwalMendatang = akandatang_slideshow.id_JadwalMendatang');


	//     $this->db->where('id_adSlide',$id_adGaleri);
	//     return $this->db->get('akandatang_galeri')->row();

	// }

	public function getAS($limit, $start)
	{

		$query = $this->db->get('anggota_sangha', $limit, $start);
		return $query;
	}

	public function getKS($limit, $start)
	{

		$query = $this->db->get('kantor_sangha', $limit, $start);
		return $query;
	}

	public function getKontak($limit, $start)
	{

		$query = $this->db->get('contact', $limit, $start);
		return $query;
	}

	public function getJadwalMingguan($limit, $start)
	{

		$query = $this->db->get('jadwal_mingguan', $limit, $start);
		return $query;
	}

	public function getJadwalBulanan($limit, $start)
	{

		$query = $this->db->get('jadwal_bulanan', $limit, $start);
		return $query;
	}

	public function getTahunan($limit, $start)
	{

		$query = $this->db->get('jadwal_tahunan', $limit, $start);
		return $query;
	}

	public function getMendatang($limit, $start)
	{

		$query = $this->db->get('jadwal_mendatang', $limit, $start);
		return $query;
	}

	public function hitung_visitor()
    {
   
  		// $this->db->select('jumlahVistor');
		// $this->db->from('tbl_berita');
		$query = $this->db->get('tbl_berita');
		$this->db->set('jumlahVisitor');
		$this->db->join('tbl_berita', 'tbl_berita.jumlahVistor = tbl_artikel.jumlahVistor');
		$this->db->count_all('tbl_berita');
		return $query;
    }

    public function tampil_data_bulan()
    {
    	$this->db->select("tbl_berita.*, tbl_berita.judul_berita, tbl_berita.tanggal_content");
		// $this->db->join('laundry_anakan', 'laundry_induk.id = laundry_anakan.id_laundry_induk');
		$this->db->like('tanggal_content', $this->input->get('data_bulan'), 'after');
		// $this->db->where('jumlahVistor');

		// SELECT laundry_anakan.*, laundry_induk.nama, laundry_induk.alamat, laundry_induk.no_hp, laundry_induk.tgl_masuk, laundry_induk.tgl_keluar FROM `laundry_induk` JOIN laundry_anakan ON (laundry_induk.id = laundry_anakan.id_laundry_induk) WHERE tgl_masuk LIKE '2019-04%'
		
		$tabel_bulan = $this->db->get('tbl_berita');
		return $tabel_bulan->result();
    }

    public function tampil_dataDana_bulan()
    {
    	$this->db->select("konfirmasi_dana.*, konfirmasi_dana.nama_pendaftar, konfirmasi_dana.email, konfirmasi_dana.alamat, konfirmasi_dana.no_telp, konfirmasi_dana.tanggal_transfer, konfirmasi_dana.pilih_donasi, konfirmasi_dana.bank_transfer, konfirmasi_dana.jumlah_transfer, konfirmasi_dana.jumlah_paket, konfirmasi_dana.jenis_paket, konfirmasi_dana.nama_dedikasi, konfirmasi_dana.pesan");
		// $this->db->join('laundry_anakan', 'laundry_induk.id = laundry_anakan.id_laundry_induk');
		$this->db->like('tanggal_transfer', $this->input->get('data_bulan'));
		$this->db->like('pilih_donasi', $this->input->get('pilih_donasi'));

		// SELECT laundry_anakan.*, laundry_induk.nama, laundry_induk.alamat, laundry_induk.no_hp, laundry_induk.tgl_masuk, laundry_induk.tgl_keluar FROM `laundry_induk` JOIN laundry_anakan ON (laundry_induk.id = laundry_anakan.id_laundry_induk) WHERE tgl_masuk LIKE '2019-04%'
		
		$tabel_bulan = $this->db->get('konfirmasi_dana');
		return $tabel_bulan->result();
    }

    public function tampil_exportDana()
    {
    	$this->db->select("konfirmasi_dana.*, konfirmasi_dana.nama_pendaftar, konfirmasi_dana.email, konfirmasi_dana.alamat, konfirmasi_dana.no_telp, konfirmasi_dana.tanggal_transfer, konfirmasi_dana.pilih_donasi, konfirmasi_dana.bank_transfer, konfirmasi_dana.jumlah_transfer, konfirmasi_dana.jumlah_paket, konfirmasi_dana.jenis_paket, konfirmasi_dana.nama_dedikasi, konfirmasi_dana.pesan");
		// $this->db->join('laundry_anakan', 'laundry_induk.id = laundry_anakan.id_laundry_induk');
		$this->db->like('tanggal_transfer', $this->input->get('data_bulan'));
		$this->db->like('pilih_donasi', $this->input->get('pilih_donasi'));

		// SELECT laundry_anakan.*, laundry_induk.nama, laundry_induk.alamat, laundry_induk.no_hp, laundry_induk.tgl_masuk, laundry_induk.tgl_keluar FROM `laundry_induk` JOIN laundry_anakan ON (laundry_induk.id = laundry_anakan.id_laundry_induk) WHERE tgl_masuk LIKE '2019-04%'
		
		$tabel_bulan = $this->db->get('konfirmasi_dana');
		return $tabel_bulan->result();
    }

  //   public function ambilDana()
  //   {
  //   	$this->db->order_by('nama_pendaftar', 'desc');
  //   	$this->db->limit(1);
		// return $this->db->get('konfirmasi_dana')->row();
  //   }
	

	

	

	

	

	
	
	
}
