package com.winca.music.audioutil;

public final class Crc16
{
  private static short polynomial = -32763;
  private short crc = -1;

  public void add_bits(int paramInt1, int paramInt2)
  {
    int i = 1 << paramInt2 - 1;
    int j;
    label19: int k;
    if ((0x8000 & this.crc) == 0)
    {
      j = 1;
      if ((paramInt1 & i) != 0)
        break label75;
      k = 1;
      label28: if ((k ^ j) == 0)
        break label81;
      this.crc = (short)(this.crc << 1);
    }
    label75: label81: for (this.crc = (short)(this.crc ^ polynomial); ; this.crc = (short)(this.crc << 1))
    {
      i >>>= 1;
      if (i != 0)
        break;
      return;
      j = 0;
      break label19;
      k = 0;
      break label28;
    }
  }

  public short checksum()
  {
    int i = this.crc;
    this.crc = -1;
    return i;
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.audioutil.Crc16
 * JD-Core Version:    0.6.0
 */