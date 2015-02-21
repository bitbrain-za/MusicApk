package com.winca.music.Pages;

import com.winca.music.MusicActivity;
import com.winca.music.player.MusicPlayerDef;
import com.winca.music.player.MusicPlayerDef.PageEnum;

public class PageFactory
  implements MusicPlayerDef
{
  public static Page createView(MusicActivity paramMusicActivity, MusicPlayerDef.PageEnum paramPageEnum)
  {
    switch ($SWITCH_TABLE$com$winca$music$player$MusicPlayerDef$PageEnum()[paramPageEnum.ordinal()])
    {
    default:
      return null;
    case 3:
      return new PlayMusicPage(paramMusicActivity);
    case 4:
      return new AritstAlbumListPage(paramMusicActivity);
    case 2:
      return new MusicMainPage(paramMusicActivity);
    case 5:
    }
    return new PlayingListPage(paramMusicActivity);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.Pages.PageFactory
 * JD-Core Version:    0.6.0
 */