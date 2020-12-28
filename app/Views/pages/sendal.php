<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<?php
function get_CURL($url)
{
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    $result = curl_exec($curl);
    curl_close($curl);
    return $result = json_decode($result, true);
}

?>
<div class="container">
    <div class="row mt-3">
        <div class="col">
            <h1>All Menu</h1>
        </div>
    </div>

    <div class="row">
        <?php for ($i = 0; $i < 50; $i++) : ?>
            <?php
            $itemId = $jumlahItem['items'][$i]['itemid'];
            $getBarang = get_CURL('https://shopee.co.id/api/v2/item/get?itemid=' . $itemId . '&shopid=270510657');
            $jenisBarang = $getBarang['item']['categories'];
            ?>
            <?php if ($jenisBarang[1]['display_name'] === "Sandal" || $jenisBarang[2]['display_name'] === "Sandal Slide") : ?>
                <?php
                $namaBarang = $getBarang['item']['name'];
                $gambarBarang = $getBarang['item']['image'];
                $hargaBarang = $getBarang['item']['models'][0]['price'];
                $stockBarang = $getBarang;
                $ukuranBarang = count($stockBarang['item']['models']);
                ?>
                <div class="col-md-3">
                    <div class="card mb-3">
                        <img src="https://cf.shopee.co.id/file/<?= $gambarBarang; ?>" class=" card-img-top">
                        <div class="card-body">
                            <h5 class="card-title"><?= $namaBarang; ?></h5>
                            <div class="row">
                                <div class="col">
                                    <p><?= $hargaBarang; ?></p>
                                    <a href="#" class="card-link see-detail" data-toggle="modal" data-target="#exampleModal" data-id="`+data.imdbID+`">See Detail</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
        <?php endfor; ?>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Movie Search</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="https://cf.shopee.co.id/file/<?= $gambarBarang ?>" class="img-fluid">
                                </div>
                                <div class="col-md-8">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <h3><?= $namaBarang; ?></h3>
                                        </li>
                                        <li class="list-group-item">Kategori : <?= $jenisBarang[0]['display_name'] . ", " . $jenisBarang[1]['display_name'] . ", " . $jenisBarang[2]['display_name']; ?>
                                        </li>
                                        <li class="list-group-item">Size :

                                            <div class="row">
                                                <?php for ($j = 0; $j < $ukuranBarang; $j++) : ?>
                                                    <div class="col-md-6">
                                                        <?php
                                                        if (count($stockBarang['item']['models'][$j]['price_stocks']) > 1) {
                                                            if ($stockBarang['item']['models'][$j]['price_stocks'][0]['stock'] === null) {
                                                                $stockUkuran = $stockBarang['item']['models'][$j]['price_stocks'][1]['stock'];
                                                            } else  if ($stockBarang['item']['models'][$j]['price_stocks'][0]['stock'] !== null) {
                                                                $stockUkuran = $stockBarang['item']['models'][$j]['price_stocks'][0]['stock'];
                                                            }
                                                        } else {
                                                            $stockUkuran = $stockBarang['item']['models'][$j]['price_stocks'][0]['stock'];
                                                        }
                                                        $namaUkuran = $stockBarang['item']['models'][$j]['name'];
                                                        echo $namaUkuran . " Tersisa :  " . $stockUkuran . "<br>";
                                                        ?>
                                                    </div>
                                                <?php endfor; ?>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>