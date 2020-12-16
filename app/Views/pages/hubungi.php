<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<section class="contact">
    <div class="container pt-5">
        <div class="main">
            <h2>Hubungi Kami</h2>
            <div class="border"></div>
            <form>
                <div>
                    <input type="text" name="" required="" placeholder="Name">
                </div>
                <div>
                    <input type="email" name="" required="" placeholder="Email">
                </div>
                <div>
                    <input type="text" name="" required="" placeholder="Subject">
                </div>
                <div>
                    <textarea required="" placeholder="Message"></textarea>
                </div>
                <input type="submit" name="" value="Submit">
            </form>
        </div>
    </div>
</section>



<?= $this->endSection(); ?>