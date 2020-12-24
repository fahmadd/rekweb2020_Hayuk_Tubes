<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<body>

    <div class="page-holder bg-light">
        <section class="py-5">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-lg-6">
                        <!-- PRODUCT SLIDER-->
                        <div class="row m-sm-0">
                            <div class="col-sm-2 p-sm-0 order-2 order-sm-1 mt-2 mt-sm-0">
                                <div class="owl-thumbs d-flex flex-row flex-sm-column" data-slider-id="1">
                                    <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0"><img class="w-100" src="https://cf.shopee.co.id/file/<?= $barang['gambar']; ?>" alt="..."></div>
                                    <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0"><img class="w-100" src="https://cf.shopee.co.id/file/<?= $barang['gambar2']; ?>" alt="..."></div>
                                    <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0"><img class="w-100" src="https://cf.shopee.co.id/file/<?= $barang['gambar3']; ?>" alt="..."></div>
                                </div>
                            </div>
                            <div class="col-sm-10 order-1 order-sm-2">
                                <div class="owl-carousel product-slider" data-slider-id="1"><a class="d-block" href="https://cf.shopee.co.id/file/<?= $barang['gambar']; ?>" data-lightbox="product" title="Product item 1"><img class="img-fluid" src="https://cf.shopee.co.id/file/<?= $barang['gambar']; ?>" alt="..."></a><a class="d-block" href="https://cf.shopee.co.id/file/<?= $barang['gambar2']; ?>" data-lightbox="product" title="Product item 2"><img class="img-fluid" src="https://cf.shopee.co.id/file/<?= $barang['gambar2']; ?>" alt="..."></a><a class="d-block" href="https://cf.shopee.co.id/file/<?= $barang['gambar3']; ?>" data-lightbox="product" title="Product item 3"><img class="img-fluid" src="https://cf.shopee.co.id/file/<?= $barang['gambar3']; ?>" alt="..."></a></div>
                            </div>
                        </div>
                    </div>
                    <!-- PRODUCT DETAILS-->
                    <div class="col-lg-6">
                        <ul class="list-inline mb-2">
                            <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                            <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                            <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                            <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                            <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                        </ul>
                        <h1><?= $barang['nama']; ?></h1>
                        <p class="text-muted lead"><?= rupiah($barang['harga']); ?></p>
                        <p class="text-small mb-4"><?= $barang['deskripsi']; ?></p>
                        <div class="row align-items-stretch mb-4">

                            <div class="col-sm-3 pl-sm-0 ml-3"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="/cart/update/<?= $barang['kode']; ?>">Add to cart</a></div>
                        </div>
                        <ul class="list-unstyled small d-inline-block">
                            <li class="px-1 py-2 mb-1 bg-white"><strong class="text-uppercase">SKU:</strong><span class="ml-2 text-muted"><?= $barang['kode']; ?></span></li>
                            <li class="px-1 py-2 mb-1 bg-white text-muted"><strong class="text-uppercase text-dark">Category:</strong><a class="reset-anchor ml-2" href="#"><?= $barang['kategori']; ?></a></li>
                        </ul>
                    </div>
                </div>
                <!-- DETAILS TABS-->
                <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
                    <li class="nav-item"><a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a></li>
                    <li class="nav-item"><a class="nav-link" id="reviews-tab" data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">Reviews</a></li>
                </ul>
                <div class="tab-content mb-5" id="myTabContent">
                    <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                        <div class="p-4 p-lg-5 bg-white">
                            <h6 class="text-uppercase">Product description </h6>
                            <p class="text-muted text-small mb-0"><?= $barang['detail']; ?></p>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                        <div class="p-4 p-lg-5 bg-white">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="media"><img class="rounded-circle" src="/img/riview3.jpg" alt="" width="50" height="50">
                                        <div class="media-body ml-3 mb-3">
                                            <h6 class="mb-0 text-uppercase">Michael Nababan</h6>
                                            <p class="small text-muted mb-0 text-uppercase">20 MARET 2020</p>
                                            <ul class="list-inline mb-1 text-xs">
                                                <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                                                <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                                                <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                                                <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                                                <li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                            <p class="text-small mb-0 text-muted">Recommended, barang ori, kemarin bayar hari ini sudah sampai.</p>
                                        </div>
                                    </div>
                                    <div class="media mb-3"><img class="rounded-circle" src="/img/riview4.jpg" alt="" width="50" height="50">
                                        <div class="media-body ml-3">
                                            <h6 class="mb-0 text-uppercase">Virgiawan Ramdhani</h6>
                                            <p class="small text-muted mb-0 text-uppercase">20 May 2020</p>
                                            <ul class="list-inline mb-1 text-xs">
                                                <li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                            <p class="text-small mb-0 text-muted">Pengiriman lama, seler slow respon, ukuran salah!! Mengecewakan!</p>
                                        </div>
                                    </div>
                                    <div class="media mb-3"><img class="rounded-circle" src="/img/riview2.jpg" alt="" width="50" height="50">
                                        <div class="media-body ml-3">
                                            <h6 class="mb-0 text-uppercase">Fikri Ahmad</h6>
                                            <p class="small text-muted mb-0 text-uppercase">20 May 2020</p>
                                            <ul class="list-inline mb-1 text-xs">
                                                <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                                                <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                                                <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                                                <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                                                <li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                            <p class="text-small mb-0 text-muted">Gilaaa Bagus Banget!!!</p>
                                        </div>
                                    </div>
                                    <div class="media"><img class="rounded-circle" src="/img/riview1.jpg" alt="" width="50" height="50">
                                        <div class="media-body ml-3">
                                            <h6 class="mb-0 text-uppercase">Tirta Salsabila</h6>
                                            <p class="small text-muted mb-0 text-uppercase">20 May 2020</p>
                                            <ul class="list-inline mb-1 text-xs">
                                                <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                                                <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                                                <li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                            <p class="text-small mb-0 text-muted">Pengiriman lama, namun produk bagus, dan nyaman digunakan!</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- RELATED PRODUCTS-->
                <h2 class="h5 text-uppercase mb-4">Related products</h2>
                <div class="row">
                    <?php
                    function rupiah($angka)
                    {
                        $hasil = 'Rp. ' . number_format($angka, 0, ",", ".");
                        return $hasil;
                    } ?>
                    <?php foreach ($barangByKategori as $brg) : ?>
                        <!-- PRODUCT-->
                        <div class="col-lg-3 col-sm-6">
                            <div class="product text-center skel-loader">
                                <div class="d-block mb-3 position-relative"><a class="d-block" href="/pages/detail/<?= $brg['kode']; ?>/<?= $brg['kategori']; ?>"><img class="img-fluid w-100" src="https://cf.shopee.co.id/file/<?= $brg['gambar']; ?>" alt="..."></a>
                                    <div class="product-overlay">
                                        <ul class="mb-0 list-inline">
                                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-dark" href="/cart/update/<?= $brg['kode']; ?>">Add to cart</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <h6> <a class="reset-anchor" href="detail.html"><?= $brg['nama']; ?></a></h6>
                                <p class="small text-muted"><?= rupiah($brg['harga']); ?></p>
                            </div>
                        </div>
                    <?php endforeach; ?>
        </section>
        <?= $this->endSection(); ?>