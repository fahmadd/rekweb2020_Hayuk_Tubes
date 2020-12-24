<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="page-holder">
    <!-- HERO SECTION-->
    <div class="container">
        <section class="hero pb-3 bg-cover bg-center d-flex align-items-center" style="background: url(/img/banner4.jpg)">
            <div class="container py-5">
                <div class="row px-4 px-lg-5">
                    <div class="col-lg-6">
                        <p class="text-muted small text-uppercase mb-2">New Inspiration 2021</p>
                        <h1 class="h2 text-uppercase mb-3">20% off on new season</h1><a class="btn btn-dark" href="/pages/all">Browse collections</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- CATEGORIES SECTION-->
        <section class="pt-5">
            <header class="text-center">
                <p class="small text-muted small text-uppercase mb-1">Carefully created collections</p>
                <h2 class="h5 text-uppercase mb-4">Browse our categories</h2>
            </header>
            <div class="row">
                <div class="col-md-4 mb-4 mb-md-0"><a class="category-item" href="/pages/clothes"><img class="img-fluid" src="/img/clothes.jpg" alt=""><strong class="category-item-title">Clothes</strong></a></div>
                <div class="col-md-4 mb-4 mb-md-0">
                    <a class="category-item mb-4" href="/pages/shoes"><img class="img-fluid" src="/img/shoes.jpg" alt="" width="750" height="500"><strong class="category-item-title">Shoes</strong></a>
                    <a class="category-item" href="/pages/cap"><img class="img-fluid" src="/img/cap.jpg" alt=""><strong class="category-item-title">Cap</strong></a></div>
                <div class="col-md-4"><a class="category-item" href="/pages/bag"><img class="img-fluid" src="/img/bag.jpg" alt=""><strong class="category-item-title">Bag</strong></a></div>
            </div>
        </section>
        <!-- TRENDING PRODUCTS-->
        <section class="py-5">
            <header>
                <p class="small text-muted small text-uppercase mb-1">Made the hard way</p>
                <h2 class="h5 text-uppercase mb-4">Top trending products</h2>
            </header>
            <div class="row">
                <!-- PRODUCT-->
                <?php
                function rupiah($angka)
                {
                    $hasil = 'Rp. ' . number_format($angka, 0, ",", ".");
                    return $hasil;
                } ?>
                <?php foreach ($barangTrending as $brg) : ?>

                    <div class="col-xl-3 col-lg-4 col-sm-6">
                        <div class="product text-center">
                            <div class="position-relative mb-3">
                                <div class="badge text-white badge-"></div><a class="d-block" href="/pages/trending/detail/<?= $brg['kode']; ?>/<?= $brg['kategori']; ?>"><img class="img-fluid w-100" src="https://cf.shopee.co.id/file/<?= $brg['gambar']; ?>" alt="..."></a>
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
        </section>
        <!-- SERVICES-->
        <section class="py-5 bg-light">
            <div class="container">
                <div class="row text-center">
                    <div class="col-lg-4 mb-3 mb-lg-0">
                        <div class="d-inline-block">
                            <div class="media align-items-end">
                                <svg class="svg-icon svg-icon-big svg-icon-light">
                                    <use xlink:href="#delivery-time-1"> </use>
                                </svg>
                                <div class="media-body text-left ml-3">
                                    <h6 class="text-uppercase mb-1">Free shipping</h6>
                                    <p class="text-small mb-0 text-muted">Free shipping worlwide</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-3 mb-lg-0">
                        <div class="d-inline-block">
                            <div class="media align-items-end">
                                <svg class="svg-icon svg-icon-big svg-icon-light">
                                    <use xlink:href="#helpline-24h-1"> </use>
                                </svg>
                                <div class="media-body text-left ml-3">
                                    <h6 class="text-uppercase mb-1">24 x 7 service</h6>
                                    <p class="text-small mb-0 text-muted">Free shipping worlwide</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="d-inline-block">
                            <div class="media align-items-end">
                                <svg class="svg-icon svg-icon-big svg-icon-light">
                                    <use xlink:href="#label-tag-1"> </use>
                                </svg>
                                <div class="media-body text-left ml-3">
                                    <h6 class="text-uppercase mb-1">Festival offer</h6>
                                    <p class="text-small mb-0 text-muted">Free shipping worlwide</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <br><br>
    </div>
</div>

<?= $this->endSection(); ?>