<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">Users List</h1>
    <div class="row">
        <div class="col-lg-8">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Kode</th>
                        <th scope="col">Kategori</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Harga</th>
                        <th scope="col">Deskripsi</th>
                        <th scope="col">Detail</th>
                        <th scope="col">Gambar-1</th>
                        <th scope="col">Gambar-2</th>
                        <th scope="col">Gambar-3</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 0; ?>
                    <?php foreach ($barang as $brg) : ?>
                        <tr>
                            <?php $i++; ?>
                            <td><?= $i; ?></td>
                            <td><?= $brg['kode']; ?></td>
                            <td><?= $brg['kategori']; ?></td>
                            <td><?= $brg['nama']; ?></td>
                            <td><?= $brg['harga']; ?></td>
                            <td><?= $brg['deskripsi']; ?></td>
                            <td><?= $brg['detail']; ?></td>
                            <td><?= $brg['gambar']; ?></td>
                            <td><?= $brg['gambar2']; ?></td>
                            <td><?= $brg['gambar3']; ?></td>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>

</div>

<?= $this->endSection(); ?>