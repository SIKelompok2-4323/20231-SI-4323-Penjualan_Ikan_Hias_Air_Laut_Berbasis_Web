<?php

class Member extends Controller{

 public function index(){
  $data['title'] = 'Halaman Member';
  $this->view('templates/header', $data);
  $this->view('member/index');
  $this->view('templates/footer');
 }

}
