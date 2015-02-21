package com.winca.music.Pages;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.storage.StorageManager;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.winca.Dialog.ScanDialog;
import com.winca.music.MusicActivity;
import com.winca.music.adapter.AlbumsAdapter;
import com.winca.music.adapter.ArtistsAdapter;
import com.winca.music.adapter.SongAdapter;
import com.winca.music.mediautil.AudioEntity;
import com.winca.music.player.MusicOperaUtil;
import com.winca.music.player.MusicPlayerControler;
import com.winca.music.player.MusicPlayerDataManager;
import com.winca.music.player.MusicPlayerDef;
import com.winca.music.player.MusicPlayerDef.PageEnum;
import com.winca.music.preference.MusicSharePreference;
import com.winca.service.scannerMedia.Album;
import com.winca.service.scannerMedia.Artist;
import java.io.File;
import java.util.Map;

public class MusicMainPage extends Page
  implements View.OnClickListener, AdapterView.OnItemClickListener, View.OnTouchListener, MusicPlayerDef
{
  private static final String TAG = "MusicMainPage";
  public final int ERROR_FILE_NOT_EXIST = 3;
  public final int ERROR_NOT_PLAY_STATE = 2;
  public final int ERROR_PLAYING = 1;
  private final int MSG_PLAY_HISTORY = 2;
  public final int PLAY_STATE_PAUSE = 1;
  public final int PLAY_STATE_PLAY = 0;
  public final int PLAY_STATE_STOP = 2;
  public final int SUCCESS = 0;
  private GridView albumGridView = null;
  private LinearLayout albumsLayout = null;
  private TextView albumsMenu = null;
  private GridView artistGridView = null;
  private LinearLayout artistsLayout = null;
  private TextView artistsMenu = null;
  private LinearLayout changeLayout = null;
  private TextView changeMenu = null;
  private int curVolmue = -1;
  private ImageView hdImageView = null;
  private boolean interruptJump = false;
  private ListView listView = null;
  private AlbumsAdapter mAlbumsAdapter = null;
  private ArtistsAdapter mArtistsAdapter = null;
  private MyBroadcastReceiver mBroadcastReceiver = null;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
      case 2:
      }
      while (true)
      {
        super.handleMessage(paramMessage);
        return;
        if (MusicPlayerControler.isPlayHistory())
          continue;
        MusicMainPage.this.handlePlayHistory();
      }
    }
  };
  private int mLastUsbVolmue = 1;
  private MountBroadcastReceiver mMountReceiver = null;
  private ScanDialog mScanDialog = null;
  private SongAdapter mSongAdapter = null;
  private StorageManager mStorageManager = null;
  private LinearLayout noContentLayout = null;
  private ImageButton playMusic = null;
  private ImageView sdImageView = null;
  private LinearLayout songsLayout = null;
  private TextView songsMenu = null;
  private ImageView usbImageView = null;

  public MusicMainPage(MusicActivity paramMusicActivity)
  {
    super(paramMusicActivity);
    Log.i("MusicMainPage", "MusicMainPage   MusicMianVireCreate");
  }

  private void JumpToHistoryPos()
  {
    if (this.interruptJump)
    {
      MusicOperaUtil.setReset(this.mActivity);
      return;
    }
    Intent localIntent = new Intent("com.winca.music.seekBar");
    localIntent.putExtra("seekBarPosition", this.mActivity.lastPlayPosition);
    this.mActivity.sendBroadcast(localIntent);
    this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_PLAYING_MUSIC);
  }

  private void PlayHistory()
  {
    this.mActivity.readPlayerData();
    int i = canPlayHistory();
    if (i != 0)
      Log.i("MusicMainPage", "Play History Fail:" + i);
    do
      return;
    while (this.mActivity.lastPlayPath == null);
    changeMusicLib(getVolume(this.mActivity.lastPlayPath));
    this.mHandler.sendEmptyMessageDelayed(2, 800L);
  }

  private int canPlayHistory()
  {
    if (MusicPlayerControler.isPlaying())
    {
      Log.i("MusicMainPage", "PlayHistory Fail is Playing");
      return 1;
    }
    if ((this.mActivity.getLastPlayState() != 0) && (MusicPlayerControler.isPlayHistory()))
    {
      Log.i("MusicMainPage", "PlayHistory in get Play State:" + this.mActivity.getLastPlayState());
      return 2;
    }
    if (this.mActivity.lastPlayPath != null)
    {
      File localFile = new File(this.mActivity.lastPlayPath);
      if ((localFile != null) && (!localFile.exists()))
        return 3;
    }
    return 0;
  }

  private void changeMusicLib(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1) && (paramInt != 3) && (paramInt != 2));
    boolean bool1;
    boolean bool2;
    boolean bool3;
    while (true)
    {
      return;
      if (paramInt != 0)
        break;
      if (!this.mStorageManager.getVolumeState("/mnt/sdcard/sdcard").equals("mounted"))
        continue;
      if (getCurVolume() != paramInt)
      {
        Log.i("MusicMainPage", "Change Music Lib old:" + getCurVolume() + "  new:" + paramInt);
        setCurVolume(paramInt);
        MusicOperaUtil.setReset(this.mActivity);
      }
      bool1 = false;
      bool2 = false;
      bool3 = false;
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 3:
      case 2:
      }
    }
    while (true)
    {
      this.mActivity.mDataManager.ChangeVolmue(paramInt);
      initAdapter(paramInt);
      this.sdImageView.setSelected(bool1);
      this.usbImageView.setSelected(bool3);
      this.hdImageView.setSelected(bool2);
      saveMusicLib();
      return;
      if (paramInt == 1)
      {
        if (this.mStorageManager.getVolumeState("/mnt/udisk").equals("mounted"))
          break;
        return;
      }
      if ((paramInt != 3) || (this.mStorageManager.getVolumeState("/mnt/udisk1").equals("mounted")))
        break;
      return;
      bool1 = true;
      bool2 = false;
      bool3 = false;
      continue;
      bool3 = true;
      bool1 = false;
      bool2 = false;
      continue;
      bool2 = true;
      bool1 = false;
      bool3 = false;
    }
  }

  private void changeTab(int paramInt)
  {
    changeTabBG(paramInt);
    setLayoutVisible(paramInt);
  }

  private void changeTabBG(int paramInt)
  {
    if (paramInt == 2131361815)
    {
      this.changeMenu.setBackgroundResource(2131034114);
      this.songsMenu.setBackgroundResource(2130837512);
      this.albumsMenu.setBackgroundResource(2130837512);
      this.artistsMenu.setBackgroundResource(2130837512);
      this.playMusic.setVisibility(8);
    }
    do
    {
      return;
      if (paramInt == 2131361816)
      {
        this.songsMenu.setBackgroundResource(2131034114);
        this.changeMenu.setBackgroundResource(2130837512);
        this.albumsMenu.setBackgroundResource(2130837512);
        this.artistsMenu.setBackgroundResource(2130837512);
        if (this.mSongAdapter == null)
        {
          this.playMusic.setVisibility(8);
          return;
        }
        this.playMusic.setVisibility(0);
        return;
      }
      if (paramInt != 2131361817)
        continue;
      this.albumsMenu.setBackgroundResource(2131034114);
      this.songsMenu.setBackgroundResource(2130837512);
      this.changeMenu.setBackgroundResource(2130837512);
      this.artistsMenu.setBackgroundResource(2130837512);
      this.playMusic.setVisibility(8);
      return;
    }
    while (paramInt != 2131361818);
    this.artistsMenu.setBackgroundResource(2131034114);
    this.songsMenu.setBackgroundResource(2130837512);
    this.albumsMenu.setBackgroundResource(2130837512);
    this.changeMenu.setBackgroundResource(2130837512);
    this.playMusic.setVisibility(8);
  }

  private void checkUsbVolumeAndEndble()
  {
    if (isUdiskExist())
    {
      this.usbImageView.setEnabled(true);
      return;
    }
    this.usbImageView.setEnabled(false);
  }

  private String getAlbumName(int paramInt)
  {
    return ((Album)this.mActivity.mDataManager.GetAlbumMap().get(Integer.valueOf(paramInt))).getAlbum();
  }

  private String getArttistName(int paramInt)
  {
    return ((Artist)this.mActivity.mDataManager.GetArtistMap().get(Integer.valueOf(paramInt))).getArtist();
  }

  private int getCurVolume()
  {
    return this.curVolmue;
  }

  private int getVolume(String paramString)
  {
    if (paramString.startsWith("/mnt/sdcard/sdcard"))
      return 0;
    if (paramString.startsWith("/mnt/udisk/"))
      return 1;
    if (paramString.startsWith("/mnt/udisk1/"))
      return 3;
    if (paramString.startsWith("/mnt/harddisk/"))
      return 2;
    return -1;
  }

  private void handlePlayHistory()
  {
    if (this.interruptJump)
      return;
    MusicPlayerControler.setIsPlayint(true);
    this.mActivity.isPlayHistoryAlready = true;
    updatePlayingListByListType("Audio");
    this.mActivity.updaPlayerPlayList();
    int i = this.mActivity.getIDfromPlayerPlaying(this.mActivity.lastPlayPath);
    MusicOperaUtil.SetPlay(this.mActivity, i);
    JumpToHistoryPos();
    this.mActivity.setLoadingState(false);
    MusicPlayerControler.setIsPlayHistory(true);
    Log.i("MusicMainPage", "PlayHistory: " + this.mActivity.lastPlayPath);
  }

  private void hideSearchDialog()
  {
    ScanDialog localScanDialog = getScanDialog();
    if (localScanDialog.isShowing())
      localScanDialog.hide();
  }

  private void init()
  {
    if (this.mStorageManager == null)
      this.mStorageManager = ((StorageManager)this.mActivity.getSystemService("storage"));
    initBrocast();
    initWidgets();
    setListener();
  }

  private void initAdapter(int paramInt)
  {
    if (!initAudiosAdaptor(paramInt))
      this.mSongAdapter = null;
    if (!initAlbumAdaptor(paramInt))
      this.mAlbumsAdapter = null;
    if (!initArtistAdaptor(paramInt))
      this.mArtistsAdapter = null;
  }

  private boolean initAlbumAdaptor(int paramInt)
  {
    Map localMap = this.mActivity.mDataManager.GetAlbumMap();
    if (!localMap.isEmpty())
    {
      this.mAlbumsAdapter = new AlbumsAdapter(this.mActivity, localMap, 2130903040);
      this.albumGridView.setAdapter(this.mAlbumsAdapter);
      return true;
    }
    return false;
  }

  private boolean initArtistAdaptor(int paramInt)
  {
    Map localMap = this.mActivity.mDataManager.GetArtistMap();
    if (!localMap.isEmpty())
    {
      this.mArtistsAdapter = new ArtistsAdapter(this.mActivity, localMap, 2130903042);
      this.artistGridView.setAdapter(this.mArtistsAdapter);
      return true;
    }
    return false;
  }

  private boolean initAudiosAdaptor(int paramInt)
  {
    Map localMap = this.mActivity.mDataManager.GetAudioMap();
    if ((localMap != null) && (!localMap.isEmpty()))
    {
      this.mSongAdapter = new SongAdapter(this.mActivity, localMap, 2130903051);
      this.listView.setAdapter(this.mSongAdapter);
      return true;
    }
    return false;
  }

  private void initBrocast()
  {
    this.mMountReceiver = new MountBroadcastReceiver();
    IntentFilter localIntentFilter1 = new IntentFilter();
    localIntentFilter1.addAction("android.intent.action.MEDIA_MOUNTED");
    localIntentFilter1.addAction("android.intent.action.MEDIA_REMOVED");
    localIntentFilter1.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
    localIntentFilter1.addDataScheme("file");
    this.mActivity.registerReceiver(this.mMountReceiver, localIntentFilter1);
    this.mBroadcastReceiver = new MyBroadcastReceiver(null);
    IntentFilter localIntentFilter2 = new IntentFilter();
    localIntentFilter2.addAction("com.winca.music.UPDATE");
    localIntentFilter2.addAction("com.winca.music.REMOTE_SERVER_CONNECT_ACTION");
    localIntentFilter2.addAction("com.winca.music.ACTION_SYSTEM_EXIT");
    localIntentFilter2.addAction("com.winca.service.scannerMedia.SCAN_FINISHED");
    localIntentFilter2.addAction("com.winca.service.scannerMedia.SCAN_TASK_FINISHED");
    localIntentFilter2.addAction("com.winca.kkcmh.UPDATA_ADAPTER");
    localIntentFilter2.addAction("com.winca.kkcmh.CURENT_PLAY_ID");
    localIntentFilter2.addAction("com.winca.service.scannerMedia.SCAN_START");
    localIntentFilter2.addAction("com.winca.music.SCANMEDIA_MUSIC_SCAN_ACTION");
    localIntentFilter2.addAction("com.winca.service.scannerMedia.SCAN_TYPE_STATE");
    localIntentFilter2.addAction("android.intent.action.ACTION_SHUTDOWN");
    localIntentFilter2.addAction("com.winca.kkcmh.VOLUME_DATA_CHANGED");
    this.mActivity.registerReceiver(this.mBroadcastReceiver, localIntentFilter2);
  }

  private void initWidgets()
  {
    this.changeLayout = ((LinearLayout)findViewById(2131361819));
    this.songsLayout = ((LinearLayout)findViewById(2131361823));
    this.albumsLayout = ((LinearLayout)findViewById(2131361825));
    this.artistsLayout = ((LinearLayout)findViewById(2131361827));
    this.noContentLayout = ((LinearLayout)findViewById(2131361829));
    this.changeMenu = ((TextView)findViewById(2131361815));
    this.songsMenu = ((TextView)findViewById(2131361816));
    this.albumsMenu = ((TextView)findViewById(2131361817));
    this.artistsMenu = ((TextView)findViewById(2131361818));
    this.sdImageView = ((ImageView)findViewById(2131361820));
    this.usbImageView = ((ImageView)findViewById(2131361821));
    this.hdImageView = ((ImageView)findViewById(2131361822));
    this.listView = ((ListView)findViewById(2131361824));
    this.albumGridView = ((GridView)findViewById(2131361826));
    this.artistGridView = ((GridView)findViewById(2131361828));
    this.playMusic = ((ImageButton)findViewById(2131361831));
  }

  private boolean isSdcardExist()
  {
    try
    {
      boolean bool = this.mStorageManager.getVolumeState("/mnt/sdcard/sdcard").equals("mounted");
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      Log.e("MusicMainPage", "Error in Get UDisk State!");
    }
    return false;
  }

  private boolean isUdiskExist()
  {
    try
    {
      if (!this.mStorageManager.getVolumeState("/mnt/udisk").equals("mounted"))
      {
        boolean bool = this.mStorageManager.getVolumeState("/mnt/udisk1").equals("mounted");
        if (bool);
      }
      for (int i = 0; ; i = 1)
        return i;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      Log.e("MusicMainPage", "Error in Get UDisk State!");
    }
    return false;
  }

  private void onTouchDown(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131361815:
      changeTabBG(paramView.getId());
      return;
    case 2131361816:
      changeTabBG(paramView.getId());
      return;
    case 2131361817:
      changeTabBG(paramView.getId());
      return;
    case 2131361818:
    }
    changeTabBG(paramView.getId());
  }

  private void onTouchMove()
  {
  }

  private void onTouchUp(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131361815:
      changeTab(2131361815);
      return;
    case 2131361816:
      changeTab(2131361816);
      return;
    case 2131361817:
      changeTab(2131361817);
      return;
    case 2131361818:
    }
    changeTab(2131361818);
  }

  private void returnHome()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    this.mActivity.startActivity(localIntent);
  }

  private void saveMusicLib()
  {
    new MusicSharePreference(this.mActivity).storyMusicLib(getCurVolume());
  }

  private void savePlayState()
  {
    Log.i("MusicMainPage", "Get Sage State:" + MusicPlayerControler.isPlaying());
    MusicSharePreference localMusicSharePreference = new MusicSharePreference(this.mActivity);
    if (MusicPlayerControler.isPlaying())
    {
      localMusicSharePreference.StoryLastPlayState(0);
      return;
    }
    localMusicSharePreference.StoryLastPlayState(1);
  }

  private void setCurVolume(int paramInt)
  {
    this.curVolmue = paramInt;
  }

  private void setDefMusicLib()
  {
    changeMusicLib(2);
    changeTab(2131361815);
    MusicOperaUtil.setReset(this.mActivity);
  }

  private void setLayoutVisible(int paramInt)
  {
    if (2131361815 == paramInt)
    {
      this.changeLayout.setVisibility(0);
      this.songsLayout.setVisibility(8);
      this.albumsLayout.setVisibility(8);
      this.artistsLayout.setVisibility(8);
      this.noContentLayout.setVisibility(8);
      this.playMusic.setVisibility(8);
    }
    do
    {
      do
        while (true)
        {
          return;
          if (2131361816 == paramInt)
          {
            this.changeLayout.setVisibility(8);
            this.albumsLayout.setVisibility(8);
            this.artistsLayout.setVisibility(8);
            if (this.mSongAdapter != null)
            {
              this.songsLayout.setVisibility(0);
              this.playMusic.setVisibility(0);
              this.noContentLayout.setVisibility(8);
              return;
            }
            if (this.mSongAdapter != null)
              continue;
            this.songsLayout.setVisibility(8);
            this.playMusic.setVisibility(8);
            this.noContentLayout.setVisibility(0);
            return;
          }
          if (2131361817 != paramInt)
            break;
          this.songsLayout.setVisibility(8);
          this.changeLayout.setVisibility(8);
          this.artistsLayout.setVisibility(8);
          if (this.mAlbumsAdapter != null)
          {
            this.albumsLayout.setVisibility(0);
            this.playMusic.setVisibility(8);
            this.noContentLayout.setVisibility(8);
            this.mAlbumsAdapter.notifyDataSetChanged();
            return;
          }
          if (this.mAlbumsAdapter != null)
            continue;
          this.albumsLayout.setVisibility(8);
          this.playMusic.setVisibility(8);
          this.noContentLayout.setVisibility(0);
          return;
        }
      while (2131361818 != paramInt);
      this.songsLayout.setVisibility(8);
      this.albumsLayout.setVisibility(8);
      this.changeLayout.setVisibility(8);
      if (this.mArtistsAdapter == null)
        continue;
      this.artistsLayout.setVisibility(0);
      this.playMusic.setVisibility(8);
      this.noContentLayout.setVisibility(8);
      this.mArtistsAdapter.notifyDataSetChanged();
      return;
    }
    while (this.mArtistsAdapter != null);
    this.artistsLayout.setVisibility(8);
    this.playMusic.setVisibility(8);
    this.noContentLayout.setVisibility(0);
  }

  private void setListener()
  {
    this.changeMenu.setOnTouchListener(this);
    this.songsMenu.setOnTouchListener(this);
    this.albumsMenu.setOnTouchListener(this);
    this.artistsMenu.setOnTouchListener(this);
    this.sdImageView.setOnClickListener(this);
    this.usbImageView.setOnClickListener(this);
    this.hdImageView.setOnClickListener(this);
    this.sdImageView.setEnabled(false);
    this.usbImageView.setEnabled(false);
    this.hdImageView.setEnabled(true);
    this.playMusic.setOnClickListener(this);
    this.listView.setOnItemClickListener(this);
    this.albumGridView.setOnItemClickListener(this);
    this.artistGridView.setOnItemClickListener(this);
  }

  private void setSelection()
  {
    if (MusicPlayerDataManager.curPlayPos != -1)
    {
      int i = MusicPlayerDataManager.getSelectionPos();
      this.listView.setSelection(i);
    }
  }

  private void showDialogByState()
  {
    if (this.mActivity.mDataManager.isScanning())
    {
      showSearchDialog();
      return;
    }
    hideSearchDialog();
  }

  private void showSearchDialog()
  {
    getScanDialog().show();
  }

  private void unRegesiterBrocast()
  {
    this.mActivity.unregisterReceiver(this.mMountReceiver);
    this.mActivity.unregisterReceiver(this.mBroadcastReceiver);
  }

  private void updataAlbumSongs(int paramInt)
  {
    String str = getAlbumName(paramInt);
    this.mActivity.mDataManager.updataAlbumSongsMap(str);
  }

  private void updataArtistSongs(int paramInt)
  {
    String str = getArttistName(paramInt);
    this.mActivity.mDataManager.updataArtistSongList(str);
  }

  private void updatePlayingListByListType(String paramString)
  {
    MusicPlayerDataManager localMusicPlayerDataManager = this.mActivity.mDataManager;
    if (localMusicPlayerDataManager != null)
    {
      localMusicPlayerDataManager.updataPlayingMapByListType(paramString);
      MusicOperaUtil.BrocastUpdatePlayingSongAdaptor(this.mActivity);
    }
  }

  public void OnDestrory()
  {
    Log.i("MusicMainPage", "MusicMainPage   OnDestrory");
    unRegesiterBrocast();
    MusicPlayerControler.setIsPlayHistory(false);
    super.OnDestrory();
  }

  public void create()
  {
    createLayout(2130903047);
    init();
    setIsFirstShow(false);
    super.create();
  }

  public ScanDialog getScanDialog()
  {
    if (this.mScanDialog == null)
      this.mScanDialog = new ScanDialog(this.mActivity, 16973935);
    return this.mScanDialog;
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131361831:
      if (MusicPlayerControler.getResetState())
      {
        AritstAlbumListPage.SetListStyle(0);
        updatePlayingListByListType("Audio");
        this.mActivity.updaPlayerPlayList();
        MusicOperaUtil.SetPlay(this.mActivity, 0);
      }
      this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_PLAYING_MUSIC);
      return;
    case 2131361820:
    case 2131361821:
    case 2131361822:
    }
    if (paramView.getId() == 2131361820)
      changeMusicLib(0);
    while (true)
    {
      changeTab(2131361816);
      this.interruptJump = true;
      return;
      if (paramView.getId() == 2131361821)
      {
        if ((this.mActivity.mDataManager != null) && (this.mActivity.mDataManager.isScanning()))
          Toast.makeText(this.mActivity, this.mActivity.getString(2131165191), 0).show();
        while (true)
        {
          this.mLastUsbVolmue = getCurVolume();
          break;
          if ((getCurVolume() != 1) && (getCurVolume() != 3) && (this.mStorageManager.getVolumeState("/mnt/udisk").equals("mounted")) && (this.mStorageManager.getVolumeState("/mnt/udisk1").equals("mounted")))
          {
            changeMusicLib(this.mLastUsbVolmue);
            continue;
          }
          if ((this.mStorageManager.getVolumeState("/mnt/udisk").equals("mounted")) && (this.mStorageManager.getVolumeState("/mnt/udisk1").equals("mounted")))
          {
            if (getCurVolume() == 1)
            {
              changeMusicLib(3);
              continue;
            }
            changeMusicLib(1);
            continue;
          }
          if (this.mStorageManager.getVolumeState("/mnt/udisk").equals("mounted"))
          {
            changeMusicLib(1);
            continue;
          }
          if (this.mStorageManager.getVolumeState("/mnt/udisk1").equals("mounted"))
          {
            changeMusicLib(3);
            continue;
          }
          changeMusicLib(1);
        }
      }
      if (paramView.getId() != 2131361822)
        continue;
      changeMusicLib(2);
    }
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramAdapterView == this.listView)
    {
      AritstAlbumListPage.SetListStyle(0);
      updatePlayingListByListType("Audio");
      this.mActivity.updaPlayerPlayList();
      MusicOperaUtil.SetPlay(this.mActivity, paramInt);
      this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_PLAYING_MUSIC);
    }
    do
    {
      return;
      if (paramAdapterView != this.albumGridView)
        continue;
      updataAlbumSongs(paramInt);
      AritstAlbumListPage.SetListStyle(1);
      updatePlayingListByListType("Album");
      this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_ALBUMN_ARTIST_LIST);
      return;
    }
    while (paramAdapterView != this.artistGridView);
    updataArtistSongs(paramInt);
    AritstAlbumListPage.SetListStyle(2);
    updatePlayingListByListType("Artist");
    this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_ALBUMN_ARTIST_LIST);
  }

  public void onKeyBack()
  {
    returnHome();
  }

  public void onResume()
  {
    if (this.mActivity.mDataManager.isScanning())
    {
      this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_MAIN_PAGE);
      changeTab(2131361815);
      showDialogByState();
    }
  }

  public void onShow()
  {
    if (getCurVolume() == -1)
      setDefMusicLib();
    setSelection();
    super.onShow();
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
      onTouchDown(paramView);
    do
    {
      return true;
      if (paramMotionEvent.getAction() != 1)
        continue;
      onTouchUp(paramView);
      return true;
    }
    while (paramMotionEvent.getAction() != 2);
    onTouchMove();
    return true;
  }

  class MountBroadcastReceiver extends BroadcastReceiver
  {
    MountBroadcastReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      String str1 = paramIntent.getAction();
      Log.i("MusicMainPage", "Mount: " + str1);
      String str3;
      if (str1.equals("android.intent.action.MEDIA_MOUNTED"))
      {
        str3 = paramIntent.getData().getPath();
        Log.i("MusicMainPage", "Mount: mountPath = " + str3);
        if (str3 != null)
        {
          if (str3.compareTo("/mnt/sdcard/sdcard") != 0)
            break label113;
          MusicMainPage.this.sdImageView.setEnabled(true);
          MusicMainPage.this.interruptJump = false;
          MusicMainPage.this.mActivity.loadDialgUpdate();
        }
      }
      label113: 
      do
      {
        return;
        if (str3.compareTo("/mnt/udisk") == 0)
        {
          MusicMainPage.this.checkUsbVolumeAndEndble();
          MusicMainPage.this.interruptJump = false;
          MusicMainPage.this.mActivity.setUsbVolume(1);
          break;
        }
        if (str3.compareTo("/mnt/udisk1") != 0)
          break;
        MusicMainPage.this.checkUsbVolumeAndEndble();
        MusicMainPage.this.interruptJump = false;
        MusicMainPage.this.mActivity.setUsbVolume(3);
        break;
      }
      while ((!str1.equals("android.intent.action.MEDIA_BAD_REMOVAL")) && (!str1.equals("android.intent.action.MEDIA_REMOVED")));
      int i = -1;
      String str2 = paramIntent.getData().getPath();
      MusicMainPage.this.mActivity.mbadRemove = true;
      Log.i("MusicMainPage", "UnMount: " + str2);
      if (str2 != null)
      {
        if (str2.equals("/mnt/sdcard/sdcard"))
        {
          MusicMainPage.this.sdImageView.setEnabled(false);
          i = 0;
          MusicMainPage.this.interruptJump = true;
        }
        if (str2.equals("/mnt/udisk"))
        {
          MusicMainPage.this.checkUsbVolumeAndEndble();
          i = 1;
          MusicMainPage.this.interruptJump = true;
        }
        if (str2.equals("/mnt/udisk1"))
        {
          MusicMainPage.this.checkUsbVolumeAndEndble();
          i = 3;
          MusicMainPage.this.interruptJump = true;
        }
        if ((i == MusicMainPage.this.getCurVolume()) && (i != -1))
        {
          MusicMainPage.this.setDefMusicLib();
          MusicMainPage.this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_MAIN_PAGE);
        }
      }
      MusicPlayerControler.setIsPlayHistory(false);
    }
  }

  private class MyBroadcastReceiver extends BroadcastReceiver
  {
    private MyBroadcastReceiver()
    {
    }

    private void getActionShutDown()
    {
      Log.i("MusicMainPage", "Get Action Shutdonw");
      MusicMainPage.this.savePlayState();
      MusicMainPage.this.saveMusicLib();
    }

    private void getConnectService()
    {
      Log.i("MusicMainPage", "Get ConnectService!");
      if (MusicMainPage.this.isSdcardExist())
        MusicMainPage.this.sdImageView.setEnabled(true);
      MusicMainPage.this.checkUsbVolumeAndEndble();
      MusicMainPage.this.showDialogByState();
      MusicMainPage.this.mActivity.checkAndShowLoadingDialog();
      if ((!MusicPlayerControler.isPlayHistory()) && (!MusicPlayerControler.isPlaying()))
        MusicMainPage.this.PlayHistory();
    }

    private void getMenuSearch()
    {
      MusicMainPage.this.interruptJump = false;
      MusicMainPage.this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_MAIN_PAGE);
      MusicMainPage.this.changeTab(2131361815);
    }

    private void getPlayingId(int paramInt)
    {
      if (paramInt != -1)
      {
        AudioEntity localAudioEntity = (AudioEntity)MusicMainPage.this.mActivity.mDataManager.getPlayerMap().get(Integer.valueOf(paramInt));
        if (localAudioEntity != null)
        {
          MusicPlayerDataManager.curPlayAudio = localAudioEntity;
          MusicPlayerDataManager.curPlayPos = paramInt;
          Log.i("MusicMainPage", "id:" + paramInt + "New Song Info" + localAudioEntity.getData() + " Title:" + localAudioEntity.getTitle());
          MusicOperaUtil.BrocastUpdateAdaptor(MusicMainPage.this.mActivity);
        }
      }
    }

    private void getScanAudoType(boolean paramBoolean)
    {
      if (paramBoolean)
      {
        MusicMainPage.this.showSearchDialog();
        return;
      }
      MusicMainPage.this.hideSearchDialog();
    }

    private void getScanFinished()
    {
      Log.i("MusicMainPage", "Get Scann Finished!");
      MusicMainPage.this.showDialogByState();
      if ((!MusicPlayerControler.isPlaying()) && (!MusicMainPage.this.mActivity.isActivityPause()))
        MusicMainPage.this.PlayHistory();
    }

    private void getScanStart(int paramInt)
    {
      if (paramInt != -1)
      {
        MusicMainPage.this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_MAIN_PAGE);
        MusicMainPage.this.changeTab(2131361815);
        ScanDialog localScanDialog = MusicMainPage.this.getScanDialog();
        localScanDialog.showSearchinfo(paramInt);
        localScanDialog.show();
      }
    }

    private void getUpdataAdapter()
    {
      if (MusicMainPage.this.mSongAdapter != null)
      {
        MusicMainPage.this.mSongAdapter.notifyDataSetChanged();
        MusicMainPage.this.setSelection();
      }
    }

    private void getVolumeDataChanged(int paramInt)
    {
      Log.w("MusicMainPage", "Get Volume " + paramInt + " Data Changed");
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      String str = paramIntent.getAction();
      Log.i("MusicMainPage", "action = " + str);
      if (str.compareTo("com.winca.kkcmh.UPDATA_ADAPTER") == 0)
        getUpdataAdapter();
      do
        while (true)
        {
          return;
          if (str.equals("com.winca.kkcmh.CURENT_PLAY_ID"))
          {
            getPlayingId(paramIntent.getIntExtra("cur_ID", -1));
            return;
          }
          if (str.equals("com.winca.music.REMOTE_SERVER_CONNECT_ACTION"))
          {
            getConnectService();
            return;
          }
          if (str.compareTo("com.winca.music.ACTION_SYSTEM_EXIT") == 0)
          {
            System.exit(0);
            return;
          }
          if (str.compareTo("com.winca.service.scannerMedia.SCAN_START") == 0)
          {
            getScanStart(paramIntent.getIntExtra("com.winca.scanner.volume_key", -1));
            return;
          }
          if (str.compareTo("com.winca.service.scannerMedia.SCAN_TASK_FINISHED") == 0)
          {
            getScanFinished();
            return;
          }
          if (str.equals("com.winca.kkcmh.VOLUME_DATA_CHANGED"))
          {
            int i = paramIntent.getIntExtra("com.winca.scanner.volume_key", -1);
            if (i == -1)
              continue;
            getVolumeDataChanged(i);
            return;
          }
          if (str.equals("com.winca.music.SCANMEDIA_MUSIC_SCAN_ACTION"))
          {
            getMenuSearch();
            return;
          }
          if (!str.equals("com.winca.service.scannerMedia.SCAN_TYPE_STATE"))
            break;
          if (paramIntent.getIntExtra("SCAN_TYPE", -1) != 1)
            continue;
          boolean bool = paramIntent.getBooleanExtra("SCAN_TYPE_STATE", false);
          Log.i("MusicMainPage", "BUNDLE_KEY_SCAN_TYPE: type = SEARCH_AUDIO , state = " + bool);
          getScanAudoType(bool);
          return;
        }
      while (!str.equals("android.intent.action.ACTION_SHUTDOWN"));
      getActionShutDown();
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.Pages.MusicMainPage
 * JD-Core Version:    0.6.0
 */