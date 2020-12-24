<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="page-holder">
    <div class="container">
        <div class="container">
            <!-- HERO SECTION-->
            <section class="py-5 bg-light">
                <div class="container">
                    <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
                        <div class="col-lg-6">
                            <h1 class="h2 text-uppercase mb-0">Shop</h1>
                        </div>
                        <div class="col-lg-6 text-lg-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-lg-end mb-0 px-0">
                                    <li class="breadcrumb-item"><a href="/pages/home.php">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Shop</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <section class="py-5">
                <div class="container p-0">
                    <div class="row">
                        <!-- SHOP SIDEBAR-->
                        <div class="col-lg-3 order-2 order-lg-1">
                            <h5 class="text-uppercase mb-4">Categories</h5>
                            <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold">Fashion</strong></div>
                            <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
                                <li class="mb-2"><a class="reset-anchor" href="/pages/clothes">Clothes</a></li>
                                <li class="mb-2"><a class="reset-anchor" href="/pages/shoes">Shoes</a></li>
                                <li class="mb-2"><a class="reset-anchor" href="/pages/bag">Bag</a></li>
                                <li class="mb-2"><a class="reset-anchor" href="/pages/cap">Cap</a></li>
                                <li class="mb-2"><a class="reset-anchor" href="/pages/kids">Kids</a></li>
                            </ul>
                        </div>
                        <!-- SHOP LISTING-->
                        <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                            <div class="row mb-3 align-items-center">
                                <div class="col-lg-6 mb-2 mb-lg-0">
                                    <p class="text-small text-muted mb-0">Showing 1–12 results</p>
                                </div>
                                <div class="col-lg-6">
                                    <ul class="list-inline d-flex align-items-center justify-content-lg-end mb-0">
                                        <li class="list-inline-item text-muted mr-3"><a class="reset-anchor p-0" href="#"><i class="fas fa-th-large"></i></a></li>
                                        <li class="list-inline-item text-muted mr-3"><a class="reset-anchor p-0" href="#"><i class="fas fa-th"></i></a></li>
                                        <li class="list-inline-item">
                                            <select class="selectpicker ml-auto" name="sorting" data-width="200" data-style="bs-select-form-control" data-title="Default sorting">
                                                <option value="default">Default sorting</option>
                                                <option value="popularity">Popularity</option>
                                                <option value="low-high">Price: Low to High</option>
                                                <option value="high-low">Price: High to Low</option>
                                            </select>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row">
                                <?php
                                function rupiah($angka)
                                {
                                    $hasil = 'Rp. ' . number_format($angka, 0, ",", ".");
                                    return $hasil;
                                } ?>
                                <?php foreach ($barang as $brg) : ?>
                                    <!-- PRODUCT-->
                                    <div class="col-lg-4 col-sm-6">
                                        <div class="product text-center">
                                            <div class="mb-3 position-relative">
                                                <div class="badge text-white badge-"></div><a class="d-block" href="/pages/detail/<?= $brg['kode']; ?>/<?= $brg['kategori']; ?>"><img class="img-fluid w-100" src="https://cf.shopee.co.id/file/<?= $brg['gambar']; ?>" alt="..."></a>
                                                <div class="product-overlay">
                                                    <ul class="mb-0 list-inline">
                                                        <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-dark" href="/cart/update/<?= $brg['kode']; ?>">Add to cart</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <h6> <a class="reset-anchor" href="/pages/detail/<?= $brg['kode']; ?>/<?= $brg['kategori']; ?>"><?= $brg['nama']; ?></a></h6>
                                            <p class="small text-muted"><?= rupiah($brg['harga']); ?></p>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                            <!-- PAGINATION-->
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center justify-content-lg-end">
                                    <li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
            </section>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>