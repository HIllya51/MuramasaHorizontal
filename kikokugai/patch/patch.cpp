#include <Windows.h>
#include<vector>
#include<string>
#include<fstream> 
#include<unordered_map>
#include<Shlwapi.h>
#include<regex>
#include<filesystem>
#include<thread>
#include<detours.h>
 
__declspec(dllexport) void dumy() {}
 
HMODULE g_hm;
std::string LoadResImage(LPCWSTR pszResID) 
{ 
	HMODULE hModule=g_hm;
	HRSRC hRsrc = ::FindResource (hModule, pszResID,L"DATA"); // type   
	if (!hRsrc)  
		return 0;  
	// load resource into memory   
	DWORD len = SizeofResource(hModule, hRsrc);  
	BYTE* lpRsrc = (BYTE*)LoadResource(hModule, hRsrc);  
	if (!lpRsrc)  
		return 0;  
	// Allocate global memory on which to create stream   
	HGLOBAL m_hMem = GlobalAlloc(GMEM_FIXED, len);  
	BYTE* pmem = (BYTE*)GlobalLock(m_hMem);  
	memcpy(pmem,lpRsrc,len);  
	 
	GlobalUnlock(m_hMem);  
	 
	FreeResource(lpRsrc); 
	return std::string((char*)pmem,len);
} 
inline LPWSTR mbwc(LPCSTR lstr, UINT CodePage = CP_ACP)
{
	int lsize = strlen(lstr);
	int wsize = (lsize + 1) << 1;
	auto wstr = new wchar_t[wsize];
	auto n = MultiByteToWideChar(CodePage, 0, lstr, lsize, wstr, wsize);
	wstr[n] = L'\0'; 
	return wstr;
}
HWND WINAPI HookCreateWindowExA(
	DWORD dwExStyle, LPCSTR lpClassName, LPCSTR lpWindowName, DWORD dwStyle,
	int X, int Y, int nWidth, int nHeight, HWND hWndParent, HMENU hMenu, HINSTANCE hInstance, LPVOID lpParam)
{
    auto Title=new char[strlen(lpWindowName)+100];
    strcpy(Title,lpWindowName);
    strcat(Title," 横向文字补丁 by HIllya51");
	return CreateWindowExW(dwExStyle,mbwc(lpClassName),mbwc(Title),dwStyle,X,Y,nWidth,nHeight,hWndParent,hMenu,hInstance,lpParam);;
}

auto OriginalCreateWindowExA=CreateWindowExA;
auto OriginalCreateFileA=CreateFileA;
wchar_t temp_file[MAX_PATH];
HANDLE WINAPI HookCreateFileA(
	_In_ LPCSTR lpFileName,
	_In_ DWORD dwDesiredAccess,
	_In_ DWORD dwShareMode,
	_In_opt_ LPSECURITY_ATTRIBUTES lpSecurityAttributes,
	_In_ DWORD dwCreationDisposition,
	_In_ DWORD dwFlagsAndAttributes,
	_In_opt_ HANDLE hTemplateFile
)
{
    if(strcmp(lpFileName,"nss-1.npa")==0||strstr(lpFileName,"\\nss-1.npa")){
        return CreateFileW(temp_file,dwDesiredAccess,dwShareMode,lpSecurityAttributes,dwCreationDisposition,dwFlagsAndAttributes,hTemplateFile);
    } 
	return OriginalCreateFileA(lpFileName,dwDesiredAccess,dwShareMode,lpSecurityAttributes,dwCreationDisposition,dwFlagsAndAttributes,hTemplateFile);
}
void AttachFunctions() 
{ 
	DetourAttach(&(PVOID&)OriginalCreateFileA, HookCreateFileA);
	DetourAttach(&(PVOID&)OriginalCreateWindowExA, HookCreateWindowExA); 
}

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    if (DetourIsHelperProcess()) {
		return TRUE;
	}
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH: { 
		g_hm=hModule;
		auto nssdata=LoadResImage(L"NSSNPA"); 
		wchar_t temp_path[MAX_PATH];
		GetTempPathW(MAX_PATH, temp_path);

		
		GetTempFileNameW(temp_path, L"nss-1.npa", 0, temp_file);

		FILE *f=_wfopen(temp_file,L"wb");
		fwrite(nssdata.c_str(),1,nssdata.size(),f);
		fclose(f);

		DetourRestoreAfterWith();
		DetourTransactionBegin();
		DetourUpdateThread(GetCurrentThread());

		AttachFunctions();

		DetourTransactionCommit();
        break;
   	}
    case DLL_THREAD_ATTACH:
        break;
    case DLL_THREAD_DETACH:
        break;
    case DLL_PROCESS_DETACH:
		DeleteFile(temp_file);
        break;
    
    }
    return TRUE;
}