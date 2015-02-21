package com.winca.music.player;

import android.content.Context;
import android.content.Intent;

public final class MusicOperaUtil
  implements MusicPlayerDef
{
  public static void BrocastCurPlayId(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.kkcmh.CURENT_PLAY_ID");
    localIntent.putExtra("cur_ID", paramInt);
    paramContext.sendBroadcast(localIntent);
  }

  public static void BrocastInquireSoundSounce(Context paramContext)
  {
    Intent localIntent = new Intent("com.winca.audiochannelmanager.switchsource");
    localIntent.putExtra("source_type", 19);
    localIntent.putExtra("source_type_is_in_current_page", false);
    paramContext.sendBroadcast(localIntent);
  }

  public static void BrocastPlayMode(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.MusicPlay.BROCAST_PLAY_MODE");
    localIntent.putExtra("com.winca.MusicPlay.MODE_KEY", paramInt);
    paramContext.sendBroadcast(localIntent);
  }

  public static void BrocastPlayState(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.MusicPlay.BROCAST_STATE");
    localIntent.putExtra("com.winca.MusicPlay.STATE_KEY", paramInt);
    paramContext.sendBroadcast(localIntent);
  }

  public static void BrocastUpdateAdaptor(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.kkcmh.UPDATA_ADAPTER");
    paramContext.sendBroadcast(localIntent);
  }

  public static void BrocastUpdatePlayingSongAdaptor(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.kkcmh.UPDATA_PLAYING_SONG_ADAPTER");
    paramContext.sendBroadcast(localIntent);
  }

  public static void ChangePlayMode(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.MusicPlay.BROCAST_CHANGE_PLAY_MODE");
    paramContext.sendBroadcast(localIntent);
  }

  public static void SetNext(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.MusicPlay.OPERATION_BROCAST");
    localIntent.putExtra("com.winca.MusicPlay.COMMAND_KEY", "winca.music.Next");
    paramContext.sendBroadcast(localIntent);
  }

  public static void SetPlay(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.MusicPlay.OPERATION_BROCAST");
    localIntent.putExtra("com.winca.MusicPlay.COMMAND_KEY", "winca.music.paly");
    paramContext.sendBroadcast(localIntent);
  }

  public static void SetPlay(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.MusicPlay.OPERATION_BROCAST");
    localIntent.putExtra("com.winca.MusicPlay.COMMAND_KEY", "winca.music.paly");
    localIntent.putExtra("Id", paramInt);
    paramContext.sendBroadcast(localIntent);
  }

  public static void SetPre(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.MusicPlay.OPERATION_BROCAST");
    localIntent.putExtra("com.winca.MusicPlay.COMMAND_KEY", "winca.music.Pre");
    paramContext.sendBroadcast(localIntent);
  }

  public static void SetStop(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.MusicPlay.OPERATION_BROCAST");
    localIntent.putExtra("com.winca.MusicPlay.COMMAND_KEY", "winca.music.stop");
    paramContext.sendBroadcast(localIntent);
  }

  public static void setPlayMode(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.MusicPlay.BROCAST_SET_PLAY_MODE");
    localIntent.putExtra("com.winca.MusicPlay.BROCAST_SET_PLAY_MODE_KEY", paramInt);
    paramContext.sendBroadcast(localIntent);
  }

  public static void setPlayPause(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.MusicPlay.OPERATION_BROCAST");
    localIntent.putExtra("com.winca.MusicPlay.COMMAND_KEY", "winca.music.pause");
    paramContext.sendBroadcast(localIntent);
  }

  public static void setReset(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.MusicPlay.OPERATION_BROCAST");
    localIntent.putExtra("com.winca.MusicPlay.COMMAND_KEY", "winca.music.reset");
    paramContext.sendBroadcast(localIntent);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.player.MusicOperaUtil
 * JD-Core Version:    0.6.0
 */