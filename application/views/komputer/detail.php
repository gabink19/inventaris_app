<script type="text/javascript" src="<?php echo base_url('assets/js/plugins/jQuery/jQuery-2.1.3.min.js'); ?>"></script>
<script type="text/javascript">
    $(document).ready(function(){
       $(".combobox").combobox();
    });
</script>
<style>
  input.larger {
    width: 20px;
    height: 20px;
  }
  input:hover {
    cursor: pointer;
  }
</style>
<section class="content-header">
    <h1>
        Detail Komputer
        <small>Inventaris Komputer</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-suitcase"></i>Inventaris</a></li>
        <li class="active">Komputer</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header">   
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_1" data-toggle="tab">DETAIL</a></li>
                        <li><a href="#tab_2" data-toggle="tab">EDIT</a></li>
                        <li><a href="#tab_3" data-toggle="tab">MAINTENANCE</a></li>                    
                        <li><a href="#tab_4" data-toggle="tab">HISTORY</a></li>
                        <li class="pull-right"><a href="<?php echo site_url('komputer'); ?>" class="text-muted"><i class="fa fa-remove"></i></a></li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane active" id="tab_1">
                        <div class="col-md-6 ">                        
                          <table class="table">
                          <br>
                            <tr>
                              <td style="text-align:right ">No. Inventaris :</td>
                              <td style="width:50%"><?php echo $recordall['kode_komputer'] ?></td>
                            </tr>
                            <tr>
                              <td style="text-align:right">Nama pegawai yang di asesmen :</td>
                              <td><?php echo anchor('pengguna/edit/'.$recordall['id_pengguna'],$recordall['nama_pengguna']);?></td>
                            </tr>
                            <tr>
                              <td style="text-align:right">Tgl. Inventaris :</td>
                              <td><?php echo tgl_lengkap($recordall['tgl_inv'])?></td>                    
                            </tr>
                            <tr>
                              <td style="text-align:right">Manufacture :</td>
                              <td><?php echo $recordall['nama_komputer']?></td>                    
                            </tr>
                            <tr>
                              <td style="text-align:right">Spesifikasi :</td>
                              <td><?php echo $recordall['spesifikasi']?></td>                    
                            </tr>
                            <tr>
                              <td style="text-align:right">Serial Number :</td>
                              <td><?php echo $recordall['serial_number']?></td>                    
                            </tr>
                            <tr>
                              <td style="text-align:right">IP Address :</td>
                              <td><?php echo $recordall['network']?></td>                    
                            </tr>
                            <tr>
                              <td style="text-align:right">Status :</td>
                              <td><?php echo $recordall['status']?></td>                    
                            </tr>
							              <tr>
                              <td style="text-align:right">Note/ Catatan :</td>
                              <td><?php echo $recordall['note']?></td>                    
                            </tr>
                            <tr>
                              <td style="text-align:right">Harga Beli :</td>
                              <td><?php echo 'Rp '.rupiah($recordall['harga_beli'])?></td>                    
                            </tr>
                            <tr>
                              <td style="text-align:right">Apakah komputer atau laptop milik pribadi ?:</td>
                                <td><?php echo $recordall['milik_pribadi']?></td>
                            </tr>
                            <tr>
                              <td style="text-align:right"> Apakah user login SIMRS menggunakan akun sendiri?:</td>
                                <td><?php echo $recordall['user_login_akun_sendiri']?></td>
                            </tr>
                            <tr>
                              <td style="text-align:right"> Apakah user mengubah sandi akun SIMRS-nya dan akun akses internet rutin tiap 6 bulan sekali ?:</td>
                                <td><?php echo $recordall['rutin_ubah_pass']?></td>
                            </tr>   
                            <tr>
                              <td style="text-align:right"> Apakah komputer atau laptop terinstal antivirus?:</td>
                                <td><?php echo $recordall['terinstall_av']?></td>
                            </tr>  
                            <tr>
                              <td style="text-align:right"> Melalui media apa perpindahan/pertukaran file atau data yang biasa pengguna lakukan ?:</td>
                                <td><?php echo $recordall['media_transfer_file']?></td>
                            </tr>  
                            <tr>
                              <td style="text-align:right"> Jumlah aset ruangan berupa PC/Laptop:</td>
                                <td><?php echo $recordall['jumlah_asset_ruangan']?></td>
                            </tr>  
                            <tr>
                              <td style="text-align:right"> Tindaklanjutnya penggunaan akun; contoh : bersurat ke umsi, sdm, komkordik, dll:</td>
                                <td><?php echo $recordall['tindaklanjut_penggunaan_akun']?></td>
                            </tr>   
                            <tr>
                              <td style="text-align:right"> Tindaklanjutnya mengubah sandi (alasannya..):</td>
                                <td><?php echo $recordall['tindaklanjut_ubah_pass']?></td>
                            </tr>  
                            <tr>
                              <td style="text-align:right"> Tindaklanjut yg akan /sudah dilakukan terkait antivirus dan update:</td>
                                <td><?php echo $recordall['tindaklanjut_av']?></td>
                            </tr>   
                            <tr>
                              <td style="text-align:right"> Tindaklanjutnya media pertukaran data:</td>
                                <td><?php echo $recordall['tindaklanjut_media']?></td>
                            </tr>      
                            <tr>
                              <td style="text-align:right"> Aplikasi yang digunakan ?:</td>
                                <td><?php echo $recordall['aplikasi_yg_digunakan']?></td>
                            </tr>  
                            <tr>
                              <td style="text-align:right"> Nama petugas asesmen:</td>
                                <td><?php echo $recordall['nama_petugas_assesmen']?></td>
                            </tr>     
                            <tr>
                              <td style="text-align:right"> Lokasi Komputer:</td>
                                <td><?php echo $recordall['lokasi_komputer']?></td>
                            </tr>
                          </table>
                        </div>
                      </div><!-- /.tab-pane -->
                      <div class="tab-pane" id="tab_2">
                        <div class="col-md-5">
                        <?php
                            echo form_open('komputer/update');
                        ?>
                            
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="example">No. Inventaris</label>
                                    <input type="hidden"  name="kode" value="<?php echo $record['kode_komputer'] ?>" >
                                    <input type="text" name="no_inv" disabled class="form-control" id="inputError" value="<?php echo $record['kode_komputer']; ?>" >
                                </div>                                            
                                <div class="form-group">
                                        <label>Nama pegawai yang di asesmen :</label>
                                        <select name="pengguna" class="form-control">
                                            <?php
                                            $gid=$record['gid'];
                                            $pengguna=$this->db->query("SELECT tb_pengguna.id_pengguna,tb_pengguna.nama_pengguna,tb_departemen.gid FROM tb_pengguna INNER JOIN tb_departemen ON tb_departemen.id_dept = tb_pengguna.id_dept 
                                              WHERE tb_departemen.gid ='$gid' ORDER BY tb_pengguna.nama_pengguna ASC");
                                            foreach ($pengguna->result() as $r) {
                                                echo "<option value='$r->id_pengguna'";
                                                echo $record['id_pengguna'] == $r->id_pengguna ? 'selected' : '';
                                                echo">".strtoupper($r->nama_pengguna)."</option>";
                                            }
                                            ?>
                                        </select>
                                </div>   
                                <div class="form-group">
                                    <label>Tgl. Inventaris</label>
                                    <div class="input-group">
                                      <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                      </div>                              
                                         <input type="text" name="tgl_inv" value="<?php echo $record['tgl_inv']; ?>" class="form-control datepicker" data-date-format="yyyy-mm-dd" required oninvalid="setCustomValidity('Tgl. Inventaris harus di isi')"
                                           oninput="setCustomValidity('')" placeholder="yyyy-mm-dd" >                            
                                    </div><!-- /.input group -->
                                </div>                   
                                 <div class="form-group">
                                    <label for="example">Brand komputer</label>
                                    <input type="text" name="merek" class="form-control" value="<?php echo $record['nama_komputer']; ?>" required oninvalid="setCustomValidity('Merek/brand Harus di Isi !')"
                                           oninput="setCustomValidity('')" placeholder="ex : ASUS, LENOVO" >
                                           <?php echo form_error('merek', '<div class="text-red">', '</div>'); ?>
                                </div>
                                <div class="form-group">
                                    <label for="">Spesifikasi</label>
                                    <textarea name="spek" class="form-control" rows="3"  required oninvalid="setCustomValidity('Spesifikasi komputer Harus di Isi !')"
                                           oninput="setCustomValidity('')" placeholder="Spesifikasi"><?php echo $record['spesifikasi']; ?></textarea>
                                    <?php echo form_error('spek', '<div class="text-red">', '</div>'); ?>
                                </div>
                                <div class="form-group">
                                    <label for="example">Serial Number</label>
                                    <input type="text" name="sn" class="form-control" value="<?php echo $record['serial_number']; ?>" required oninvalid="setCustomValidity('Serial Number Harus di Isi !')"
                                           oninput="setCustomValidity('')" placeholder="Serial Number komputer" >
                                           <?php echo form_error('sn', '<div class="text-red">', '</div>'); ?>
                                </div>
                                <div class="form-group">
                                  <label>Status</label>
                                    <select name="status" class="combobox form-control">
                                      <?php                                            
                                        $status=$this->db->get("tb_status");
                                        foreach ($status->result() as $r) {
                                          echo "<option value='$r->nama_status'";
                                          echo $record['status'] == $r->nama_status ? 'selected' : '';
                                          echo">".$r->nama_status."</option>";
                                        }
                                      ?>
                                    </select>
                                </div> 
								<div class="form-group">
                                    <label for="example">Note/ Catatan</label>
                                    <input type="text" name="note" class="form-control" value="<?php echo $record['note']; ?>" required oninvalid="setCustomValidity('Serial Number Harus di Isi !')"
                                           oninput="setCustomValidity('')" placeholder="Note / Catatan Status Inventory" >
                                           <?php echo form_error('note', '<div class="text-red">', '</div>'); ?>
                                </div>
                                <div class="form-group">
                                    <label for="example">Harga Beli</label>
                                    <input type="number" name="harga" class="form-control" value="<?php echo $record['harga_beli']; ?>" required oninvalid="setCustomValidity('Harga Beli Harus di Isi !')"
                                           oninput="setCustomValidity('')" placeholder="Harga Beli Laptop" >
                                           <?php echo form_error('harga', '<div class="text-red">', '</div>'); ?>
                                </div>
                                <div class="form-group">
                                    <label>IP Address</label>
                                    <div class="input-group">
                                      <div class="input-group-addon">
                                        <i class="fa fa-desktop"></i>
                                      </div>
                                      <input name="ip" type="text" class="form-control" value="<?php echo $record['network']; ?>" data-inputmask="'alias': 'ip'" data-mask required/>
                                    </div><!-- /.input group -->
                                    <?php echo form_error('ip', '<div class="text-red">', '</div>'); ?>
                                </div><!-- /.form group -->  
                                
                                <div class="form-group">
                                    <label for="example">Apakah komputer atau laptop milik pribadi ?</label><br>
                                    <div class="form-group" style="margin-left: 10px;">
                                        <input type="radio" id="html" name="milik_pribadi" value="ya" class="larger">
                                        <label for="html" style="font-weight: 500;">Ya</label><br>
                                        <input type="radio" id="css" name="milik_pribadi" value="tidak" class="larger">
                                        <label for="css" style="font-weight: 500;">Tidak</label><br>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="example">Apakah user login SIMRS menggunakan akun sendiri?</label>
                                    <input type="text" name="user_login_akun_sendiri" class="form-control" value="<?php echo $record['user_login_akun_sendiri']; ?>" required>
                                </div>
                                <div class="form-group">
                                    <label for="example">Apakah user mengubah sandi akun SIMRS-nya dan akun akses internet rutin tiap 6 bulan sekali ?</label>
                                    <input type="text" name="rutin_ubah_pass" class="form-control" value="<?php echo $record['rutin_ubah_pass']; ?>" required>
                                </div>   
                                <div class="form-group">
                                    <label for="example">Apakah komputer atau laptop terinstal antivirus?</label>
                                    <input type="text" name="terinstall_av" class="form-control" value="<?php echo $record['terinstall_av']; ?>" required>
                                </div>  
                                <div class="form-group">
                                    <label for="example">Melalui media apa perpindahan/pertukaran file atau data yang biasa pengguna lakukan ?</label>
                                    <input type="text" name="media_transfer_file" class="form-control" value="<?php echo $record['media_transfer_file']; ?>" required>
                                </div>  
                                <div class="form-group">
                                    <label for="example">Jumlah aset ruangan berupa PC/Laptop</label>
                                    <input type="number" name="jumlah_asset_ruangan" class="form-control" value="<?php echo $record['jumlah_asset_ruangan']; ?>" required>
                                </div>  
                                <div class="form-group">
                                    <label for="example">Tindaklanjutnya penggunaan akun; contoh : bersurat ke umsi, sdm, komkordik, dll</label>
                                    <textarea type="text" name="tindaklanjut_penggunaan_akun" class="form-control" required><?php echo $record['tindaklanjut_penggunaan_akun']; ?></textarea>
                                </div>   
                                <div class="form-group">
                                    <label for="example">Tindaklanjutnya mengubah sandi (alasannya..)</label>
                                    <textarea type="text" name="tindaklanjut_ubah_pass" class="form-control" required><?php echo $record['tindaklanjut_ubah_pass']; ?></textarea>
                                </div>  
                                <div class="form-group">
                                    <label for="example">Tindaklanjut yg akan /sudah dilakukan terkait antivirus dan update</label>
                                    <textarea type="text" name="tindaklanjut_av" class="form-control" required><?php echo $record['tindaklanjut_av']; ?></textarea>
                                </div>   
                                <div class="form-group">
                                    <label for="example">Tindaklanjutnya media pertukaran data</label>
                                    <textarea type="text" name="tindaklanjut_media" class="form-control" required><?php echo $record['tindaklanjut_media']; ?></textarea>
                                </div>     
                                <div class="form-group">
                                    <label for="aplikasi_yg_digunakan">Aplikasi yang digunakan ?</label><br>
                                    <div class="form-group" style="margin-left: 10px;">
                                        <input type="checkbox" id="vehicle1" name="aplikasi_yg_digunakan[]" value="EHR/HIS/Sinde" class="larger">
                                        <label for="vehicle1"  style="font-weight: 500;"> EHR/HIS/Sinde</label><br>
                                        <input type="checkbox" id="vehicle2" name="aplikasi_yg_digunakan[]" value="Internet" class="larger">
                                        <label for="vehicle2" style="font-weight: 500;"> Internet</label><br>
                                        <label for="aplikasi"  style="font-weight: 500;"> Other</label>
                                        <input type="text" id="aplikasi" name="aplikasi_yg_digunakan[]" required style="width: 70%;margin-left: 10px;">
                                    </div>
                                </div>   
                                <div class="form-group">
                                    <label for="example">Nama petugas asesmen</label>
                                    <input type="text" name="nama_petugas_assesmen" class="form-control" value="<?php echo $record['nama_petugas_assesmen']; ?>" required>
                                </div>     
                                <div class="form-group">
                                    <label for="example">Lokasi Komputer</label>
                                    <input type="text" name="lokasi_komputer" class="form-control" value="<?php echo $record['lokasi_komputer']; ?>" required>
                                </div>             
                            </div><!-- /.box-body -->

                            <div class="box-footer">
                                <button type="submit" name="submit" class="btn btn-primary"><i class="glyphicon glyphicon-hdd"></i> Simpan</button>
                                <a href="<?php echo site_url('komputer'); ?>" class="btn btn-primary">Kembali</a>
                            </div>
                        </form>
                        </div>
                      </div>
                      <div class="tab-pane" id="tab_3">
                        <div class="col-md-10 "> 
                        <h4>Maintenance [ <a><?php echo anchor('komputer/maintadd/'.$record['kode_komputer'],'Add New') ?></a> ] 
                        <a href="<?php echo base_url('komputer/print_maintenance/'.$recordall['kode_komputer']) ?>" target="_blank" ><i class="btn fa fa-print" data-toggle="tooltip" title="Cetak"></i></a> </h4>
						                       
                          <table class="table ">
                          <br>
                            <tr>
                              <td><label>No Ticket</label></td>
                              <td><label>Tgl. Permohonan</label></td>
                              <td><label>Maintenance Type</label></td>
                              <td><label>Catatan Permohonan</label></td>                              
                              <td><label>Tgl. Selesai</label></td>
                              <td style="text-align:right"><label>Biaya/ Cost</label></td>
                              <td style="text-align:center"><label>Aksi</label></td>
                            </tr>                            
                             <?php 
                                foreach ($service as $s) {
                                  echo"
                                    <tr>
                                      <td>".anchor('maintenance/detail/'.$s->no_permohonan,$s->no_permohonan)."</td>
                                      <td>".tgl_lengkap($s->tgl_permohonan)."</td>
                                      <td>".$s->jenis_permohonan."</td>
                                      <td>".$s->catatan_pemohon."</td>                                      
                                      <td>".tgl_lengkap($s->tgl_selesai)."</td>
                                      <td style='text-align:right'>".rupiah($s->biaya)."</td>
                                      <td style='text-align:center'>".anchor('maintenance/detail/' . $s->no_permohonan, '<i class="btn btn-sm glyphicon glyphicon-edit" data-toggle="tooltip" title="Edit"></i>') ."</td>
                                    </tr> ";
                                }

                             ?>                      
                          </table>
                        </div>
                      </div>
                      <div class="tab-pane" id="tab_4">
                        <div class="col-md-10 ">  
                          <h4>History / Mutasi [ <a><?php echo anchor('komputer/history/'.$recordall['kode_komputer'],'Add New') ?></a> ]</h4>                         
                          <table class="table ">
                          <br>
                            <tr>
                              <td><label>Tanggal</label></td>
                              <td><label>Admin</label></td>
                              <td><label>Status</label></td>
                              <td><label>User Pengguna</label></td>                              
                              <td><label>Note</label></td> 
                              <td><label>Aksi</label></td>                              
                            </tr>                            
                             <?php 
                                foreach ($history as $s) {
                                  echo"
                                    <tr>                                     
                                      <td>".tgl_lengkap($s->tgl_update)."</td>
                                      <td>".$s->admin."</td>
                                      <td>".$s->status."</td>                                      
                                      <td>".anchor('pengguna/edit/'.$s->id_pengguna,$s->nama_pengguna)."</td>
                                      <td>".$s->note."</td> 
                                      <td>" . anchor('komputer/edithistory/' . $s->id_history, '<i class="btn glyphicon glyphicon-edit" data-toggle="tooltip" title="Edit"></i>')."<a href=".base_url('komputer/print_history/'.$s->id_history)." target='_blank' ><i class='btn fa fa-print' data-toggle='tooltip' title='Print'></i></td>  									                       
                                    </tr> ";
                                }
                             ?>                      
                          </table>
                        </div>
                      </div>
                    </div><!-- /.tab-content -->                

                </div>
            </div>
        </div>
    </div>
</section>