<?php
class Close extends CI_Controller
{
  public function index()
  {
    $this->session->sess_destroy('tglmulai');
    $this->session->sess_destroy('tglselesai');

    redirect(base_url('kendaraan'));
  }

  public function mobil()
  {
    $this->session->sess_destroy('keyword');
    redirect(base_url('mobil'));
  }

  public function perjanjian()
  {
    $this->session->unset_userdata('keyword');
    redirect(base_url('perjanjian'));
  }


  public function rekanan()
  {
    $this->session->unset_userdata('keyword');
    redirect(base_url('rekanan'));
  }

  public function jenis_perjanjian()
  {
    $this->session->unset_userdata('keyword');
    redirect('jenis_perjanjian');
  }

  public function logout()
  {
    $this->session->sess_destroy('nama');
    redirect(base_url('halo'));
  }
}
