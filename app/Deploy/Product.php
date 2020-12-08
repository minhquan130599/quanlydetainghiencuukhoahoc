<?php

namespace App\Deploy;

use Illuminate\Database\Eloquent\Model;
use DB;

class Product extends Model
{
    protected $table      = 'tblsanpham';
    protected $primaryKey = 'pk_imasp';
    private $__leader     = 3;
    protected $fillable   = [
        'pk_imasp', 'pk_imalsp', 'stensp', 'stomtat', 'sthoigiancongbo',
        'snoicongbo', 'sdinhdanh', 'pk_imadt', 'sghichu'
    ];
    public $timestamps = false;


    /**
     * Lấy danh sách sản phẩm khoa học
     * @param [array] $search_data [Mảng dữ liệu các tiêu chí tìm kiếm]
     * @return [object array] [Mảng đối tượng các sản phẩm khoa học]
     */
    public function getProduct($search_data)
    {
        // DB::enableQueryLog();
        $result = DB::table('tblsanpham AS sp')
                    ->join('tbldetai AS dt', 'sp.pk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblloaisanpham AS lsp', 'lsp.pk_imalsp', '=', 'sp.pk_imalsp')
                    ->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                    ->select('sp.*', 'dt.stendt', 'lsp.stenloaisp', 'cb.shocvan');

        if (!empty ($search_data['topic']))
        {
            $result = $result->where('sp.pk_imadt', $search_data['topic']);
        }

        if (!empty ($search_data['leader']))
        {
            $result = $result->where('cb.pk_smacanbo', $search_data['leader']);
        }

        if (!empty ($search_data['product']))
        {
            $result = $result->where('sp.stensp', 'LIKE', '%'.$search_data['product'].'%');
        }

        if (!empty ($search_data['publication']))
        {
            $result = $result->where('sp.snoicongbo', 'LIKE', '%'.$search_data['publication'].'%');
        }

        if (!empty ($search_data['public_year']))
        {
            $result = $result->whereRaw(DB::raw("SUBSTRING(sp.sthoigiancongbo, 7) = {$search_data['public_year']}"));
        }

        $result = $result->paginate(15);
        // dd(DB::getQueryLog());
        return $result;
    }

    public function getProductForResearcher($macb)
    {
        // DB::enableQueryLog();
        $result = DB::table('tblsanpham AS sp')
                    ->join('tbldetai AS dt', 'sp.pk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblloaisanpham AS lsp', 'lsp.pk_imalsp', '=', 'sp.pk_imalsp')
                    ->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
                    ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                    ->select('sp.*', 'dt.stendt', 'lsp.stenloaisp', 'cb.shocvan')
                    ->where('cb.pk_smacanbo',$macb);

        $result = $result->get();
        // dd(DB::getQueryLog());
        return $result;
    }
}
