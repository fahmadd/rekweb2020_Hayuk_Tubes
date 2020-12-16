<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<!-- <div class="jumbotron">
    <div class="container">
        <h1 class="display-4">CHANGE YOUR STYLE <br><span class="font-weight-bold">WITH HAYUK FASHION</span> </h1>
        <hr class="my-4">
        <p class="lead">Tempat Fashion Terbaik di Kota Bandung</p>
        <a class="btn btn-primary btn-lg font-weight-bold" href="#" role="button">KUNJUNGI</a>
    </div>
</div> -->
<!-- Slider -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="/img/fashion6.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h1 class="display-4">CHANGE YOUR STYLE <br><span class="font-weight-bold">WITH HAYUK FASHION</span> </h1>
                <hr class="my-4">
                <p class="lead">Tempat Fashion Terbaik</p>
                <a class="btn btn-primary btn-lg font-weight-bold" href="<?= base_url('/pages/kunjungi'); ?>" role="button">KUNJUNGI</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/img/fashion3.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h1 class="display-4">CHANGE YOUR STYLE <br><span class="font-weight-bold">WITH HAYUK FASHION</span> </h1>
                <hr class="my-4">
                <p class="lead">Tempat Fashion Terbaik</p>
                <a class="btn btn-primary btn-lg font-weight-bold" href="<?= base_url('/pages/kunjungi'); ?>" role="button">KUNJUNGI</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/img/fashion2.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h1 class="display-4">CHANGE YOUR STYLE <br><span class="font-weight-bold">WITH HAYUK FASHION</span> </h1>
                <hr class="my-4">
                <p class="lead">Tempat Fashion Terbaik</p>
                <a class="btn btn-primary btn-lg font-weight-bold" href="<?= base_url('/pages/kunjungi'); ?>" role="button">KUNJUNGI</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/img/fashion1.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h1 class="display-4">CHANGE YOUR STYLE <br><span class="font-weight-bold">WITH HAYUK FASHION</span> </h1>
                <hr class="my-4">
                <p class="lead">Tempat Fashion Terbaik</p>
                <a class="btn btn-primary btn-lg font-weight-bold" href="<?= base_url('/pages/kunjungi'); ?>" role="button">KUNJUNGI</a>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- akhir slider -->

<!-- Info Panel -->
<div class="row justify-content-center">
    <div class="col-lg-10 info-panel">
        <div class="row">
            <div class="col-lg">
                <img src="/img/employee.png" alt="employee" class="float-left">
                <h4>24 Hours</h4>
                <p>Lorem ipsum dolor sit amet.</p>
            </div>
            <div class="col-lg">
                <img src="/img/hires.png" alt="High Res" class="float-left">
                <h4>High-Res</h4>
                <p>Lorem ipsum dolor sit amet.</p>
            </div>
            <div class="col-lg">
                <img src="/img/security.png" alt="security" class="float-left">
                <h4>Security</h4>
                <p>Lorem ipsum dolor sit amet.</p>
            </div>
        </div>
    </div>
</div>
<!-- Akhir Panel -->

<!-- workingspace -->
<div class="container">
    <div class="row workingspace">
        <div class="col-6">
            <img src="/img/workingspace.png" alt="Workingspace" class="img-fluid">
        </div>
        <div class="col-5">
            <h3>Your <span>Style</span> Change Your <span>Life</span> </h3>
            <p>Penting memang untuk bereskplorasi dengan gayamu, supaya nggak terlihat membosankan dan hidupmu lebih berwarna. Misal, sekali-kali boleh lah ‘tabrak’ warna biar penampilanmu makin asyik.</p>
        </div>
    </div>
</div>
<!-- Akhir workingspace -->

<!-- Testimonial -->
<section class="testimonial">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-8">
                <h5>"Gaya yang sederhana memang segalanya, karena sebenarnya inilah kunci buatmu tampil apa adanya di manapun berada"</h5>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-6 justify-content-center d-flex">
                <figure class="figure">
                    <img src="/img/img1.png" class="figure-img img-fluid rounded-circle" alt="testi 1">
                </figure>
                <figure class="figure">
                    <img src="/img/img2.png" class="figure-img img-fluid rounded-circle utama" alt="testi 2">
                    <figcaption class="figure-caption">
                        <h5>Sheila</h5>
                        <p>Mahasiswa</p>
                    </figcaption>
                </figure>
                <figure class="figure">
                    <img src="/img/img3.png" class="figure-img img-fluid rounded-circle" alt="testi 3">
                </figure>
            </div>
        </div>
    </div>
</section>
<!-- Akhir Testimonial -->

<!-- Footer -->
<div class="row footer">
    <div class="col text-center">
        <p>2020 All Rights Reserved By HAYUK FASHION GROUP</p>
    </div>
</div>
<!-- Akhir Footer -->

<?= $this->endSection(); ?>