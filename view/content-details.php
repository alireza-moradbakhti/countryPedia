<?php
$c_data      = getCountryById($c_id);
$foods       = explode('---',$c_data['foods']);
$characters  = explode('---',$c_data['characters']);
$cultures    = explode('---',$c_data['cultures']);
$religs      = explode(_separator,$c_data['religs']);
$langs       = explode(_separator,$c_data['langs']);

$characters_name = explode(_separator,$characters[0]);
$characters_desc = explode(_separator,$characters[1]);
$characters_img = explode(_separator,$characters[2]);

if(count($foods) > 1){
    $foods_id = explode(_separator,$foods[0]);
    $foods_name = explode(_separator,$foods[1]);
    $foods_desc = explode(_separator,$foods[2]);
    $foods_img = explode(_separator,$foods[3]);
}
?>

<div class="row">
    <div class="col-4">
        <h1 class="mb-4">Culture</h1>
        <p><strong><?=$cultures[0];?></strong>&nbsp;<?=$cultures[1];?></p>
    </div>
    <div class="col-4">
        <h1 class="mb-4">Languages</h1>
        <p><?php foreach ($langs as $lang): ?><span class="alert alert-dark p-1"><?=$lang;?></span>&nbsp;<?php endforeach; ?></p>
    </div>
    <div class="col-4">
        <h1 class="mb-4">Religions</h1>
        <p><?php foreach ($religs as $relig): ?><span class="alert alert-dark p-1"><?=$relig;?></span>&nbsp;<?php endforeach; ?></p>
    </div>
</div>
<div class="dropdown-divider mt-3 mb-3"></div>
<div class="row">
    <div class="col-12">
        <h1 class="mb-4">Characters</h1>
        <div class="row">
            <?php foreach ($characters_name as $chr_key=>$chr_val): ?>
                <div class="col-3">
                    <div class="card">
                        <div class="card-header"><?=$characters_name[$chr_key];?></div>
                        <div class="card-img">
                            <div style="height: 150px;background: url('<?=$characters_img[$chr_key];?>') no-repeat center; background-size: cover"></div>
                        </div>
                        <div class="card-body small"><?=$characters_desc[$chr_key];?></div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<div class="dropdown-divider mt-3 mb-3"></div>
<div class="row">
    <div class="col-12">
        <h1 class="mb-4">Foods</h1>
        <div class="row">
            <?php foreach ($foods as $food_key=>$food_val): if(empty($foods_name[$food_key])) continue; ?>
                <div class="col-3">
                    <div class="card">
                        <div class="card-header"><?=$foods_name[$food_key];?></div>
                        <div class="card-img">
                            <div style="height: 150px;background: url('<?=$foods_img[$food_key];?>') no-repeat center; background-size: cover"></div>
                        </div>
                        <div class="card-body small"><?=$foods_desc[$food_key];?></div>
                        <?php
                        $ings = getFoodIng($foods_id[$food_key]);
                        if(count($ings) > 0):
                        ?>
                            <div class="card-footer small">
                                <?php foreach ($ings as $ingg): ?>
                                    <span class="alert alert-info p-1"><?=$ingg['name'];?></span>
                                <?php endforeach; ?>
                            </div>
                        <?php endif;?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>

<div class="clearfix"></div>