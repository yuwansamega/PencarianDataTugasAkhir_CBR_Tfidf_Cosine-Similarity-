<?php
include "koneksi.php";
$query = mysqli_query($conn, "SELECT * FROM tbtugasakhir");
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css" />

    <title>Pencarian Data Tugas Akhir</title>
  </head>
  <body>
    <!-- Title -->
    <section name="title">
      <div class="container text-center mt-5 mb-5">
        <h2>Pencarian Data Tugas Akhir</h2>
      </div>
    </section>
    <!-- End of Title -->

    <!-- Forms -->
    <section>
      <div class="container mb-5">
        <div class="row justify-content-center">
          <div class="col-md-8">
            <form action="searchProcess.php" method="GET">
              <div class="mb-3">
                <label for="InputData" class="form-label">Data Search</label>
                <input type="text" class="form-control" id="searchData" aria-describedby="searchData" name="search" />
              </div>

              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </section>
    <!-- End of Forms -->

    <!-- Table -->
    <section>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col">
            <table class="table">
              <thead class="table-dark">
                <tr style="font-size: small">
                  <th scope="col">No</th>
                  <th scope="col">Judul Tugas Akhir</th>
                  <th scope="col">Nim</th>
                  <th scope="col">Nama</th>
                  <th scope="col">Kelas</th>
                  <th scope="col">Angkatan</th>
                  
                </tr>
              </thead>
              <tbody>
                <?php $i=1; ?>
                <?php while ($row = mysqli_fetch_array($query)) : ?>
                <tr style="font-size: small">
                  <td scope="row"><?= $i++; ?></td>
                  <td><?= $row["title"]; ?></td>
                  <td><?= $row["nim"]; ?></td>
                  <td><?= $row["stud_name"]; ?></td>
                  <td><?= $row["class"]; ?></td>
                  <td><?= $row["year"]; ?></td>
                </tr>
                <?php endwhile; ?>
              </tbody>
            
              
            </table>
          </div>
        </div>
      </div>
    </section>
    <!-- End of Table -->

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>