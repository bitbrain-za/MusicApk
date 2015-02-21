package com.winca.music;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.storage.StorageManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.winca.Dialog.DialogListener;
import com.winca.Dialog.LoadingDialog;
import com.winca.music.Pages.PageManager;
import com.winca.music.player.MusicOperaUtil;
import com.winca.music.player.MusicPlayerControler;
import com.winca.music.player.MusicPlayerDataManager;
import com.winca.music.player.MusicPlayerDef;
import com.winca.music.player.MusicPlayerDef.PageEnum;
import com.winca.music.preference.MusicSharePreference;

public class MusicActivity extends Activity
  implements MusicPlayerDef
{
  private static final String TAG = "MusicActivity";
  public final int PLAY_STATE_PAUSE = 1;
  public final int PLAY_STATE_PLAY = 0;
  public final int PLAY_STATE_STOP = 2;
  private DialogListener dlListener = new DialogListener()
  {
    public void onHideDialog()
    {
      if (!MusicPlayerControler.isPlaying())
        MusicActivity.this.JumpPage(MusicPlayerDef.PageEnum.PAGE_MAIN_PAGE);
    }

    public void onShowDialog()
    {
      MusicActivity.this.JumpPage(MusicPlayerDef.PageEnum.PAGE_PLAYING_MUSIC);
    }
  };
  private boolean isFirstRun = false;
  public boolean isPlayHistoryAlready = false;
  public boolean lastFileExist = false;
  public String lastPlayPath = null;
  public int lastPlayPosition = -1;
  public int lastPlayState = 2;
  private LoadingDialog loadDialog = null;
  public MusicPlayerDataManager mDataManager = null;
  private MusicSharePreference mMusicSharePreference = null;
  private StorageManager mStorageManager = null;
  private int mUsbVolume = 1;
  public PageManager mViewManager = null;
  public boolean mbPause = false;
  public boolean mbadRemove = false;

  private void StartMusicService()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.music.MUSICSERVICE_ACTION");
    startService(localIntent);
  }

  private void StopMusicService()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.music.MUSICSERVICE_ACTION");
    stopService(localIntent);
  }

  private void initial()
  {
    StartMusicService();
    setContentView(2130903047);
    this.mDataManager = new MusicPlayerDataManager(this);
    this.mViewManager = new PageManager(this);
    JumpPage(MusicPlayerDef.PageEnum.PAGE_MAIN_PAGE);
    int i = getMusicSharePreference().ReadLastUSBType();
    if ((i == 3) && (getmStorageManager().getVolumeState("/mnt/udisk1").equals("mounted")))
      this.mUsbVolume = i;
  }

  private void requireAudioSoundSource(boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.winca.scanner.setCurSoundSource");
    localIntent.putExtra("com.winca.scanner.SoundSource_key", 0);
    localIntent.putExtra("source_type_is_in_current_page", paramBoolean);
    sendBroadcast(localIntent);
  }

  private void scanAll()
  {
    sendBroadcast(new Intent("com.winca.music.SCANMEDIA_MUSIC_SCAN_ACTION"));
    MusicOperaUtil.setReset(this);
  }

  private void setWincaMenuState(boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.winca.audiochannelmanager.switchmenu");
    if (paramBoolean)
      localIntent.putExtra("com.winca.audiochannelmanager.switchmenu.extra", 13);
    while (true)
    {
      sendBroadcast(localIntent);
      return;
      localIntent.putExtra("com.winca.audiochannelmanager.switchmenu.extra", 15);
    }
  }

  public void JumpPage(MusicPlayerDef.PageEnum paramPageEnum)
  {
    this.mViewManager.JumpPage(paramPageEnum);
  }

  public void checkAndShowLoadingDialog()
  {
    if (isFirstRun())
    {
      readPlayerData();
      if (this.lastPlayPath != null)
        setLoadingState(true);
    }
  }

  public MusicPlayerDef.PageEnum getCurPage()
  {
    return this.mViewManager.GetCurPageId();
  }

  public int getIDfromPlayerPlaying(String paramString)
  {
    return this.mDataManager.getIdByPath(paramString);
  }

  public int getLastPlayState()
  {
    return this.lastPlayState;
  }

  public MusicSharePreference getMusicSharePreference()
  {
    if (this.mMusicSharePreference == null)
      this.mMusicSharePreference = new MusicSharePreference(this);
    return this.mMusicSharePreference;
  }

  public int getUsbVolume()
  {
    return this.mUsbVolume;
  }

  public StorageManager getmStorageManager()
  {
    if (this.mStorageManager == null)
      this.mStorageManager = ((StorageManager)getSystemService("storage"));
    return this.mStorageManager;
  }

  public boolean isActivityPause()
  {
    return this.mbPause;
  }

  public boolean isFirstRun()
  {
    return this.isFirstRun;
  }

  public void loadDialgUpdate()
  {
    if ((this.loadDialog != null) && (this.loadDialog.isShow()))
      this.loadDialog.update();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Log.i("MusicActivity", "onCreate");
    this.isFirstRun = getIntent().getBooleanExtra("first_run", false);
    requestWindowFeature(1);
    getmStorageManager();
    initial();
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131296256, paramMenu);
    return true;
  }

  protected void onDestroy()
  {
    Log.i("MusicActivity", "onDesttory");
    super.onDestroy();
    this.mDataManager.onDestory();
    try
    {
      this.mViewManager.onDestrory();
      StopMusicService();
      return;
    }
    catch (Exception localException)
    {
      Log.e("MusicActivity", "Error in  MusicAcitivity  onDestrory()");
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      this.mViewManager.onKeyBack();
      return false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131361866:
    }
    while (true)
    {
      return super.onMenuItemSelected(paramInt, paramMenuItem);
      scanAll();
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
  }

  protected void onPause()
  {
    Log.i("MusicActivity", "onPause");
    this.mbPause = true;
    requireAudioSoundSource(false);
    super.onPause();
  }

  protected void onRestart()
  {
    Log.i("MusicActivity", "onRestart");
    this.mbPause = false;
    MusicOperaUtil.BrocastInquireSoundSounce(this);
    if (MusicPlayerControler.isPlaying())
      this.mViewManager.JumpPage(MusicPlayerDef.PageEnum.PAGE_PLAYING_MUSIC);
    while (true)
    {
      super.onRestart();
      return;
      if (!this.mbadRemove)
        continue;
      this.mViewManager.JumpPage(MusicPlayerDef.PageEnum.PAGE_MAIN_PAGE);
      this.mbadRemove = false;
    }
  }

  protected void onResume()
  {
    Log.i("MusicActivity", "onResume");
    requireAudioSoundSource(true);
    setWincaMenuState(true);
    this.mViewManager.onResume();
    super.onResume();
  }

  public void readPlayerData()
  {
    MusicSharePreference localMusicSharePreference = getMusicSharePreference();
    this.lastPlayPath = localMusicSharePreference.ReadLastPlayPath();
    this.lastPlayPosition = localMusicSharePreference.ReadLastPosition();
    this.lastPlayState = localMusicSharePreference.ReadLastPlayState();
  }

  public void setLoadingState(boolean paramBoolean)
  {
    if (this.loadDialog == null)
      this.loadDialog = new LoadingDialog(this);
    this.loadDialog.setDialogLisener(this.dlListener);
    this.loadDialog.setLoadingState(paramBoolean);
  }

  public void setUsbVolume(int paramInt)
  {
    this.mUsbVolume = paramInt;
    getMusicSharePreference().StoryLastUSBType(this.mUsbVolume);
  }

  public void updaPlayerPlayList()
  {
    this.mDataManager.updataPlayerPlayList();
    MusicPlayerControler.setResetState(false);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.MusicActivity
 * JD-Core Version:    0.6.0
 */