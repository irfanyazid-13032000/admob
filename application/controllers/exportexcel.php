<?php
defined('BASEPATH') or exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class exportexcel extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('perjanjian_model');
  }

  public function index()
  {

    // if (null !== $this->session->userdata('tglmulai') && null !== $this->session->userdata('tglselesai')) {
    //   $data['tglmulai'] = $this->session->userdata('tglmulai');
    //   $data['tglselesai'] = $this->session->userdata('tglselesai');
    //   $data['kendaraan'] = $this->kendaraan_model->getDataExportExcelKendaraan($data['tglmulai'], $data['tglselesai']);
    // } else {
    //   $data['tglmulai'] = null;
    //   $data['tglselesai'] = null;
    //   $data['kendaraan'] = $this->kendaraan_model->getData();
    // }


    $data['perjanjian'] = $this->perjanjian_model->getDataExportExcelPerjanjian($this->session->userdata('keyword'));





    $spreadsheet = new Spreadsheet(); // instantiate Spreadsheet

    $sheet = $spreadsheet->getActiveSheet();

    $kolom = 1;

    $sheet->setCellValue('A' . $kolom, "No");
    $sheet->setCellValue('B' . $kolom, "No Perjanjian");
    $sheet->setCellValue('C' . $kolom, "Adendum");
    $sheet->setCellValue('D' . $kolom, "No PK");
    $sheet->setCellValue('E' . $kolom, "Rekanan");
    $sheet->setCellValue('F' . $kolom, "Jenis Perjanjian");
    $sheet->setCellValue('G' . $kolom, "Jangka Waktu Sewa (Awal)");
    $sheet->setCellValue('H' . $kolom, "Jangka Waktu Sewa (Akhir)");
    $sheet->setCellValue('I' . $kolom, "Status Perjanjian");
    $sheet->setCellValue('J' . $kolom, "Objek Perjanjian");
    $sheet->setCellValue('K' . $kolom, "Jumlah Unit");
    $sheet->setCellValue('L' . $kolom, "Sewa Unit Perbulan");
    $sheet->setCellValue('M' . $kolom, "Total Sewa Perbulan");
    $sheet->setCellValue('N' . $kolom, "Lokasi");
    $sheet->setCellValue('O' . $kolom, "Keterangan");

    $baris = $kolom + 1;
    $no = 1;


    foreach ($data['perjanjian'] as $janji) {
      // manually set table data value
      $sheet->setCellValue('A' . $baris, $no);
      $sheet->setCellValue('B' . $baris, $janji['no_perjanjian']);
      $sheet->setCellValue('C' . $baris, $janji['no_adendum']);
      $sheet->setCellValue('D' . $baris, $janji['no_pk']);
      $sheet->setCellValue('E' . $baris, $janji['rekanan']);
      $sheet->setCellValue('F' . $baris, $janji['jenis_perjanjian']);
      $sheet->setCellValue('G' . $baris, $janji['awal']);
      $sheet->setCellValue('H' . $baris, $janji['akhir']);
      $sheet->setCellValue('I' . $baris, $janji['status_perjanjian']);
      $sheet->setCellValue('J' . $baris, $janji['objek_perjanjian']);
      $sheet->setCellValue('K' . $baris, $janji['jumlah_unit']);
      $sheet->setCellValue('L' . $baris, $janji['sewa_unit_perbulan']);
      $sheet->setCellValue('M' . $baris, $janji['total_sewa_perbulan']);
      $sheet->setCellValue('N' . $baris, $janji['lokasi']);
      $sheet->setCellValue('O' . $baris, $janji['keterangan']);
      $baris++;
      $no++;
    }


    $writer = new Xlsx($spreadsheet); // instantiate Xlsx
    if (null !== $this->session->userdata('keyword')) {
      $filename = 'Data pencarian berdasarkan ' . $this->session->userdata('keyword'); // set filename for excel file to be exported
    } else {
      $filename = 'Seluruh Data Perjanjian';
    }



    header('Content-Type: application/vnd.ms-excel'); // generate excel file
    header('Content-Disposition: attachment;filename="' . $filename . '.xlsx"');
    header('Cache-Control: max-age=0');

    $writer->save('php://output');  // download file 
  }
}
