<!DOCTYPE html>
<html lang="en">
  <?php
require "layout/head.php";
require "include/conn.php";
require "W.php";
require "R.php";

?>

  <body>
    <div id="app">
      <?php require "layout/sidebar.php";?>
      <div id="main">
        <header class="mb-3">
          <a href="#" class="burger-btn d-block d-xl-none">
            <i class="bi bi-justify fs-3"></i>
          </a>
        </header>
        <div class="page-heading">
          <h3>SISWA TERBAIK</h3>
        </div>
        <div class="page-content">
          <section class="row">
            <div class="col-12">
              <div class="card">

                <div class="card-header">
                  <h4 class="card-title">Tabel Siswa Terbaik</h4>
                </div>
                <div class="card-content">
                  <div class="card-body">
                    <p class="card-text">
                    Berikut adalah Siswa terbaik Kelas 12 SMK Yadika 13 Tambun</p>
                  </div>
                  <div class="table-responsive">
                    <table class="table table-striped mb-0">
                    <caption>
    Hasil
  </caption>
  <tr>
    <th>No</th>
    <th>Nama</th>
    <th>Hasil</th>
  </tr>

    <tr class='center'>
            <td>1</td>
            <td>Brendadiva Ikval Ramadhani</td>
            <td>97.204301075269</td>
          </tr>
        
    <tr class='center'>
            <td>2</td>
            <td>Al Hafiz Taufikur Rohman</td>
            <td>93.806451612903</td>
          </tr>

    <tr class='center'>
            <td>3</td>
            <td>Intan Rahma Safitri</td>
            <td>93.10752688172</td>
          </tr>
        
    <tr class='center'>
            <td>4</td>
            <td>Alysaa Rahma Firmansyah</td>
            <td>92.505376344086</td>
          </tr>
    
    <tr class='center'>
            <td>5</td>
            <td>Louisa Nayna Ivahrily</td>
            <td>91.806451612903</td>
          </tr>
          
                  </table>
                  </div>
                </div>
              </div>
            </div>
          </section>
        </div>
        <?php require "layout/footer.php";?>
      </div>
    </div>
    <?php require "layout/js.php";?>
  </body>

</html>
