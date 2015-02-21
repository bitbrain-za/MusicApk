package com.winca.music.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class SharedPreferenceUtil
{
  private static final String SHARE_PRE_NAME = "com.winca.Music";
  protected Context mContext = null;
  private SharedPreferences.Editor mEditor = null;
  private SharedPreferences mPreferences = null;

  public SharedPreferenceUtil(Context paramContext)
  {
    this.mContext = paramContext;
    this.mPreferences = this.mContext.getSharedPreferences("com.winca.Music", 0);
    this.mEditor = this.mPreferences.edit();
  }

  protected int GetInt(String paramString)
  {
    return this.mPreferences.getInt(paramString, -1);
  }

  protected String GetString(String paramString)
  {
    return this.mPreferences.getString(paramString, null);
  }

  protected void PutInt(String paramString, int paramInt)
  {
    this.mEditor.putInt(paramString, paramInt).commit();
  }

  protected void PutString(String paramString1, String paramString2)
  {
    this.mEditor.putString(paramString1, paramString2).commit();
  }

  protected Boolean getBoolean(String paramString)
  {
    return Boolean.valueOf(this.mPreferences.getBoolean(paramString, false));
  }

  protected void putBoolean(String paramString, boolean paramBoolean)
  {
    this.mEditor.putBoolean(paramString, paramBoolean).commit();
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.preference.SharedPreferenceUtil
 * JD-Core Version:    0.6.0
 */