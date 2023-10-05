<?php

class Produk_model{
  
	private $table = 'barang';
	private $db;

	public function __construct(){
		$this->db = new Database;
	}
	public function getAllProduk(){
		$this->db->query('SELECT * FROM ' . $this->table);
		return $this->db->resultSet();
	}

	public function addCart($id){
		session_start();	 
		$this->db->query("SELECT *  FROM barang where id='$id'");
		$data=$this->db->resultSet();
		foreach ($data as $rec){
		  $nama=$rec["nama"];
		  $kapasitas=$rec["jenisair"];
		  $hrg=$rec["hrg"];
		  $keterangan=$rec["keterangan"];
		}
		$jml=1;	  
		$find=false;		
		if (!empty($_SESSION['cart']['arrCart'])){
			$max=sizeof($_SESSION['cart']['arrCart']);		
			for ($i=0;$i<$max;$i++){
				$cari=array_search($id, $_SESSION['cart']['arrCart'][$i]);
				if ($cari) {
					$_SESSION['cart']['arrCart'][$i]['jml']+=1;
					$find=true;
					break;
				}			
			}			
		}
		if (!$find){
			$item = array('id'=>$id,'nama'=>$nama, 'kapasitas'=>$kapasitas, 'jml'=>$jml, 'keterangan'=>$keterangan, 'hrg'=>$hrg);
			array_push($_SESSION["cart"]["arrCart"],$item);										
		}
	}
}

