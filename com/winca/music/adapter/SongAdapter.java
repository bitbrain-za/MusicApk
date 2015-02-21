package com.winca.music.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.winca.music.mediautil.AudioEntity;
import com.winca.music.player.MusicPlayerControler;
import com.winca.music.service.MusicService;
import java.util.Map;

public class SongAdapter extends BaseAdapter
{
  private final String TAG = "SongAdapter";
  private LayoutInflater mInflater = null;
  private Map<Integer, Object> mList = null;
  private int resID = 0;

  public SongAdapter(Context paramContext, Map<Integer, Object> paramMap, int paramInt)
  {
    this.mInflater = LayoutInflater.from(paramContext);
    this.mList = paramMap;
    this.resID = paramInt;
  }

  public int getCount()
  {
    return this.mList.size();
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
    AudioEntity localAudioEntity = (AudioEntity)this.mList.get(Integer.valueOf(paramInt));
    SongsViewHolder localSongsViewHolder;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(this.resID, null);
      localSongsViewHolder = new SongsViewHolder();
      localSongsViewHolder.tvSongID = ((TextView)paramView.findViewById(2131361863));
      localSongsViewHolder.ivPlaying = ((ImageView)paramView.findViewById(2131361862));
      localSongsViewHolder.tvSongName = ((TextView)paramView.findViewById(2131361864));
      localSongsViewHolder.tvArtistName = ((TextView)paramView.findViewById(2131361802));
      localSongsViewHolder.tvSongTime = ((TextView)paramView.findViewById(2131361865));
      paramView.setTag(localSongsViewHolder);
    }
    while (localAudioEntity == null)
    {
      return paramView;
      localSongsViewHolder = (SongsViewHolder)paramView.getTag();
    }
    localSongsViewHolder.tvSongID.setText(String.valueOf(paramInt + 1));
    String str = MusicService.mMusicPlayer.getCurPlayPath();
    if (str != null)
      if ((localAudioEntity != null) && (localAudioEntity.getData().compareTo(str) == 0))
      {
        localSongsViewHolder.tvSongID.setVisibility(8);
        localSongsViewHolder.ivPlaying.setVisibility(0);
      }
    while (true)
    {
      localSongsViewHolder.tvSongName.setText(localAudioEntity.getTitle());
      localSongsViewHolder.tvArtistName.setText(localAudioEntity.getArtist());
      localSongsViewHolder.tvSongTime.setText(localAudioEntity.getDuration());
      if (paramInt % 2 != 0)
        break;
      paramView.setBackgroundResource(2131034112);
      return paramView;
      localSongsViewHolder.tvSongID.setVisibility(0);
      localSongsViewHolder.ivPlaying.setVisibility(8);
      continue;
      localSongsViewHolder.tvSongID.setVisibility(0);
      localSongsViewHolder.ivPlaying.setVisibility(8);
    }
    paramView.setBackgroundResource(2131034113);
    return paramView;
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.adapter.SongAdapter
 * JD-Core Version:    0.6.0
 */