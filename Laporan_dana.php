<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan_dana extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		// check auth user
		if($this->session->userdata('level') !== 'admin')
		{
			$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close" aria-hidden="true">x</button>
                  <i class="icon fa fa-close"></i> Maaf anda belum login
                </div>');
			redirect('AdminC/Auth');
		}
	}

	public function index()
	{
		$pd = $this->db->get('donasi');
		$data['pdna'] = $pd;

		$this->load->view('Admin/home_laporanDana', $data);
	}

	public function dana_bulanan()
	{
		$data = array('data_bulan' => $this->input->get('konfirmasi_dana'));

		$this->session->set_userdata('data_bulan', $data['data_bulan']);

		$data = array('pilih_donasi' => $this->input->get('konfirmasi_dana'));

		$this->session->set_userdata('pilih_donasi', $data['pilih_donasi']);

		$data['tabel_bulan'] = $this->Biara_m->tampil_dataDana_bulan();
		$this->load->view('Admin/laporanDana', $data);
	}

	public function laporan_excel()
	{
		$this->db->select("konfirmasi_dana.*, konfirmasi_dana.nama_pendaftar, konfirmasi_dana.email, konfirmasi_dana.alamat, konfirmasi_dana.no_telp, konfirmasi_dana.tanggal_transfer, konfirmasi_dana.pilih_donasi, konfirmasi_dana.bank_transfer, konfirmasi_dana.jumlah_transfer, konfirmasi_dana.jumlah_paket, konfirmasi_dana.jenis_paket, konfirmasi_dana.nama_dedikasi, konfirmasi_dana.pesan");
		// $this->db->join('laundry_anakan', 'laundry_induk.id = laundry_anakan.id_laundry_induk');
		// $this->db->group_by('konfirmasi_dana.pilih_donasi');
		// $this->db->like('pilih_donasi', $this->input->get('data_bulan');
		$this->db->like('pilih_donasi', "I'll Be There For You");
		$this->db->where('month(tanggal_transfer)', $this->input->get('data_bulan'));
		// $this->db->where('month(tanggal_transfer)', $this->input->get('pilih_donasi'));
		// $panggil_pdf['panggil_excel'] = $this->Biara_m->tampil_exportDana();
  
    	$panggil_pdf['panggil_excel'] = $this->db->get('konfirmasi_dana')->result();
   
		require(APPPATH. 'PHPExcel-1.8/PHPExcel-1.8/Classes/PHPExcel.php');
		require(APPPATH. 'PHPExcel-1.8/PHPExcel-1.8/Classes/PHPExcel/Writer/Excel2007.php');

		$object = new PHPExcel();

		$object->getProperties()->setCreator("Biaralamrim");
		$object->getProperties()->setLastModifiedBy("Biaralamrim");
		$object->getProperties()->setTitle("Form Dana");

		$object->setActiveSheetIndex(0);

		$object->getActiveSheet()->setCellValue('A1', 'No');
		$object->getActiveSheet()->setCellValue('B1', 'Nama Pendaftar');
		$object->getActiveSheet()->setCellValue('C1', 'Email');
		$object->getActiveSheet()->setCellValue('D1', 'Alamat');
		$object->getActiveSheet()->setCellValue('E1', 'No Telp');
		$object->getActiveSheet()->setCellValue('F1', 'Tanggal Transfer');
		$object->getActiveSheet()->setCellValue('G1', 'Pilih Donasi');
		$object->getActiveSheet()->setCellValue('H1', 'Bank Transfer');
		$object->getActiveSheet()->setCellValue('I1', 'Jumlah Transfer');
		$object->getActiveSheet()->setCellValue('J1', 'Jumlah Paket');
		$object->getActiveSheet()->setCellValue('K1', 'Jenis Paket');
		$object->getActiveSheet()->setCellValue('L1', 'Nama Dedikasi');
		$object->getActiveSheet()->setCellValue('M1', 'Pesan');

		$baris = 2;
		$no = 1;

		foreach ($panggil_pdf['panggil_excel'] as $dana) {
			$object->getActiveSheet()->setCellValue('A'.$baris, $no++);
			$object->getActiveSheet()->setCellValue('B'.$baris, $dana->nama_pendaftar);
			$object->getActiveSheet()->setCellValue('C'.$baris, $dana->email);
			$object->getActiveSheet()->setCellValue('D'.$baris, $dana->alamat);
			$object->getActiveSheet()->setCellValue('E'.$baris, $dana->no_telp);
			$object->getActiveSheet()->setCellValue('F'.$baris, $dana->tanggal_transfer);
			$object->getActiveSheet()->setCellValue('G'.$baris, $dana->pilih_donasi);
			$object->getActiveSheet()->setCellValue('H'.$baris, $dana->bank_transfer);
			$object->getActiveSheet()->setCellValue('I'.$baris, $dana->jumlah_transfer);
			$object->getActiveSheet()->setCellValue('J'.$baris, $dana->jumlah_paket);
			$object->getActiveSheet()->setCellValue('K'.$baris, $dana->jenis_paket);
			$object->getActiveSheet()->setCellValue('L'.$baris, $dana->nama_dedikasi);
			$object->getActiveSheet()->setCellValue('M'.$baris, $dana->pesan);

			$baris++;
		}

		$filename = "Data_Dana".'.xlsx';

		$object->getActiveSheet()->setTitle("Data Dana");

		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename="'.$filename.'"');
		header('Cache-control: max-age=0');

		$writer = PHPExcel_IOFactory::createwriter($object, 'Excel2007');
		$writer->save('php://output');

	}
}
