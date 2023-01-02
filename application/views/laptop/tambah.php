<script type="text/javascript" src="<?php echo base_url('assets/js/plugins/jQuery/jQuery-2.1.3.min.js'); ?>"></script>
<script type="text/javascript">
    $(document).ready(function(){
       $(".combobox").combobox();
    });
</script>
<section class="content-header">
    <h1>
        Tambah
        <small>Inventaris Laptop</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-suitcase"></i>Inventaris</a></li>
        <li class="active">Laptop</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header">
                <div class="col-md-5">
                <?php
                    echo form_open('laptop/add');
                ?>                   
                    <div class="box-body">                        
                        <div class="form-group">
                            <label>Pengguna Laptop</label>
                            <select name="pengguna" class="combobox form-control" id="dept">
                            <option value='' selected="selected">- Pilih Pengguna Laptop -</option>
                                <?php
                                if (!empty($pengguna)) {
                                    foreach ($pengguna as $row) {
                                        echo "<option value=".$row->id_pengguna.">".strtoupper($row->nama_pengguna)."</option>";                                        
                                    }
                                }
                                ?>
                            </select> 
                            <?php echo form_error('pengguna', '<div class="text-red">', '</div>'); ?>                           
                        </div>    
                        <div class="form-group">
                            <label for="example">Brand Laptop</label>
                            <input type="text" name="merek" class="form-control" required oninvalid="setCustomValidity('Merek/brand Harus di Isi !')"
                                   oninput="setCustomValidity('')" placeholder="ex : ASUS, LENOVO" >
                                   <?php echo form_error('merek', '<div class="text-red">', '</div>'); ?>
                        </div>
                        <div class="form-group">
                            <label for="">Spesifikasi</label>
                            <textarea name="spek" class="form-control" rows="3" required oninvalid="setCustomValidity('Spesifikasi Laptop Harus di Isi !')"
                                   oninput="setCustomValidity('')" placeholder="Spesifikasi"></textarea>
                            <?php echo form_error('spek', '<div class="text-red">', '</div>'); ?>
                        </div>
                        <div class="form-group">
                            <label for="example">Serial Number</label>
                            <input type="text" name="sn" class="form-control" required oninvalid="setCustomValidity('Serial Number Harus di Isi !')"
                                   oninput="setCustomValidity('')" placeholder="Serial Number Laptop" >
                                   <?php echo form_error('sn', '<div class="text-red">', '</div>'); ?>
                        </div>
                        <div class="form-group">
                            <label>Tgl. Inventaris</label>
                            <div class="input-group">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                              
                                 <input type="text" name="tgl_inv" class="form-control datepicker" data-date-format="yyyy-mm-dd" required oninvalid="setCustomValidity('Tgl. Inventaris harus di isi')"
                                   oninput="setCustomValidity('')" placeholder="yyyy-mm-dd" >
                            
                            </div><!-- /.input group -->
                        </div>
                        <div class="form-group">
                            <label for="example">Harga Beli</label>
                            <input type="number" name="harga" class="form-control" required oninvalid="setCustomValidity('Harga Beli Harus di Isi !')"
                                   oninput="setCustomValidity('')" placeholder="Harga Beli Laptop" >
                                   <?php echo form_error('harga', '<div class="text-red">', '</div>'); ?>
                        </div>
                        <div class="form-group">
                            <label>IP Address</label>
                            <div class="input-group">
                              <div class="input-group-addon">
                                <i class="fa fa-laptop"></i>
                              </div>
                              <input name="ip" type="text" class="form-control" data-inputmask="'alias': 'ip'" data-mask required/>
                            </div><!-- /.input group -->
                            <?php echo form_error('ip', '<div class="text-red">', '</div>'); ?>
                        </div><!-- /.form group -->   
                        <div class="form-group">
                            <label for="example">Apakah komputer atau laptop milik pribadi ?</label>
                            <input type="text" name="milik_pribadi" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="example">Apakah user login SIMRS menggunakan akun sendiri?</label>
                            <input type="text" name="user_login_akun_sendiri" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="example">Apakah user mengubah sandi akun SIMRS-nya dan akun akses internet rutin tiap 6 bulan sekali ?</label>
                            <input type="text" name="rutin_ubah_pass" class="form-control" required>
                        </div>   
                        <div class="form-group">
                            <label for="example">Apakah komputer atau laptop terinstal antivirus?</label>
                            <input type="text" name="terinstall_av" class="form-control" required>
                        </div>  
                        <div class="form-group">
                            <label for="example">Melalui media apa perpindahan/pertukaran file atau data yang biasa pengguna lakukan ?</label>
                            <input type="text" name="media_transfer_file" class="form-control" required>
                        </div>  
                        <div class="form-group">
                            <label for="example">Jumlah aset ruangan berupa PC/Laptop</label>
                            <input type="number" name="jumlah_asset_ruangan" class="form-control" required>
                        </div>  
                        <div class="form-group">
                            <label for="example">Tindaklanjutnya penggunaan akun; contoh : bersurat ke umsi, sdm, komkordik, dll</label>
                            <textarea type="text" name="tindaklanjut_penggunaan_akun" class="form-control" required></textarea>
                        </div>   
                        <div class="form-group">
                            <label for="example">Tindaklanjutnya mengubah sandi (alasannya..)</label>
                            <textarea type="text" name="tindaklanjut_ubah_pass" class="form-control" required></textarea>
                        </div>  
                        <div class="form-group">
                            <label for="example">Tindaklanjut yg akan /sudah dilakukan terkait antivirus dan update</label>
                            <textarea type="text" name="tindaklanjut_av" class="form-control" required></textarea>
                        </div>   
                        <div class="form-group">
                            <label for="example">Tindaklanjutnya media pertukaran data</label>
                            <textarea type="text" name="tindaklanjut_media" class="form-control" required></textarea>
                        </div>   
                        <div class="form-group">
                            <label for="example">Nama petugas asesmen</label>
                            <input type="text" name="nama_petugas_assesmen" class="form-control" required>
                        </div>    
                        <div class="form-group">
                            <label for="example">Aplikasi yang digunakan ?</label>
                            <input type="text" name="aplikasi_yg_digunakan" class="form-control" required>
                        </div>  
                        <div class="form-group">
                            <label for="example">Nama petugas asesmen</label>
                            <input type="text" name="nama_petugas_assesmen" class="form-control" required>
                        </div>     
                        <div class="form-group">
                            <label for="example">Lokasi Komputer</label>
                            <input type="text" name="lokasi_komputer" class="form-control" required>
                        </div>                
                    </div><!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" name="submit" class="btn btn-primary"><i class="glyphicon glyphicon-hdd"></i> Simpan</button>                        
                        <a href="javascript:history.back()" class="btn btn-primary">Kembali</a>
                    </div>
                </form>
                </div>
            </div>
            </div>
        </div>
    </div>
</section>