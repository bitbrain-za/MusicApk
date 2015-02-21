package com.winca.music.mediautil;

import android.content.Context;
import android.media.MediaPlayer;
import android.util.Log;
import com.winca.music.audioutil.Bitstream;
import com.winca.music.audioutil.Header;
import java.io.File;
import java.io.FileInputStream;
import java.util.Formatter;
import java.util.Locale;

public class MediaUtil
{
  private static final Object[] sTimeArgs = new Object[5];
  public final String TAG = "MediaUtil";
  private Context mContext = null;
  private StringBuilder sFormatBuilder = new StringBuilder();
  private Formatter sFormatter = new Formatter(this.sFormatBuilder, Locale.getDefault());

  public MediaUtil(Context paramContext)
  {
    this.mContext = paramContext;
  }

  private int getMusicDuration(String paramString)
  {
    File localFile = new File(paramString);
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(localFile);
      int i = localFileInputStream.available();
      Bitstream localBitstream = new Bitstream(localFileInputStream);
      Header localHeader = localBitstream.readFrame();
      int j = 0;
      if (localHeader != null)
        j = (int)localHeader.total_ms(i);
      localBitstream.close();
      localFileInputStream.close();
      return j;
    }
    catch (Exception localException)
    {
      Log.e("MediaUtil", "Error in getMusicDuration()");
      localException.printStackTrace();
    }
    return 0;
  }

  private long getVideoDuration(String paramString)
  {
    long l = 0L;
    MediaPlayer localMediaPlayer = new MediaPlayer();
    try
    {
      localMediaPlayer.setDataSource(paramString);
      localMediaPlayer.prepare();
      l = localMediaPlayer.getDuration();
      localMediaPlayer.stop();
      localMediaPlayer.release();
      return l;
    }
    catch (Exception localException)
    {
      Log.e("MediaUtil", "Error in getVideDuration");
      localException.printStackTrace();
    }
    return l;
  }

  // ERROR //
  public String codeString(String paramString)
  {
    // Byte code:
    //   0: new 52	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 55	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: invokevirtual 124	java/io/File:exists	()Z
    //   11: ifne +5 -> 16
    //   14: aconst_null
    //   15: areturn
    //   16: new 57	java/io/FileInputStream
    //   19: dup
    //   20: aload_1
    //   21: invokespecial 125	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   24: astore_2
    //   25: new 127	java/io/BufferedInputStream
    //   28: dup
    //   29: aload_2
    //   30: invokespecial 128	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   33: astore_3
    //   34: aload_3
    //   35: invokevirtual 131	java/io/BufferedInputStream:read	()I
    //   38: bipush 8
    //   40: ishl
    //   41: aload_3
    //   42: invokevirtual 131	java/io/BufferedInputStream:read	()I
    //   45: iadd
    //   46: istore 6
    //   48: aload_2
    //   49: invokevirtual 83	java/io/FileInputStream:close	()V
    //   52: aload_3
    //   53: invokevirtual 132	java/io/BufferedInputStream:close	()V
    //   56: iload 6
    //   58: lookupswitch	default:+34->92, 61371:+72->130, 65279:+86->144, 65534:+79->137
    //   93: i2f
    //   94: astore 7
    //   96: aload 7
    //   98: areturn
    //   99: astore 4
    //   101: ldc 24
    //   103: new 28	java/lang/StringBuilder
    //   106: dup
    //   107: ldc 136
    //   109: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   112: aload_1
    //   113: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   119: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   122: pop
    //   123: aload 4
    //   125: invokevirtual 146	java/io/IOException:printStackTrace	()V
    //   128: aconst_null
    //   129: areturn
    //   130: ldc 148
    //   132: astore 7
    //   134: goto -38 -> 96
    //   137: ldc 150
    //   139: astore 7
    //   141: goto -45 -> 96
    //   144: ldc 152
    //   146: astore 7
    //   148: goto -52 -> 96
    //   151: astore 4
    //   153: goto -52 -> 101
    //   156: astore 4
    //   158: goto -57 -> 101
    //
    // Exception table:
    //   from	to	target	type
    //   16	25	99	java/io/IOException
    //   25	34	151	java/io/IOException
    //   34	56	156	java/io/IOException
  }

  public String getVideoDuratonStr(String paramString)
  {
    return String.valueOf(getVideoDuration(paramString));
  }

  public String makeTimeString(Context paramContext, long paramLong)
  {
    if (paramLong < 3600L);
    for (String str = "%2$d:%5$02d"; ; str = "%1$d:%3$02d:%5$02d")
    {
      this.sFormatBuilder.setLength(0);
      Object[] arrayOfObject = sTimeArgs;
      arrayOfObject[0] = Long.valueOf(paramLong / 3600L);
      arrayOfObject[1] = Long.valueOf(paramLong / 60L);
      arrayOfObject[2] = Long.valueOf(paramLong / 60L % 60L);
      arrayOfObject[3] = Long.valueOf(paramLong);
      arrayOfObject[4] = Long.valueOf(paramLong % 60L);
      return this.sFormatter.format(str, arrayOfObject).toString();
    }
  }

  // ERROR //
  public AudioEntity readAudioFile(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 52	java/io/File
    //   9: dup
    //   10: aload_1
    //   11: invokespecial 55	java/io/File:<init>	(Ljava/lang/String;)V
    //   14: astore_2
    //   15: aload_2
    //   16: invokevirtual 124	java/io/File:exists	()Z
    //   19: ifne +5 -> 24
    //   22: aconst_null
    //   23: areturn
    //   24: aload_2
    //   25: invokevirtual 191	java/io/File:length	()J
    //   28: l2i
    //   29: istore 5
    //   31: new 57	java/io/FileInputStream
    //   34: dup
    //   35: aload_2
    //   36: invokespecial 60	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   39: astore 6
    //   41: iload 5
    //   43: sipush 128
    //   46: isub
    //   47: i2l
    //   48: lstore 7
    //   50: aload 6
    //   52: lload 7
    //   54: invokevirtual 195	java/io/FileInputStream:skip	(J)J
    //   57: pop2
    //   58: sipush 128
    //   61: newarray byte
    //   63: astore 13
    //   65: aload 6
    //   67: aload 13
    //   69: invokevirtual 198	java/io/FileInputStream:read	([B)I
    //   72: pop
    //   73: aload 6
    //   75: invokevirtual 83	java/io/FileInputStream:close	()V
    //   78: new 157	java/lang/String
    //   81: dup
    //   82: aload 13
    //   84: aload_0
    //   85: aload_1
    //   86: invokevirtual 200	com/winca/music/mediautil/MediaUtil:codeString	(Ljava/lang/String;)Ljava/lang/String;
    //   89: invokespecial 203	java/lang/String:<init>	([BLjava/lang/String;)V
    //   92: astore 15
    //   94: aload 15
    //   96: iconst_0
    //   97: iconst_3
    //   98: invokevirtual 207	java/lang/String:substring	(II)Ljava/lang/String;
    //   101: ldc 208
    //   103: invokevirtual 212	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   106: istore 16
    //   108: aconst_null
    //   109: astore 17
    //   111: aconst_null
    //   112: astore 18
    //   114: aconst_null
    //   115: astore 19
    //   117: iload 16
    //   119: ifeq +44 -> 163
    //   122: aload 15
    //   124: iconst_3
    //   125: bipush 25
    //   127: invokevirtual 207	java/lang/String:substring	(II)Ljava/lang/String;
    //   130: invokevirtual 215	java/lang/String:trim	()Ljava/lang/String;
    //   133: astore 19
    //   135: aload 15
    //   137: bipush 26
    //   139: bipush 44
    //   141: invokevirtual 207	java/lang/String:substring	(II)Ljava/lang/String;
    //   144: invokevirtual 215	java/lang/String:trim	()Ljava/lang/String;
    //   147: astore 18
    //   149: aload 15
    //   151: bipush 45
    //   153: bipush 69
    //   155: invokevirtual 207	java/lang/String:substring	(II)Ljava/lang/String;
    //   158: invokevirtual 215	java/lang/String:trim	()Ljava/lang/String;
    //   161: astore 17
    //   163: aload 19
    //   165: ifnull +13 -> 178
    //   168: aload 19
    //   170: ldc 217
    //   172: invokevirtual 212	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   175: ifeq +24 -> 199
    //   178: aload_2
    //   179: invokevirtual 220	java/io/File:getName	()Ljava/lang/String;
    //   182: astore 20
    //   184: aload 20
    //   186: iconst_0
    //   187: aload 20
    //   189: ldc 222
    //   191: invokevirtual 225	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   194: invokevirtual 207	java/lang/String:substring	(II)Ljava/lang/String;
    //   197: astore 19
    //   199: aload 19
    //   201: ldc 222
    //   203: invokevirtual 229	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   206: ifeq +18 -> 224
    //   209: aload 19
    //   211: iconst_0
    //   212: aload 19
    //   214: ldc 222
    //   216: invokevirtual 225	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   219: invokevirtual 207	java/lang/String:substring	(II)Ljava/lang/String;
    //   222: astore 19
    //   224: aload 18
    //   226: ifnull +165 -> 391
    //   229: aload 18
    //   231: ldc 217
    //   233: invokevirtual 212	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   236: ifeq +6 -> 242
    //   239: goto +152 -> 391
    //   242: aload 17
    //   244: ifnull +155 -> 399
    //   247: aload 17
    //   249: ldc 217
    //   251: invokevirtual 212	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   254: ifeq +6 -> 260
    //   257: goto +142 -> 399
    //   260: aload_0
    //   261: aload_1
    //   262: invokespecial 231	com/winca/music/mediautil/MediaUtil:getMusicDuration	(Ljava/lang/String;)I
    //   265: istore 21
    //   267: new 233	com/winca/music/mediautil/AudioEntity
    //   270: dup
    //   271: invokespecial 234	com/winca/music/mediautil/AudioEntity:<init>	()V
    //   274: astore 22
    //   276: aload 22
    //   278: aload 19
    //   280: invokevirtual 237	com/winca/music/mediautil/AudioEntity:setTitle	(Ljava/lang/String;)V
    //   283: aload 22
    //   285: aload 18
    //   287: invokevirtual 240	com/winca/music/mediautil/AudioEntity:setArtist	(Ljava/lang/String;)V
    //   290: aload 22
    //   292: aload 17
    //   294: invokevirtual 243	com/winca/music/mediautil/AudioEntity:setAlbum	(Ljava/lang/String;)V
    //   297: aload 22
    //   299: aload_1
    //   300: invokevirtual 246	com/winca/music/mediautil/AudioEntity:setData	(Ljava/lang/String;)V
    //   303: aload 22
    //   305: aload_0
    //   306: aload_0
    //   307: getfield 46	com/winca/music/mediautil/MediaUtil:mContext	Landroid/content/Context;
    //   310: iload 21
    //   312: sipush 1000
    //   315: idiv
    //   316: i2l
    //   317: invokevirtual 248	com/winca/music/mediautil/MediaUtil:makeTimeString	(Landroid/content/Context;J)Ljava/lang/String;
    //   320: invokevirtual 251	com/winca/music/mediautil/AudioEntity:setDuration	(Ljava/lang/String;)V
    //   323: aload 22
    //   325: areturn
    //   326: astore_3
    //   327: ldc 24
    //   329: new 28	java/lang/StringBuilder
    //   332: dup
    //   333: ldc 253
    //   335: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   338: aload_1
    //   339: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   345: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   348: pop
    //   349: aload_3
    //   350: invokevirtual 94	java/lang/Exception:printStackTrace	()V
    //   353: aconst_null
    //   354: areturn
    //   355: astore 9
    //   357: aload 9
    //   359: invokevirtual 94	java/lang/Exception:printStackTrace	()V
    //   362: aload 6
    //   364: invokevirtual 83	java/io/FileInputStream:close	()V
    //   367: ldc 24
    //   369: new 28	java/lang/StringBuilder
    //   372: dup
    //   373: ldc 255
    //   375: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   378: aload_1
    //   379: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   382: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   385: invokestatic 91	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   388: pop
    //   389: aconst_null
    //   390: areturn
    //   391: ldc_w 257
    //   394: astore 18
    //   396: goto -154 -> 242
    //   399: ldc_w 257
    //   402: astore 17
    //   404: goto -144 -> 260
    //
    // Exception table:
    //   from	to	target	type
    //   6	22	326	java/lang/Exception
    //   24	41	326	java/lang/Exception
    //   58	108	326	java/lang/Exception
    //   122	163	326	java/lang/Exception
    //   168	178	326	java/lang/Exception
    //   178	199	326	java/lang/Exception
    //   199	224	326	java/lang/Exception
    //   229	239	326	java/lang/Exception
    //   247	257	326	java/lang/Exception
    //   260	323	326	java/lang/Exception
    //   357	389	326	java/lang/Exception
    //   50	58	355	java/lang/Exception
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.mediautil.MediaUtil
 * JD-Core Version:    0.6.0
 */