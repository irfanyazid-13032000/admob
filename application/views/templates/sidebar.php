<style>
	.nav-item {
		background-color: #1E5F74;
	}

	#sidebar:hover {
		background-color: #133B5C;
	}

	.nav-item.telahditekan {
		background-color: #133B5C;
	}
</style>

<div class="row">

	<!-- ini sidebar -->
	<div class="col-md-2 mt-2 pr-10 pt-3" id="sdbr">
		<ul style="height: 500px;" class="nav flex-column mb-5">

			<li style="height: 20%;" class="nav-item <?php if ($this->uri->segment(1) === 'halo') {
																									echo "telahditekan";
																								} ?>" id='sidebar'>
				<a style="height: 100%;" class="nav-link text-white" href="<?php echo base_url() ?>halo">Dashboard</a>
			</li>
			<li style="height: 20%;" class="nav-item <?php if ($this->uri->segment(1) === 'perjanjian') {
																									echo "telahditekan";
																								} ?>" id="sidebar">
				<a style="height: 100%;" class="nav-link text-white" href="<?php echo base_url() ?>perjanjian">Perjanjian</a>
			</li>

			<li style="height: 20%;" class="nav-item <?php if ($this->uri->segment(1) === 'rekanan') {
																									echo "telahditekan";
																								} ?>" id='sidebar'>
				<a style="height: 100%;" class=" nav-link text-white" aria-current="page" href=" <?php echo base_url() ?>rekanan">Rekanan</a>
			</li>
			<li style="height: 20%;" class="nav-item <?php if ($this->uri->segment(1) === 'jenis_perjanjian') {
																									echo "telahditekan";
																								} ?>" id="sidebar">
				<a style="height: 100%;" class="nav-link text-white" href="<?php echo base_url() ?>jenis_perjanjian">Jenis Perjanjian</a>
			</li>

			<li style="height: 20%;" class="nav-item" id="sidebar">
				<a style="height: 100%;" class="nav-link text-white" href="<?php echo base_url() ?>close/logout" onclick="return confirm('Apakah Anda Yakin ingin Logout?')">logout</a>
			</li>


		</ul>
	</div>
	<!-- ini tutup sidebar -->
