@extends('admin.template.base')
@section('content')

@inject('timeService', 'App\Services\TimeServices')

<!-- start coding -->

   
   <div class="container">
   	<div class="card mt-3 pt-3">
   		<div class="card-body">
			   <div class="card">
					<div class="card-header">
                   <div class="float-right">
                  Jam : {{$timeService->showTimeNow()}}
               </div>
						Filter
					</div>
					<div class="card-body">
						<form action="{{url('admin/produk/filter')}}" method="post">
						@csrf
						<div class="form-group">
							<label for="" class="control-label">Nama</label>
							<input type="text" class="form-control" name="nama" value="{{$nama ?? ""}}">
						</div>
						<div class="form-group">
							<label for="" class="control-label">Stok</label>
							<input type="text" class="form-control" name="stok" value="{{$nama ?? ""}}">
						</div>
						<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="" class="control-label">Harga Min</label>
								<input type="text" class="form-control" name="harga_min" value="{{$harga_min ?? ""}}">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="" class="control-label">Harga Max</label>
								<input type="text" class="form-control" name="harga_max" value="{{$harga_max ?? ""}}">
							</div>
						</div>
						</div>
						<button class="btn btn-primary float-right"><i class="fa fa-search"></i>Filter</button>
					</form>
					</div>
			   </div>
				<div class="container-fluid">
		   		<div class="row ml-1 mr-2 mb-3">
		   			<div class="col-md-8">
		   				<h4>Data Produk</h4>
		   			</div>
   		<div class="col-md-4">
   			<a href="{{url('admin/produk/create')}}" class="btn btn-primary float-right"><i class="fa fa-plus"></i> Data Produk</a>
   		</div>
   	<div class="container">
   		<table class="table">
   			<thead>
   				<th>No</th>
   				<th>Aksi</th>
   				<th>Nama</th>
   				<th>Harga</th>
   				<th>Stok</th>
   			</thead>
   			<tbody>
   				@foreach($list_produk as $produk)
   				<tr>
   					<td>{{$loop->iteration}}</td>
   					<td>
                     <div class="btn-group">
   						   <a href="{{url('admin/produk',$produk->id)}}" class="btn btn-dark"><i class="fa fa-info"></i></a>
   						   <a href="{{url('admin/produk',$produk->id)}}/edit" class="btn btn-warning"><i class="fa fa-edit"></i></a>
                           @include('admin.utils.delete', ['url' =>url('admin/produk', $produk->id)])
                     </div>
   					</td>
   					<td>{{ucwords($produk->nama)}}</td>
   					<td>{{$produk->harga}}</td>
   					<td>{{$produk->stok}}</td>
   				</tr>
   				@endforeach
   			</tbody>
   		</table>
   		
   	</div>

   		</div>
  		 </div>
   	</div>
   </div>

<!-- end coding -->

@endsection