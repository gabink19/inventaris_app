<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Laptop extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model(array('m_laptop','m_masuk','m_barang','m_maintenance'));
        chek_session();
    }
	public function index() {
        //$data['record'] = $this->m_barang->listBarang()->result(); 
        $this->template->display('laptop/view');       
    }		
   
    function view_data(){        
        if ($this->session->userdata('role')=='Administrator'){
            $ambildata=$this->m_laptop->semua()->result();
        }else{
            $ambildata=$this->m_laptop->semuagid()->result();
        }        
        $no=1;
        foreach($ambildata as $r) {  
        $dept=$this->db->get_where('tb_departemen',array('id_dept'=>$r->parent))->row_array();
            if($r->parent==0){
                    $deptnama=$r->nama;
            }else{
                    $deptnama=$dept['nama'];
            }
            if ($r->status =="DIGUNAKAN"){
                $status="<span class='label label-success'>" . $r->status. "</span>";
            }elseif($r->status =="SIAP DIGUNAKAN") {
                $status="<span class='label label-info'>" .$r->status."</span>";
            }elseif($r->status =="DIPERBAIKI") {
                $status="<span class='label label-warning'>" .$r->status."</span>";
            } else{
				$status="<span class='label label-warning'>" .$r->status."</span>";
			}
            $query[] = array(
                'no'=>$no++,
                'kode_laptop'=>$r->kode_laptop,
                'nama_pengguna'=>$r->nama_pengguna, 
                'dept'=>$deptnama, 
                'subdept'=>$r->nama,         
                'tgl_inv'=>tgl_indo($r->tgl_inv),
                'nama_laptop'=>$r->nama_laptop, 
                'spesifikasi'=>$r->spesifikasi, 
                'sn'=>$r->serial_number, 
                'ip'=>$r->network, 
                'status'=>$status, 
                'view'=>anchor('laptop/detail/' . $r->kode_laptop, '<i class="btn btn-info btn-sm fa fa-eye" data-toggle="tooltip" title="View Detail"></i>'),
                'delete'=>anchor('laptop/delete/' . $r->id_laptop, '<i class="btn-sm btn-info glyphicon glyphicon-trash" data-toggle="tooltip" title="Delete"></i>', array('onclick' => "return confirm('Data Akan di Hapus?')")),
            );
        }        
        $result=array('data'=>$query);
        echo  json_encode($result);
    }   

    function add() {              
        $this->_set_rules(); 
        //$this->form_validation->set_message('is_unique', '%s Sudah Ada');
        //$this->form_validation->set_rules('no_inv', 'No. Inventaris', 'trim|required|is_unique[tb_inv_laptop.kode_laptop]');       
        if ($this->form_validation->run() == true) {
            $gid=$this->session->userdata('gid');           
            $data = array(
                'kode_laptop' => $this->m_laptop->kdotomatis(),
                'id_pengguna' => $this->input->post('pengguna'),
                'nama_laptop' => $this->input->post('merek'),
                'spesifikasi' => $this->input->post('spek'),
                'serial_number' => $this->input->post('sn'),
                'network' => $this->input->post('ip'),
                'tgl_inv' =>$this->input->post('tgl_inv'),
                'harga_beli' =>$this->input->post('harga'),
                'gid' => $gid,
                'milik_pribadi' =>$this->input->post('milik_pribadi'),
                'user_login_akun_sendiri' =>$this->input->post('user_login_akun_sendiri'),
                'rutin_ubah_pass' =>$this->input->post('rutin_ubah_pass'),
                'terinstall_av' =>$this->input->post('terinstall_av'),
                'media_transfer_file' =>$this->input->post('media_transfer_file'),
                'jumlah_asset_ruangan' =>$this->input->post('jumlah_asset_ruangan'),
                'tindaklanjut_penggunaan_akun' =>$this->input->post('tindaklanjut_penggunaan_akun'),
                'tindaklanjut_ubah_pass' =>$this->input->post('tindaklanjut_ubah_pass'),
                'tindaklanjut_av' =>$this->input->post('tindaklanjut_av'),
                'nama_petugas_assesmen' =>$this->input->post('nama_petugas_assesmen'),
                'aplikasi_yg_digunakan' => implode(', ', $this->input->post('aplikasi_yg_digunakan')),
                'lokasi_komputer' =>$this->input->post('lokasi_komputer'),
                'tindaklanjut_media' =>$this->input->post('tindaklanjut_media'),
            );
            $data2=array(
                'no_inventaris' => $this->m_laptop->kdotomatis(),
				'id_pengguna_awal' => $this->input->post('pengguna'),
                'id_pengguna' => $this->input->post('pengguna'),
                'tgl_update'=>date('Y-m-d H:i:s'),
                'admin'=>$this->session->userdata('nama'),
                'note'=>'Inventory Baru',
                );
            $this->m_laptop->simpan($data);
            $this->m_laptop->simpan_history($data2);
            redirect('laptop');
        } else {              
	        $data['pengguna'] = $this->m_laptop->getpenggunagid()->result();            
            $this->template->display('laptop/tambah',$data);
        }
    }	
    
    function history() {              
        $this->form_validation->set_rules('pengguna', 'Nama Pengguna', 'required');
        $this->form_validation->set_rules('tgl_update', 'Tgl Update', 'required');
        $this->form_validation->set_rules('catatan', 'Catatan/ Keterangan', 'required'); 
        if ($this->form_validation->run() == true) {                  
            $data = array(
                'tgl_update' => $this->input->post('tgl_update'),
                'no_inventaris' => $this->input->post('no_inv'),
                'status' => $this->input->post('status'),
                'admin' => $this->session->userdata('nama'),
				'id_pengguna_awal' => $this->input->post('pengguna_awal'),
                'id_pengguna' => $this->input->post('pengguna'),
                'note' => $this->input->post('catatan')                
            );  
			if ($this->input->post('status')== "Dipinjamkan"){
				$data2=array('id_pengguna' => $this->input->post('pengguna'),'status'=>"DIPINJAMKAN");
				}else if($this->input->post('status')== "Kembali"){
					$data2=array('id_pengguna' => $this->input->post('pengguna'),'status'=>"DIGUNAKAN");
				}else{
					$data2=array('id_pengguna' => $this->input->post('pengguna'),'status'=>"DIGUNAKAN");
				}				
            $kode=$this->input->post('no_inv');         
            $this->m_laptop->history($data);               
            $this->m_laptop->update($kode,$data2);          
            redirect('laptop/detail/'.$kode);
        } else { 
            $id = $this->uri->segment(3);              
            $data['recordall'] = $this->m_laptop->getall($id)->row_array(); 
            $data['pengguna'] = $this->m_laptop->getpenggunagid()->result();           
            $this->template->display('laptop/history',$data);
        }
    }
    
    function edithistory($id) {              
        $this->form_validation->set_rules('pengguna', 'Nama Pengguna', 'required');
        $this->form_validation->set_rules('tgl_update', 'Tgl Update', 'required');
        $this->form_validation->set_rules('catatan', 'Catatan/ Keterangan', 'required'); 
        if ($this->form_validation->run() == true) {                  
            $data = array(
                'tgl_update' => $this->input->post('tgl_update'),
                'status' => $this->input->post('status'),
                'id_pengguna' => $this->input->post('pengguna'),
                'note' => $this->input->post('catatan')                
            ); 
			if ($this->input->post('status')== "Dipinjamkan"){
				$data2=array('id_pengguna' => $this->input->post('pengguna'),'status'=>"DIPINJAMKAN");
				}else if($this->input->post('status')== "Kembali"){
					$data2=array('id_pengguna' => $this->input->post('pengguna'),'status'=>"DIGUNAKAN");
				}else{
					$data2=array('id_pengguna' => $this->input->post('pengguna'),'status'=>"DIGUNAKAN");
				}	
            $id=$this->input->post('id');          
            $kode=$this->input->post('no_inv'); 
            $this->m_laptop->update_mutasi($id,$data);
			$this->m_laptop->update($kode,$data2);
            redirect('laptop/detail/'.$kode);
        } else { 
            $data['record'] = $this->m_laptop->get_mutasi($id)->row_array(); 
            $this->template->display('laptop/edithistory',$data);
        }
    }      

    //function edit() {       
       // if (isset($_POST['submit'])) {
        	
           // $this->_set_rules();
           // if ($this->form_validation->run() == true) {
               // $data = array( 
                 //       'id_pengguna' => $this->input->post('pengguna'),
                   //     'nama_laptop' => $this->input->post('merek'),
                     //   'spesifikasi' => $this->input->post('spek'),
                       // 'serial_number' => $this->input->post('sn'),
                        //'network' => $this->input->post('ip'),
                        //'tgl_inv' =>$this->input->post('tgl_inv')
            //        );
            //    $kode=$this->input->post('kode');
            //    $this->m_laptop->edit($kode,$data);
            //    redirect('laptop');                
            //}else {
            //    $id = $this->input->post('kode');                                          
            //    $data['record'] = $this->m_laptop->getkode($id)->row_array();
            //    $this->template->display('laptop/edit', $data);
        //  } 
        //  }else{ 
            //    $id = $this->uri->segment(3);                                                                         
            //    $data['record'] = $this->m_laptop->getkode($id)->row_array();
            //    $this->template->display('laptop/edit', $data);
        //  }
    //}

    function detail() { 
        $id = $this->uri->segment(3);                                           
        $data['recordall'] = $this->m_laptop->getall($id)->row_array();
        $data['record'] = $this->m_laptop->getkode($id)->row_array();
        $data['service']=$this->m_laptop->get_service($id)->result();
        $data['history']=$this->m_laptop->get_history($id)->result();
        $this->template->display('laptop/detail', $data);            
    }
	
	function print_maintenance() { 
        $id = $this->uri->segment(3);                                           
        $data['recordall'] = $this->m_laptop->getall($id)->row_array();
        $data['service']=$this->m_laptop->get_service($id)->result();
        $this->load->view('laptop/print_maintenance', $data);            
    }

   function print_history() { 
        $id = $this->uri->segment(3); 
		$data['record'] = $this->m_laptop->get_mutasi($id)->row_array(); 
        $this->load->view('laptop/print_history',$data);           
    }

    function maintadd($id) {
        $this->form_validation->set_rules('catatan', 'Catatan', 'required');
        $this->form_validation->set_rules('tgl_permohonan', 'Tgl. Permohonan', 'required');
        $this->form_validation->set_rules('type', 'Maintenance Type', 'required');       
        if ($this->form_validation->run() == true) {
            $supplier=$this->input->post('supplier');
            $id=$this->session->userdata('gid');
            $data = array(
                'no_permohonan' => $this->m_maintenance->kdotomatis($id),
                'tgl_permohonan' => $this->input->post('tgl_permohonan'),
                'tgl_selesai' => $this->input->post('tgl_selesai'),
                'jenis_permohonan' => $this->input->post('type'),                
                'nama_kategori' => 'Laptop',
                'no_inventaris' => $this->input->post('inventaris'), 
                'catatan_pemohon' => $this->input->post('catatan'),
                'catatan_perbaikan' => $this->input->post('catatan_perbaikan'),
                'nama_supplier' => $supplier,
                'biaya' => $this->input->post('biaya'),
                'gid' => $this->session->userdata('gid')
            );
            $detail=array(
                'no_permohonan' => $this->m_maintenance->kdotomatis($id),
                'tgl_proses' =>date('Y-m-d H:i:s'),  
                'catatan' => $this->input->post('catatan'),
                'user' => "User",
             );
            $kode=$this->input->post('inventaris');
            $this->m_maintenance->simpan($data);
            $this->m_maintenance->simpan_detail($detail);
            redirect('laptop/detail/'.$kode); 
        } else {
            $data['record'] = $this->m_laptop->getkode($id)->row_array();
            $data['supplier'] = $this->m_masuk->getsupplier()->result();             
            $this->template->display('laptop/addnew',$data);
        }
    }

    function update(){
        $this->_set_rules();
        if ($this->form_validation->run() == true) {
            $data = array( 
                        'id_pengguna' => $this->input->post('pengguna'),
                        'nama_laptop' => $this->input->post('merek'),
                        'spesifikasi' => $this->input->post('spek'),
                        'serial_number' => $this->input->post('sn'),
                        'harga_beli' => $this->input->post('harga'),
                        'network' => $this->input->post('ip'),
                        'tgl_inv' =>$this->input->post('tgl_inv'),
                        'status' =>$this->input->post('status'),
                        'milik_pribadi' =>$this->input->post('milik_pribadi'),
                        'user_login_akun_sendiri' =>$this->input->post('user_login_akun_sendiri'),
                        'rutin_ubah_pass' =>$this->input->post('rutin_ubah_pass'),
                        'terinstall_av' =>$this->input->post('terinstall_av'),
                        'media_transfer_file' =>$this->input->post('media_transfer_file'),
                        'jumlah_asset_ruangan' =>$this->input->post('jumlah_asset_ruangan'),
                        'tindaklanjut_penggunaan_akun' =>$this->input->post('tindaklanjut_penggunaan_akun'),
                        'tindaklanjut_ubah_pass' =>$this->input->post('tindaklanjut_ubah_pass'),
                        'tindaklanjut_av' =>$this->input->post('tindaklanjut_av'),
                        'nama_petugas_assesmen' =>$this->input->post('nama_petugas_assesmen'),
                        'aplikasi_yg_digunakan' => implode(', ', $this->input->post('aplikasi_yg_digunakan')),
                        'lokasi_komputer' =>$this->input->post('lokasi_komputer'),
                        'tindaklanjut_media' =>$this->input->post('tindaklanjut_media'),
						'note' => $this->input->post('note')
                    );
            $kode=$this->input->post('kode');
            $this->m_laptop->update($kode,$data);
            redirect('laptop/detail/'.$kode);                
        }else {
            $id = $this->input->post('kode');                                          
            $data['recordall'] = $this->m_laptop->getall($id)->row_array();
            $data['record'] = $this->m_laptop->getkode($id)->row_array();
            $data['service']=$this->m_laptop->get_service($id)->result();
            $data['history']=$this->m_laptop->get_history($id)->result();
            $this->template->display('laptop/detail', $data);
        } 
    }

    function delete($kode) {
        if ($this->session->userdata('role')=='Administrator'){
            $this->m_laptop->hapus($kode); 
            redirect('laptop'); 
        }else{
            $this->session->set_flashdata('result_hapus', '<br><p class="text-red">Maaf Anda tidak di ijinkan menghapus data ini !</p>');
            redirect('laptop');
        }       
    }

    function _set_rules() {
        $this->form_validation->set_rules('pengguna', 'Nama Pengguna', 'required');
        $this->form_validation->set_rules('merek', 'Merek/Brand', 'required');
        $this->form_validation->set_rules('spek', 'Spesifikasi', 'required');
        $this->form_validation->set_rules('sn', 'Serial Number', 'required'); 
        $this->form_validation->set_rules('harga', 'Harga Beli', 'required|numeric');     
        // $this->form_validation->set_rules('ip', 'IP Address', 'required|valid_ip');       
        $this->form_validation->set_rules('tgl_inv', 'Tgl. Inventaris', 'required');  
        $this->form_validation->set_error_delimiters("<div class='alert alert-danger alert-dismissable'>", "</div>");
    }

    function download(){        
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setCellValue('A1', 'No');
        $sheet->setCellValue('B1', 'Merek komputer/laptop yang di asesmen');
        $sheet->setCellValue('C1', 'Unit Kerja/KSM/Instalasi/Bagian');
        $sheet->setCellValue('D1', 'Tanggal asesmen');
        $sheet->setCellValue('E1', 'Apakah komputer atau laptop milik pribadi ?');
        $sheet->setCellValue('F1', 'Apakah user login SIMRS menggunakan akun sendiri ? bila "tidak" tuliskan tindaklanjutnya');
        $sheet->setCellValue('G1', 'Apakah user mengubah sandi akun SIMRS-nya dan akun akses internet rutin tiap 6 bulan sekali ? bila "tidak" tuliskan tindaklanjutnya');
        $sheet->setCellValue('H1', 'Apakah komputer atau laptop terinstal antivirus? bila "Ya" tuliskan nama antivirus dan update terakhir, bila "Tidak" tuliskan tindaklanjutnya');
        $sheet->setCellValue('I1', 'Melalui media apa perpindahan/pertukaran file atau data yang biasa pengguna lakukan ? selain jawaban "Tidak pernah melakukan pertukaran data" lakukan tindaklanjutnya');
        $sheet->setCellValue('J1', 'Nama pegawai yang di asesmen');
        $sheet->setCellValue('K1', 'IP Komputer');
        $sheet->setCellValue('L1', 'Jumlah aset ruangan berupa PC/Laptop');
        $sheet->setCellValue('M1', 'Apakah user login SIMRS menggunakan akun sendiri ? bila "tidak" tuliskan tindaklanjutnya');
        $sheet->setCellValue('N1', 'Tindaklanjutnya penggunaan akun; contoh : bersurat ke umsi, sdm, komkordik, dll');
        $sheet->setCellValue('O1', 'Tindaklanjutnya mengubah sandi (alasannya..)');
        $sheet->setCellValue('P1', 'Tindaklanjut yg akan /sudah dilakukan terkait antivirus dan update');
        $sheet->setCellValue('Q1', 'Tindaklanjutnya media pertukaran data');
        $sheet->setCellValue('R1', 'Nama petugas asesmen');
        $sheet->setCellValue('S1', 'Aplikasi yang digunakan ?');
        $sheet->setCellValue('T1', 'Lokasi/ruangan Komputer');
        $sheet->setCellValue('U1', 'Nama pegawai yang di asesmen');
        $sheet->setCellValue('V1', 'QRCode');
         
        $ambildata=$this->m_laptop->semua()->result();
        $i = 2;
        $no = 1;
        foreach ($ambildata as $key => $value) {
            $sheet->setCellValue('A'.$i, $no++);
            $sheet->setCellValue('B'.$i, $value->nama_laptop);
            $sheet->setCellValue('C'.$i, $value->nama);
            $sheet->setCellValue('D'.$i, date('d-m-Y',strtotime($value->tgl_inv)));   
            $sheet->setCellValue('E'.$i, $value->milik_pribadi);   
            $sheet->setCellValue('F'.$i, $value->user_login_akun_sendiri);   
            $sheet->setCellValue('G'.$i, $value->rutin_ubah_pass);   
            $sheet->setCellValue('H'.$i, $value->terinstall_av);   
            $sheet->setCellValue('I'.$i, $value->media_transfer_file);   
            $sheet->setCellValue('J'.$i, $value->nama_pengguna);   
            $sheet->setCellValue('K'.$i, $value->network);   
            $sheet->setCellValue('L'.$i, $value->jumlah_asset_ruangan);   
            $sheet->setCellValue('M'.$i, $value->user_login_akun_sendiri);   
            $sheet->setCellValue('N'.$i, $value->tindaklanjut_penggunaan_akun);   
            $sheet->setCellValue('O'.$i, $value->tindaklanjut_ubah_pass);   
            $sheet->setCellValue('P'.$i, $value->tindaklanjut_av);   
            $sheet->setCellValue('Q'.$i, $value->tindaklanjut_media);   
            $sheet->setCellValue('R'.$i, $value->nama_petugas_assesmen);   
            $sheet->setCellValue('S'.$i, $value->aplikasi_yg_digunakan);   
            $sheet->setCellValue('T'.$i, $value->lokasi_komputer);   
            $sheet->setCellValue('U'.$i, $value->nama_pengguna);  
            $content = @file_get_contents(site_url('/barcode/'.$value->kode_laptop).'.png');
            if($content !== FALSE) {
                $sheet->setCellValue('V'.$i, site_url('/barcode/'.$value->kode_laptop).'.png'); 
            }else{  
                $sheet->setCellValue('V'.$i, ""); 
            }
            $i++; 
        }
         
        $styleArray = [
                    'borders' => [
                        'allBorders' => [
                            'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                        ],
                    ],
                ];
        $i = $i - 1;
        $sheet->getStyle('A1:V'.$i)->applyFromArray($styleArray);
        // $spreadsheet->getActiveSheet()->getStyle('F1')->getAlignment()->setWrapText(true); 
        // $spreadsheet->getActiveSheet()->getStyle('G1')->getAlignment()->setWrapText(true); 
        // $spreadsheet->getActiveSheet()->getStyle('H1')->getAlignment()->setWrapText(true); 
        // $spreadsheet->getActiveSheet()->getStyle('I1')->getAlignment()->setWrapText(true); 
        // $spreadsheet->getActiveSheet()->getStyle('M1')->getAlignment()->setWrapText(true); 
        $filename = 'Data Inventaris Laptop.xlsx';
        try {
            $writer = new Xlsx($spreadsheet);
            $writer->save($filename);
            $content = file_get_contents($filename);
        } catch(Exception $e) { 
            exit($e->getMessage());
        }

        header("Content-Disposition: attachment; filename=".$filename);

        unlink($filename);
        exit($content);
        echo "<script>window.close();</script>";
    }   
}
