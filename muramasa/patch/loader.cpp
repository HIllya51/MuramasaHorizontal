#include<iostream>
#include<Windows.h>
#include<detours.h>
#include<filesystem>
int WINAPI wWinMain(HINSTANCE hInstance, HINSTANCE, LPWSTR lpCmdLine, int nCmdShow)
{
 
	auto dllpath = std::filesystem::current_path() /"Horizontal.dll";
    auto s=new char [dllpath.string().size()+1];
    strcpy(s,dllpath.string().c_str()); 
 
	STARTUPINFOW si;
	PROCESS_INFORMATION pi;
	ZeroMemory(&si, sizeof(STARTUPINFO));
	ZeroMemory(&pi, sizeof(PROCESS_INFORMATION));
	si.cb = sizeof(STARTUPINFO);
    
    wchar_t command[]=L".\\Muramasa_chs.exe";
    DetourCreateProcessWithDllExW(NULL, command, NULL,
		NULL, FALSE, CREATE_DEFAULT_ERROR_MODE, NULL, NULL,
		&si, &pi, s, NULL);
	return 0;
}
 