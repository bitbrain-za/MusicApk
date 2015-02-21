package com.winca.music.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.winca.music.util.MusicUtil;
import com.winca.service.scannerMedia.Album;
import java.util.Map;

public class AlbumsAdapter extends BaseAdapter
{
  private LayoutInflater mInflater = null;
  private Map<Integer, Object> mMap = null;
  private int resID = 0;

  public AlbumsAdapter(Context paramContext, Map<Integer, Object> paramMap, int paramInt)
  {
    this.mInflater = LayoutInflater.from(paramContext);
    this.mMap = paramMap;
    this.resID = paramInt;
  }

  public int getCount()
  {
    return this.mMap.size();
  }

  public Object getItem(int paramInt)
  {
    return null;
  }

  public long getItemId(int paramInt)
  {
    return 0L;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    String str = ((Album)this.mMap.get(Integer.valueOf(paramInt))).getAlbum();
    AlbumsViewHolder localAlbumsViewHolder;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(this.resID, null);
      localAlbumsViewHolder = new AlbumsViewHolder();
      localAlbumsViewHolder.flAlbum = ((FrameLayout)paramView.findViewById(2131361792));
      localAlbumsViewHolder.ivAlbum = ((ImageView)paramView.findViewById(2131361793));
      localAlbumsViewHolder.tvAlbumName = ((TextView)paramView.findViewById(2131361794));
      paramView.setTag(localAlbumsViewHolder);
      if (MusicUtil.mCurrentPlayAlbum == null)
        break label169;
      if (!str.contains(MusicUtil.mCurrentPlayAlbum))
        break label156;
      localAlbumsViewHolder.flAlbum.setBackgroundResource(2130837597);
    }
    while (true)
    {
      localAlbumsViewHolder.ivAlbum.setBackgroundResource(2130837598);
      localAlbumsViewHolder.tvAlbumName.setText(str);
      return paramView;
      localAlbumsViewHolder = (AlbumsViewHolder)paramView.getTag();
      break;
      label156: localAlbumsViewHolder.flAlbum.setBackgroundResource(2130837509);
      continue;
      label169: localAlbumsViewHolder.flAlbum.setBackgroundResource(2130837509);
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.adapter.AlbumsAdapter
 * JD-Core Version:    0.6.0
 */