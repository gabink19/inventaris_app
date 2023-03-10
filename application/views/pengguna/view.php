<section class="content-header">
    <h1>
        Data Pengguna 
        <small>Master Pengguna</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-suitcase"></i>Master</a></li>
        <li class="active">Pengguna</li>
    </ol>
</section>
<script src="<?php echo base_url('assets/js/plugins/datatables/jquery-1.11.3.min.js'); ?>"></script>
    <script>
    $(document).ready(function(){ 
		$.fn.dataTable.ext.errMode = 'throw'; 
        $('#tb-pengguna').dataTable( {                  
        "Processing": true, 
        "ServerSide": true,
        "iDisplayLength": 25,
        "oLanguage": {
                    "sSearch": "Search Data :  ",
                    "sZeroRecords": "No records to display",
                    "sEmptyTable": "No data available in table"
                    },
        "dom": 'Bfrtip',
        "select": true,
        "buttons": [
            {
                "extend": 'collection',
                "text": 'Export',
                "buttons": [
                    'copy',
                    'excel',
                    'pdf',
                    'print',
                ]
            }
            ],
        "ajax": "<?php echo base_url('pengguna/view_data');?>",
        "aoColumns": [
                { "mData": "no" },
                { "mData": "id_pengguna" },
                { "mData": "nik" },
                { "mData": "nama_pengguna" },                           
                { "mData": "dept" },
                { "mData": "subdept" },
                { "mData": "nama_jabatan" },                           
                { "mData": "ruang_kantor" },
                { "mData": "edit" },
                { "mData": "delete" },
                ]
            } );
        });
</script>
<section class="content">   
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class='box-header with-border'>
                    <h3 class='box-title'><a href="<?php echo base_url('pengguna/add'); ?>" class="btn btn-primary btn-small">
                            <i class="glyphicon glyphicon-plus"></i> Tambah Data</a></h3>
                            <label calss='control-label' ></label>
                    <h3 class='box-title'><a href="#" class="btn btn-primary btn-small" onclick="$('#modalBatch').modal('show');">
                            <i class="fa fa-align-center"></i> Upload Batch</a></h3>
                            <label calss='control-label' ></label>
                </div>
                <div class="box-body table-responsive">
                    <table id="tb-pengguna" class="table table-bordered table-striped" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Kode Pengguna</th>
                                <th>NIK</th>
                                <th>Nama</th>                                                                
                                <th>Departemen</th>
                                <th>Sub. Dept</th>
                                <th>Jabatan</th> 
                                <th>Ruang Kantor</th>                             
                                <th>Edit</th>   
                                <th>Delete</th>                                 
                            </tr>
                        </thead>
                        <body>

                        </body>
                    </Table> 
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div>
    </div>
    <div class="modal" id="modalBatch" tabindex="-1">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Upload Batch</h5>
          </div>
          <div class="modal-body">
            <?php
                echo form_open_multipart('pengguna/add_batch');
            ?> 
                <div class="mb-3">
                  <label for="formFile" class="form-label">Default file input example</label>
                  <input class="form-control" type="file" id="formFile" name="file">
                </div>
              </div>
              <div class="box-footer">
                  <button type="submit" name="submit" class="btn btn-primary"><i class="glyphicon glyphicon-hdd"></i> Upload</button>
                </div>
            </form>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="$('#modalBatch').modal('hide');">Close</button>
          </div>
        </div>
      </div>
    </div>
</section><!-- /.content -->
