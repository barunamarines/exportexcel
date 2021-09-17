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
    <div class="container">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-5">
                <h2 class="text-center py-3">Laporan Dana</h2>
                    <table class="table table-responsive" >
                        <caption class="text-dark" style="font-weight: bold;">Menampilkan Data Dana Menurut Bulan</caption>
                            <form action="<?php echo base_url(); ?>AdminC/Laporan_dana/dana_bulanan" method="get">
                                <tr>    
                                    <th><label for="pilih_donasi" class="text-dark">Pilih Donasi</label></th>
                                        <td><select class="form-control" id="pilih_donasi" name="pilih_donasi">
                                            <option>- List Donasi -</option>
                                              <?php 
                                                foreach ($pdna->result() as $row)
                                                {
                                                    ?>
                                                    <!-- $row adalah name dari select class atau nama ID -->
                                                    <option value="<?php echo $row->judul_donasi; ?>"><?php echo $row->judul_donasi; ?></option>
                                             <?php } ?>   
                                        </select></td>
                                </tr>
                                <tr>
                                    <th><label for="data_bulan">Input Bulan</label></th>
                                        <td><input type="month" name="data_bulan" id="data_bulan" class="form-control" value=""></td>
                                </tr>
                                <tr>
                                    <th><input type="submit" name="simpan" class="btn btn-primary"></th>  
                                </tr>
                            </form>
                    </table>
            </div>
            <div class="col"></div>
        </div>
    </div>
</section>
   

<?php 
$this->load->view('Admin/template/js');
?>
<!--tambahkan custom js disini-->
<?php
$this->load->view('Admin/template/foot');
?>


