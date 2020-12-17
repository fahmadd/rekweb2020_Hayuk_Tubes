<nav class="navbar navbar-expand-lg navbar-light bg-transparent" id="mainNav">
    <div class="container">
        <a class="navbar-brand font-weight-bold" href="/login"><img src="/img/logo3.png" width="40">HAYUK FASHION</a>
        <button class="navbar-toggler navbar-toogler-right" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ml-auto">
                <a class="nav-link active js-scroll-trigger font-weight-bold" href="<?= base_url('/'); ?>">HOME</a>
                <a class="nav-link js-scroll-trigger font-weight-bold" href="<?= base_url('/pages/sepatu'); ?>">SEPATU</a>
                <a class="nav-link js-scroll-trigger font-weight-bold" href="<?= base_url('/pages/sendal'); ?>">SENDAL</a>
                <a class="nav-link js-scroll-trigger font-weight-bold" href="<?= base_url('/pages/pakaian'); ?>">PAKAIAN</a>
                <a class="nav-link js-scroll-trigger font-weight-bold" href="<?= base_url('/pages/hubungi'); ?>">HUBUNGI KAMI</a>
            </div>
            <?php if (logged_in()) : ?>
                <a class="nav-item" href="/logout">Logout</a>
            <?php else : ?>
                <a class="nav-item btn btn-primary font-weight-bold " href="/login">Login</span> </a>
            <?php endif; ?>
        </div>
    </div>
</nav>