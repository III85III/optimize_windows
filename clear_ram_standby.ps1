# III85III - Deep RAM Standby List Purge
echo "Purging Windows Standby List (RAM Cache)..."

$code = @"
using System;
using System.Runtime.InteropServices;

public class RAMCleaner {
    [DllImport("ntdll.dll")]
    public static extern int NtSetSystemInformation(int SystemInformationClass, IntPtr SystemInformation, int SystemInformationLength);

    public static void EmptyStandbyList() {
        int SystemMemoryListInformation = 80;
        int MemoryPurgeStandbyList = 4;
        IntPtr pControl = Marshal.AllocHGlobal(sizeof(int));
        Marshal.WriteInt32(pControl, MemoryPurgeStandbyList);
        NtSetSystemInformation(SystemMemoryListInformation, pControl, sizeof(int));
        Marshal.FreeHGlobal(pControl);
    }
}
"@

Add-Type -TypeDefinition $code
[RAMCleaner]::EmptyStandbyList()
echo "Standby List Cleared! Check Task Manager (Cached should drop)."
