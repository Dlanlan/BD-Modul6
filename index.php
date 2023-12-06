<?php
$koneksi = mysqli_connect("localhost", "root", "", "nyoba") or die("Gagal koneksi database");
echo "Sukses koneksi database";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modul 6</title>
    <style>
        html,
        body {
            background-color: #f3f3f3;
        }

        div {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="obat">
        <h3>Tabel Obat</h3>
        <table border="3">
            <tr>
                <th>kode obat</th>
                <th>kode jenis</th>
                <th>nama obat</th>
                <th>harga obat</th>
                <th>bentuk obat</th>
                <th>kegunaan obat</th>
                <th>aturan pakai</th>
                <th>expire</th>
            </tr>

            <?php
            $query = "select * from obat";
            $data = mysqli_query($koneksi, $query) or die("Gagal query :" . $query);
            ?>



            <?php while ($v = mysqli_fetch_array($data)) :; ?>
                <tr>
                    <td><?php echo $v["kode_obat"]; ?></td>
                    <td><?php echo $v["kode_jenis"]; ?></td>
                    <td><?php echo $v["nama_obat"]; ?></td>
                    <td><?php echo $v["harga_obat"]; ?></td>
                    <td><?php echo $v["bentuk_obat"]; ?></td>
                    <td><?php echo $v["kegunaan"]; ?></td>
                    <td><?php echo $v["aturan"]; ?></td>
                    <td><?php echo $v["exp"]; ?></td>
                </tr>
            <?php endwhile; ?>
        </table>
    </div>

    <div class="apoteker">
        <h3>Tabel Apoteker</h3>
        <table border="3">
            <tr>
                <th>kode apoteker</th>
                <th>nama apoteker</th>
            </tr>

            <?php
            $query = "select * from apoteker";
            $data = mysqli_query($koneksi, $query) or die("Gagal query :" . $query);
            ?>

            <?php while ($v = mysqli_fetch_array($data)) :; ?>
                <tr>
                    <td><?php echo $v["kode_apoteker"]; ?></td>
                    <td><?php echo $v["nama_apoteker"]; ?></td>
                </tr>
            <?php endwhile; ?>
        </table>
    </div>

    <div class="customer">
        <h3>Tabel Customer</h3>
        <table border="3">
            <tr>
                <th>kode customer</th>
                <th>nama customer</th>
            </tr>

            <?php
            $query = "select * from customer";
            $data = mysqli_query($koneksi, $query) or die("Gagal query :" . $query);
            ?>

            <?php while ($v = mysqli_fetch_array($data)) :; ?>
                <tr>
                    <td><?php echo $v["kode_customer"]; ?></td>
                    <td><?php echo $v["nama_customer"]; ?></td>
                </tr>
            <?php endwhile; ?>
        </table>
    </div>

    <div class="jenisobat">
        <h3>Tabel Jenis Obat</h3>
        <table border="3">
            <tr>
                <th>kode jenis</th>
                <th>nama obat</th>
            </tr>

            <?php
            $query = "select * from jenis_obat";
            $data = mysqli_query($koneksi, $query) or die("Gagal query :" . $query);
            ?>

            <?php while ($v = mysqli_fetch_array($data)) :; ?>
                <tr>
                    <td><?php echo $v["kode_jenis"]; ?></td>
                    <td><?php echo $v["nama_obat"]; ?></td>
                </tr>
            <?php endwhile; ?>
        </table>
    </div>

    <div class="resepobat">
        <h3>Tabel Resep Obat</h3>
        <table border="3">
            <tr>
                <th>kode resep</th>
                <th>nama resep</th>
            </tr>

            <?php
            $query = "select * from resep_obat";
            $data = mysqli_query($koneksi, $query) or die("Gagal query :" . $query);
            ?>

            <?php while ($v = mysqli_fetch_array($data)) :; ?>
                <tr>
                    <td><?php echo $v["kode_resep"]; ?></td>
                    <td><?php echo $v["nama_resep"]; ?></td>
                </tr>
            <?php endwhile; ?>
        </table>
    </div>

    <div class="stokobat">
        <h3>Tabel Stok Obat</h3>
        <table border="3">
            <tr>
                <th>kode stok</th>
                <th>nama obat</th>
                <th>stok</th>

            </tr>

            <?php
            $query = "select * from stok_obat";
            $data = mysqli_query($koneksi, $query) or die("Gagal query :" . $query);
            ?>

            <?php while ($v = mysqli_fetch_array($data)) :; ?>
                <tr>
                    <td><?php echo $v["kode_stok"]; ?></td>
                    <td><?php echo $v["nama_obat"]; ?></td>
                    <td><?php echo $v["stok"]; ?></td>
                </tr>
            <?php endwhile; ?>
        </table>
    </div>

    <div class="transaksi">
        <h3>Tabel Transaksi</h3>
        <table border="3">
            <tr>
                <th>kode transaksi</th>
                <th>jenis transaksi</th>
            </tr>

            <?php
            $query = "select * from Transaksi";
            $data = mysqli_query($koneksi, $query) or die("Gagal query :" . $query);
            ?>

            <?php while ($v = mysqli_fetch_array($data)) :; ?>
                <tr>
                    <td><?php echo $v["kode_transaksi"]; ?></td>
                    <td><?php echo $v["jenis_transaksi"]; ?></td>
                </tr>
            <?php endwhile; ?>
        </table>
    </div>
</body>

</html>