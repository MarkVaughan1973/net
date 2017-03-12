using System;
using System.Runtime.InteropServices;

namespace ConsoleApplication.Examples.Interop
{
    //https://msdn.microsoft.com/en-us/library/ms173187.aspx
    public class CallNativeDll
    {
        static void Main(string[] args)
        {
            string file = @"..\..\examples\interop\enlightenment.wav";
             //string file = @"..\..\examples\interop\republic.mp3";
            PlaySound(file, new IntPtr(), PlaySoundFlags.SND_ASYNC);
            Console.ReadKey();
        }

        //https://msdn.microsoft.com/en-us/library/windows/desktop/dd743680(v=vs.85).aspx
        [DllImport(
            "winmm.DLL", 
            EntryPoint = "PlaySound", 
            SetLastError = true, 
            CharSet = CharSet.Unicode, 
            ThrowOnUnmappableChar = true)]
        private static extern bool PlaySound(string szSound, IntPtr hMod, PlaySoundFlags flags);

        [Flags]
        public enum PlaySoundFlags : int
        {
            SND_SYNC = 0x0000,
            SND_ASYNC = 0x0001,
            SND_NODEFAULT = 0x0002,
            SND_LOOP = 0x0008,
            SND_NOSTOP = 0x0010,
            SND_NOWAIT = 0x00002000,
            SND_FILENAME = 0x00020000,
            SND_RESOURCE = 0x00040004
        }
    }
}
