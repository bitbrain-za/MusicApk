package com.winca.music.Pages;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.winca.music.MusicActivity;
import com.winca.music.adapter.AlbumsArtistListAdapter;
import com.winca.music.mediautil.AudioEntity;
import com.winca.music.player.MusicOperaUtil;
import com.winca.music.player.MusicPlayerDataManager;
import com.winca.music.player.MusicPlayerDef;
import com.winca.music.player.MusicPlayerDef.PageEnum;
import java.util.Map;

class AritstAlbumListPage extends Page
  implements View.OnClickListener, AdapterView.OnItemClickListener, MusicPlayerDef
{
  private static int listStyle = 1;
  private ListView albumsListView = null;
  private IntentFilter filter = null;
  private ImageView iconAlbum = null;
  private String mAlbum = null;
  private AlbumsArtistListAdapter mAlbumsArtistListAdapter = null;
  private String mArtist = null;
  private MyBroadcastReceiver mBrocastReceive = null;
  private ImageView mListsPlay = null;
  private TextView tvAlbumName = null;
  private TextView tvArtistName = null;

  public AritstAlbumListPage(MusicActivity paramMusicActivity)
  {
    super(paramMusicActivity);
  }

  public static int GetListStyle()
  {
    return listStyle;
  }

  public static void SetListStyle(int paramInt)
  {
    listStyle = paramInt;
  }

  private void UpdateListStyle()
  {
    if (listStyle == 1)
    {
      this.tvAlbumName.setVisibility(0);
      this.tvArtistName.setVisibility(0);
      return;
    }
    if (listStyle == 2)
    {
      this.tvAlbumName.setVisibility(8);
      this.tvArtistName.setVisibility(0);
      return;
    }
    this.tvAlbumName.setVisibility(0);
    this.tvArtistName.setVisibility(0);
  }

  private void initBrocast()
  {
    this.mBrocastReceive = new MyBroadcastReceiver(null);
    this.filter = new IntentFilter();
    this.filter.addAction("com.winca.kkcmh.UPDATA_ADAPTER");
    this.filter.addAction("com.winca.kkcmh.UPDATA_PLAYING_SONG_ADAPTER");
    this.mActivity.registerReceiver(this.mBrocastReceive, this.filter);
  }

  private void initListSView()
  {
    initWidgets();
    setAdapter();
    initBrocast();
    setListener();
  }

  private void setAdapter()
  {
    Map localMap = this.mActivity.mDataManager.getPlayingSongMap();
    this.mAlbumsArtistListAdapter = new AlbumsArtistListAdapter(this.mActivity, localMap, 2130903046);
    this.albumsListView.setAdapter(this.mAlbumsArtistListAdapter);
  }

  private void setListener()
  {
    this.albumsListView.setOnItemClickListener(this);
    this.mListsPlay.setOnClickListener(this);
  }

  private void setSelection()
  {
    if (MusicPlayerDataManager.curPlayPos != -1)
    {
      int i = MusicPlayerDataManager.getSelectionPos();
      this.albumsListView.setSelection(i);
    }
  }

  private void unRegisterBrocast()
  {
    this.mActivity.unregisterReceiver(this.mBrocastReceive);
  }

  public void OnDestrory()
  {
    unRegisterBrocast();
    super.OnDestrory();
  }

  public void ShowCurrtentItem()
  {
    MusicPlayerDataManager localMusicPlayerDataManager = this.mActivity.mDataManager;
    if (localMusicPlayerDataManager != null)
    {
      AudioEntity localAudioEntity = (AudioEntity)localMusicPlayerDataManager.getPlayingSongMap().get(Integer.valueOf(0));
      if (localAudioEntity != null)
      {
        this.mAlbum = localAudioEntity.getAlbum();
        this.mArtist = localAudioEntity.getArtist();
        this.tvAlbumName.setText(this.mAlbum);
        this.tvArtistName.setText(this.mArtist);
      }
      return;
    }
    this.tvAlbumName.setText("");
    this.tvArtistName.setText("");
  }

  public void create()
  {
    createLayout(2130903041);
    setVisibility(8);
    initListSView();
    super.create();
  }

  public void initWidgets()
  {
    this.albumsListView = ((ListView)findViewById(2131361798));
    this.mListsPlay = ((ImageView)findViewById(2131361799));
    this.iconAlbum = ((ImageView)findViewById(2131361795));
    this.tvAlbumName = ((TextView)findViewById(2131361796));
    this.tvArtistName = ((TextView)findViewById(2131361797));
    this.mAlbum = "";
    this.mArtist = "";
    this.tvAlbumName.setText(this.mAlbum);
    this.tvArtistName.setText(this.mArtist);
    this.iconAlbum.setBackgroundResource(2130837595);
  }

  public void onClick(View paramView)
  {
    if (paramView == this.mListsPlay)
    {
      this.mActivity.updaPlayerPlayList();
      MusicOperaUtil.SetPlay(this.mActivity, 0);
      this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_PLAYING_MUSIC);
    }
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.mActivity.updaPlayerPlayList();
    MusicOperaUtil.SetPlay(this.mActivity, paramInt);
  }

  public void onKeyBack()
  {
    this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_MAIN_PAGE);
  }

  public void onShow()
  {
    UpdateListStyle();
    ShowCurrtentItem();
    setSelection();
    super.onShow();
  }

  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
  }

  private class MyBroadcastReceiver extends BroadcastReceiver
  {
    private MyBroadcastReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      String str = paramIntent.getAction();
      if (str.compareTo("com.winca.kkcmh.UPDATA_ADAPTER") == 0)
      {
        AritstAlbumListPage.this.mAlbumsArtistListAdapter.notifyDataSetChanged();
        AritstAlbumListPage.this.setSelection();
      }
      do
        return;
      while (str.compareTo("com.winca.kkcmh.UPDATA_PLAYING_SONG_ADAPTER") != 0);
      AritstAlbumListPage.this.mAlbumsArtistListAdapter.notifyDataSetChanged();
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.Pages.AritstAlbumListPage
 * JD-Core Version:    0.6.0
 */