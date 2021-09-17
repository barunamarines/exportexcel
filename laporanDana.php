<?php 
$this->load->view('Admin/template/head');
?>
<!--tambahkan custom css disini-->
<?php
$this->load->view('Admin/template/topbar');
$this->load->view('Admin/template/sidebar');
?>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Dashboard
        <small>Control Panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->

    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Title</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
            </div>
        </div>



        
        <div class="box-body">
           <!--  Start creating your amazing application! -->
           <div class="box-header with-border">
               <!--  <h3 class="box-title">Bulan : <?php echo date("F Y", strtotime($data_bulan)) ?></h3> -->
                    <br>
                    <br>
                    <table class="table" style="width: 380px;">
                        <tr>
                            <!-- <th>Show</th>
                                <td><select class="form-control">
                                        <option>10</option>
                                        <option>25</option>
                                        <option>50</option>
                                        <option>100</option>
                                </td>
                                    </select> -->
                            <th>Search:</th>    
                                <td>
                                    <input type="text" name="" id="cari_contentD" class="form-control" placeholder="Cari Content">
                                </td>
                        </tr>
                    </table>

                      <!-- DISINI ISI KONTEN -->
                      <div class="table-responsive-sm" style="overflow-y: hidden;">          
                      <table class="table table-bordered table-striped" id="table_contentD">
                        <thead>
                          <tr>
                            <th>No</th>
                            <th>Nama Pendaftar</th>
                            <th>Email</th>
                            <th>Tanggal Transfer</th>
                          </tr>
                        </thead>
                        <tbody>
                           <?php
                           $no = 1;
                           foreach ($tabel_bulan as $key => $value) {?>
                          <tr>
                            <?php  ?>
                            <td class="text-center"><?php echo $no++; ?></td>
                            <td><?php echo $value->nama_pendaftar; ?></td>
                            <td><?php echo $value->email; ?></td>
                            <td class="text-center tanggal"><?php echo $value->tanggal_transfer; ?></td>
                          </tr>
                          <?php } ?>
                        </tbody>
                      </table>
                      <?php 
                        $bulan = date_format(date_create($this->input->get('data_bulan')),"m");
                        $dana = $this->input->get('pilih_donasi');
                         ?>
                            <a href="<?php echo site_url('AdminC/Laporan_dana/laporan_excel?data_bulan='.$bulan.$dana)?>">
                               <span class="export-excel">Export Excel</span> 
                        </a>
                      </div>
            </div>
        </div><!-- /.box-body -->
        
        <div class="box-footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-7">
                       <!--  <?php echo $pagination; ?> -->
                    </div>
                </div>
            </div>
        </div><!-- /.box-footer-->
    </div><!-- /.box -->

</section><!-- /.content -->


<?php 
$this->load->view('Admin/template/js');
?>
<!--tambahkan custom js disini-->
<?php
$this->load->view('Admin/template/foot');
?>

