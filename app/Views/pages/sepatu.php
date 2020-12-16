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

function get_Item($jumlah)
{
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, 'https://shopee.co.id/api/v2/search_items/?by=pop^&entry_point=ShopBySearch&limit=' . $jumlah . '&match_id=270510657&newest=0&order=desc&page_type=shop&version=2');
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
    curl_setopt($ch, CURLOPT_ENCODING, 'gzip, deflate');

    $headers = array();
    $headers[] = 'Authority: shopee.co.id';
    $headers[] = 'Cache-Control: max-age=0';
    $headers[] = 'Upgrade-Insecure-Requests: 1';
    $headers[] = 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36';
    $headers[] = 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9';
    $headers[] = 'Sec-Fetch-Site: none';
    $headers[] = 'Sec-Fetch-Mode: navigate';
    $headers[] = 'Sec-Fetch-User: ?1';
    $headers[] = 'Sec-Fetch-Dest: document';
    $headers[] = 'Accept-Language: id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7';
    $headers[] = 'If-None-Match: 178dc0bab253df295671b39e5127aaaf';
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    $result = curl_exec($ch);
    return $result = json_decode($result, true);
}
$jumlah = 10;
$jumlahItem = get_Item($jumlah);
?>
<div class="container">
    <div class="row mt-3">
        <div class="col">
            <h1>All Menu</h1>
        </div>
    </div>

    <div class="row">
        <?php for ($i = 0; $i < $jumlah; $i++) : ?>
            <?php
            $itemId = $jumlahItem['items'][$i]['itemid'];
            $getBarang = get_CURL('https://shopee.co.id/api/v2/item/get?itemid=' . $itemId . '&shopid=270510657');
            $jenisBarang = $getBarang['item']['categories'];
            ?>
            <?php if ($jenisBarang[1]['display_name'] === "Sepatu Olahraga" || $jenisBarang[2]['display_name'] === "Sepatu Running") : ?>
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
                    <div class="modal-header bg-primary">
                        <h5 class="modal-title" id="exampleModalLabel">Detail Barang</h5>
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