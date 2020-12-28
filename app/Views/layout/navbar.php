<div class="page-holder">
    <!-- navbar-->
    <header class="header bg-white">
        <div class="container px-0 px-lg-3">
            <nav class="navbar fixed-top navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="home.php"><span class="font-weight-bold text-uppercase text-dark"><img src="/img/logohayuk.png" width="70">HAYUK SPORT</span></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <!-- Link--><a class="nav-link" href="home.php">Home</a>
                        </li>
                        <li class="nav-item">
                            <!-- Link--><a class="nav-link" href="/pages/all">Shop</a>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="pagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categories</a>
                            <div class="dropdown-menu mt-3" aria-labelledby="pagesDropdown">
                                <a class="dropdown-item border-0 transition-link" href="/pages/clothes">Clothes</a>
                                <a class="dropdown-item border-0 transition-link" href="/pages/shoes">Shoes</a>
                                <a class="dropdown-item border-0 transition-link" href="/pages/bag">Bag</a>
                                <a class="dropdown-item border-0 transition-link" href="/pages/cap">Cap</a>
                                <a class="dropdown-item border-0 transition-link" href="/pages/kids">Kids</a>
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link" href="/pages/cart"> <i class="fas fa-dolly-flatbed mr-1 text-gray"></i>Cart</a></li>
                        <li class="nav-item"><a class="nav-link" href="<?= base_url('logout'); ?>"> <i class="fas fa-user-alt mr-1 text-gray"></i>Logout</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>