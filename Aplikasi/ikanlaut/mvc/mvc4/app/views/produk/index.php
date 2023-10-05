	<div class="container">
	 <div class="d-flex flex-wrap bg-light">
       <?php foreach ($data['produk'] as $prd) :?>	 
		<div class="card ml-2" style="width: 25%;padding:5px;" >
		  <img class="card-img-top" <img src='<?= BASEURL;?>/img/daun/<?= $prd['foto'];?>' alt="Card image cap">
		  <div class="card-body">
			<h5 class="card-title"><?= $prd['nama'];?></h5>
			<p class="card-text"><?= $prd['jenisair'];?></p>
			<p class="card-text"><?= $prd['hrg'];?></p>
			<p class="card-text"><?= $prd['keterangan'];?></p>
			<a class="btn btn-primary" href="<?= BASEURL;?>/produk/addCart/<?= $prd['id'];?>">Order</a><br />
		  </div>
		</div>
		<?php endforeach; ?>
	 </div>
	</div>	