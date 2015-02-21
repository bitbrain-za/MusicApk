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
import com.winca.service.scannerMedia.Artist;
import java.util.Map;

public class ArtistsAdapter extends BaseAdapter
{
  private LayoutInflater mInflater = null;
  private Map<Integer, Object> mMap = null;
  private int resID = 0;

  public ArtistsAdapter(Context paramContext, Map<Integer, Object> paramMap, int paramInt)
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
    String str = ((Artist)this.mMap.get(Integer.valueOf(paramInt))).getArtist();
    ArtistsViewHolder localArtistsViewHolder;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(this.resID, null);
      localArtistsViewHolder = new ArtistsViewHolder();
      localArtistsViewHolder.flArtist = ((FrameLayout)paramView.findViewById(2131361800));
      localArtistsViewHolder.ivArtist = ((ImageView)paramView.findViewById(2131361801));
      localArtistsViewHolder.tvArtistName = ((TextView)paramView.findViewById(2131361802));
      paramView.setTag(localArtistsViewHolder);
      if (MusicUtil.mCurrentPlayArtist == null)
        break label169;
      if (!str.contains(MusicUtil.mCurrentPlayArtist))
        break label156;
      localArtistsViewHolder.flArtist.setBackgroundResource(2130837597);
    }
    while (true)
    {
      localArtistsViewHolder.ivArtist.setBackgroundResource(2130837598);
      localArtistsViewHolder.tvArtistName.setText(str);
      return paramView;
      localArtistsViewHolder = (ArtistsViewHolder)paramView.getTag();
      break;
      label156: localArtistsViewHolder.flArtist.setBackgroundResource(2130837510);
      continue;
      label169: localArtistsViewHolder.flArtist.setBackgroundResource(2130837510);
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.adapter.ArtistsAdapter
 * JD-Core Version:    0.6.0
 */