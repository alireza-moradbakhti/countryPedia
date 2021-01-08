<div class="row">
        <?php foreach((!empty($_GET['search'])) ? searchInCountries($_GET['search']) : getLastCountries() as $country): ?>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
          <img class="bd-placeholder-img card-img-top" width="100%" height="225" src="<?=$country['flag'];?> "/>
            <div class="card-body">
              <p class="card-text">
              <h1><?=$country['name'];?></h1>
              <?=shortDescription($country['short_description'],10);?>
              </p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a href="country.php?id=<?=$country['id'];?>&c=<?=base64_encode($country['name']);?>&sd=<?=base64_encode($country['short_description']);?>&f=<?=base64_encode($country['flag']);?>" type="button" class="btn btn-sm btn-outline-secondary">View</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php endforeach; ?>
</div>