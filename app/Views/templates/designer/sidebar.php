<div class="row">
    <div class="col">
        <img src="<?= base_url('logo-navbar.png') ?>" alt="" width="80%">
    </div>
</div>
<hr class="text-white">
<div class="row">
    <div class="col">
        <ul class="sidebar-menu">
            <a href="<?= base_url('designer/dashboard') ?>">
                <li class="list-sidebar-menu 
                <?php if ($segment2 === 'dashboard') {
                    echo 'list-sidebar-menu-active';
                } ?> p-2 mb-2 rounded-5">
                    <i class="bi bi-speedometer pe-2"></i>
                    Dashboard
                </li>
            </a>
            <hr class="text-white">
            <a href="<?= base_url('logout') ?>">
                <li class="list-sidebar-menu-logout p-2 rounded-5">
                    <i class="bi bi-door-closed pe-2"></i>
                    Keluar
                </li>
            </a>
        </ul>
    </div>
</div>
<hr class="text-white mt-0">
<div class="row">
    <div class="col text-center mt-2">
        <img src="<?= base_url($akun['avatar']); ?>" alt="" class="foto-avatar shadow rounded-circle">
        <p class="mt-1">
        <h6 class="text-white"><?= $akun['nama'] ?></h6>
        <span style="color: #e5e5e5"><?= $akun['email'] ?></span>
        </p>
    </div>
</div>