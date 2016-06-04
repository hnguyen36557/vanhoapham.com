    <div id="categorymenu">
      <nav class="subnav">
        <ul class="nav-pills categorymenu">
        <li><a href="{{ url('/') }}">Trang Chủ</a></li> 
        <?php
          $menu_level_1 = DB::table('cates')->where('parent_id',0)->get();
        ?>
        @foreach($menu_level_1 as $item_level_1)
          <li><a   href="{!! URL('loai-san-pham',[$item_level_1->id,$item_level_1->alias]) !!}">{!! $item_level_1->name !!}</a>
          </li>
        @endforeach
          <li><a href="{{ url('lien-he') }}">Liên Hệ</a></li>         
        </ul>
      </nav>
    </div>