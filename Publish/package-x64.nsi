; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "WSATools"
!define PRODUCT_VERSION "1.1.2"
!define PRODUCT_PUBLISHER "michael_eddy"
!define PRODUCT_WEB_SITE "https://michael-eddy.github.io/"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\createdump.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "..\WSATools\images\icon.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\WSATools.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "SimpChinese"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "WSATools-Setup-x64.exe"
InstallDir "$PROGRAMFILES\WSATools"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  File "x64\Accessibility.dll"
  File "x64\api-ms-win-core-console-l1-1-0.dll"
  File "x64\api-ms-win-core-console-l1-2-0.dll"
  File "x64\api-ms-win-core-datetime-l1-1-0.dll"
  File "x64\api-ms-win-core-debug-l1-1-0.dll"
  File "x64\api-ms-win-core-errorhandling-l1-1-0.dll"
  File "x64\api-ms-win-core-file-l1-1-0.dll"
  File "x64\api-ms-win-core-file-l1-2-0.dll"
  File "x64\api-ms-win-core-file-l2-1-0.dll"
  File "x64\api-ms-win-core-handle-l1-1-0.dll"
  File "x64\api-ms-win-core-heap-l1-1-0.dll"
  File "x64\api-ms-win-core-interlocked-l1-1-0.dll"
  File "x64\api-ms-win-core-libraryloader-l1-1-0.dll"
  File "x64\api-ms-win-core-localization-l1-2-0.dll"
  File "x64\api-ms-win-core-memory-l1-1-0.dll"
  File "x64\api-ms-win-core-namedpipe-l1-1-0.dll"
  File "x64\api-ms-win-core-processenvironment-l1-1-0.dll"
  File "x64\api-ms-win-core-processthreads-l1-1-0.dll"
  File "x64\api-ms-win-core-processthreads-l1-1-1.dll"
  File "x64\api-ms-win-core-profile-l1-1-0.dll"
  File "x64\api-ms-win-core-rtlsupport-l1-1-0.dll"
  File "x64\api-ms-win-core-string-l1-1-0.dll"
  File "x64\api-ms-win-core-synch-l1-1-0.dll"
  File "x64\api-ms-win-core-synch-l1-2-0.dll"
  File "x64\api-ms-win-core-sysinfo-l1-1-0.dll"
  File "x64\api-ms-win-core-timezone-l1-1-0.dll"
  File "x64\api-ms-win-core-util-l1-1-0.dll"
  File "x64\api-ms-win-crt-conio-l1-1-0.dll"
  File "x64\api-ms-win-crt-convert-l1-1-0.dll"
  File "x64\api-ms-win-crt-environment-l1-1-0.dll"
  File "x64\api-ms-win-crt-filesystem-l1-1-0.dll"
  File "x64\api-ms-win-crt-heap-l1-1-0.dll"
  File "x64\api-ms-win-crt-locale-l1-1-0.dll"
  File "x64\api-ms-win-crt-math-l1-1-0.dll"
  File "x64\api-ms-win-crt-multibyte-l1-1-0.dll"
  File "x64\api-ms-win-crt-private-l1-1-0.dll"
  File "x64\api-ms-win-crt-process-l1-1-0.dll"
  File "x64\api-ms-win-crt-runtime-l1-1-0.dll"
  File "x64\api-ms-win-crt-stdio-l1-1-0.dll"
  File "x64\api-ms-win-crt-string-l1-1-0.dll"
  File "x64\api-ms-win-crt-time-l1-1-0.dll"
  File "x64\api-ms-win-crt-utility-l1-1-0.dll"
  File "x64\clretwrc.dll"
  File "x64\clrjit.dll"
  File "x64\coreclr.dll"
  File "x64\createdump.exe"
  CreateDirectory "$SMPROGRAMS\WSATools"
  CreateShortCut "$SMPROGRAMS\WSATools\WSATools.lnk" "$INSTDIR\createdump.exe"
  CreateShortCut "$DESKTOP\WSATools.lnk" "$INSTDIR\createdump.exe"
  File "x64\D3DCompiler_47_cor3.dll"
  File "x64\dbgshim.dll"
  File "x64\DirectWriteForwarder.dll"
  File "x64\DynamicData.dll"
  SetOutPath "$INSTDIR\en"
  File "x64\en\HandyControl.resources.dll"
  SetOutPath "$INSTDIR"
  File "x64\HandyControl.dll"
  File "x64\hostfxr.dll"
  File "x64\hostpolicy.dll"
  File "x64\HtmlAgilityPack.dll"
  File "x64\ICSharpCode.SharpZipLib.dll"
  File "x64\Microsoft.CSharp.dll"
  File "x64\Microsoft.DiaSymReader.Native.amd64.dll"
  File "x64\Microsoft.Toolkit.Mvvm.dll"
  File "x64\Microsoft.VisualBasic.Core.dll"
  File "x64\Microsoft.VisualBasic.dll"
  File "x64\Microsoft.VisualBasic.Forms.dll"
  File "x64\Microsoft.Win32.Primitives.dll"
  File "x64\Microsoft.Win32.Registry.AccessControl.dll"
  File "x64\Microsoft.Win32.Registry.dll"
  File "x64\Microsoft.Win32.SystemEvents.dll"
  File "x64\Microsoft.Windows.SDK.NET.dll"
  File "x64\Microsoft.Xaml.Behaviors.dll"
  File "x64\mscordaccore.dll"
  File "x64\mscordaccore_amd64_amd64_6.0.21.52210.dll"
  File "x64\mscordbi.dll"
  File "x64\mscorlib.dll"
  File "x64\mscorrc.dll"
  File "x64\msquic.dll"
  File "x64\netstandard.dll"
  File "x64\PenImc_cor3.dll"
  File "x64\PresentationCore.dll"
  File "x64\PresentationFramework-SystemCore.dll"
  File "x64\PresentationFramework-SystemData.dll"
  File "x64\PresentationFramework-SystemDrawing.dll"
  File "x64\PresentationFramework-SystemXml.dll"
  File "x64\PresentationFramework-SystemXmlLinq.dll"
  File "x64\PresentationFramework.Aero.dll"
  File "x64\PresentationFramework.Aero2.dll"
  File "x64\PresentationFramework.AeroLite.dll"
  File "x64\PresentationFramework.Classic.dll"
  File "x64\PresentationFramework.dll"
  File "x64\PresentationFramework.Luna.dll"
  File "x64\PresentationFramework.Royale.dll"
  File "x64\PresentationNative_cor3.dll"
  File "x64\PresentationUI.dll"
  File "x64\ReachFramework.dll"
  File "x64\Serilog.dll"
  File "x64\Serilog.Sinks.Async.dll"
  File "x64\Serilog.Sinks.File.dll"
  File "x64\System.AppContext.dll"
  File "x64\System.Buffers.dll"
  File "x64\System.CodeDom.dll"
  File "x64\System.Collections.Concurrent.dll"
  File "x64\System.Collections.dll"
  File "x64\System.Collections.Immutable.dll"
  File "x64\System.Collections.NonGeneric.dll"
  File "x64\System.Collections.Specialized.dll"
  File "x64\System.ComponentModel.Annotations.dll"
  File "x64\System.ComponentModel.DataAnnotations.dll"
  File "x64\System.ComponentModel.dll"
  File "x64\System.ComponentModel.EventBasedAsync.dll"
  File "x64\System.ComponentModel.Primitives.dll"
  File "x64\System.ComponentModel.TypeConverter.dll"
  File "x64\System.Configuration.ConfigurationManager.dll"
  File "x64\System.Configuration.dll"
  File "x64\System.Console.dll"
  File "x64\System.Core.dll"
  File "x64\System.Data.Common.dll"
  File "x64\System.Data.DataSetExtensions.dll"
  File "x64\System.Data.dll"
  File "x64\System.Design.dll"
  File "x64\System.Diagnostics.Contracts.dll"
  File "x64\System.Diagnostics.Debug.dll"
  File "x64\System.Diagnostics.DiagnosticSource.dll"
  File "x64\System.Diagnostics.EventLog.dll"
  File "x64\System.Diagnostics.FileVersionInfo.dll"
  File "x64\System.Diagnostics.PerformanceCounter.dll"
  File "x64\System.Diagnostics.Process.dll"
  File "x64\System.Diagnostics.StackTrace.dll"
  File "x64\System.Diagnostics.TextWriterTraceListener.dll"
  File "x64\System.Diagnostics.Tools.dll"
  File "x64\System.Diagnostics.TraceSource.dll"
  File "x64\System.Diagnostics.Tracing.dll"
  File "x64\System.DirectoryServices.dll"
  File "x64\System.dll"
  File "x64\System.Drawing.Common.dll"
  File "x64\System.Drawing.Design.dll"
  File "x64\System.Drawing.dll"
  File "x64\System.Drawing.Primitives.dll"
  File "x64\System.Dynamic.Runtime.dll"
  File "x64\System.Formats.Asn1.dll"
  File "x64\System.Globalization.Calendars.dll"
  File "x64\System.Globalization.dll"
  File "x64\System.Globalization.Extensions.dll"
  File "x64\System.IO.Compression.Brotli.dll"
  File "x64\System.IO.Compression.dll"
  File "x64\System.IO.Compression.FileSystem.dll"
  File "x64\System.IO.Compression.Native.dll"
  File "x64\System.IO.Compression.ZipFile.dll"
  File "x64\System.IO.dll"
  File "x64\System.IO.FileSystem.AccessControl.dll"
  File "x64\System.IO.FileSystem.dll"
  File "x64\System.IO.FileSystem.DriveInfo.dll"
  File "x64\System.IO.FileSystem.Primitives.dll"
  File "x64\System.IO.FileSystem.Watcher.dll"
  File "x64\System.IO.IsolatedStorage.dll"
  File "x64\System.IO.MemoryMappedFiles.dll"
  File "x64\System.IO.Packaging.dll"
  File "x64\System.IO.Pipes.AccessControl.dll"
  File "x64\System.IO.Pipes.dll"
  File "x64\System.IO.UnmanagedMemoryStream.dll"
  File "x64\System.Linq.dll"
  File "x64\System.Linq.Expressions.dll"
  File "x64\System.Linq.Parallel.dll"
  File "x64\System.Linq.Queryable.dll"
  File "x64\System.Memory.dll"
  File "x64\System.Net.dll"
  File "x64\System.Net.Http.dll"
  File "x64\System.Net.Http.Json.dll"
  File "x64\System.Net.HttpListener.dll"
  File "x64\System.Net.Mail.dll"
  File "x64\System.Net.NameResolution.dll"
  File "x64\System.Net.NetworkInformation.dll"
  File "x64\System.Net.Ping.dll"
  File "x64\System.Net.Primitives.dll"
  File "x64\System.Net.Quic.dll"
  File "x64\System.Net.Requests.dll"
  File "x64\System.Net.Security.dll"
  File "x64\System.Net.ServicePoint.dll"
  File "x64\System.Net.Sockets.dll"
  File "x64\System.Net.WebClient.dll"
  File "x64\System.Net.WebHeaderCollection.dll"
  File "x64\System.Net.WebProxy.dll"
  File "x64\System.Net.WebSockets.Client.dll"
  File "x64\System.Net.WebSockets.dll"
  File "x64\System.Numerics.dll"
  File "x64\System.Numerics.Vectors.dll"
  File "x64\System.ObjectModel.dll"
  File "x64\System.Printing.dll"
  File "x64\System.Private.CoreLib.dll"
  File "x64\System.Private.DataContractSerialization.dll"
  File "x64\System.Private.Uri.dll"
  File "x64\System.Private.Xml.dll"
  File "x64\System.Private.Xml.Linq.dll"
  File "x64\System.Reactive.dll"
  File "x64\System.Reflection.DispatchProxy.dll"
  File "x64\System.Reflection.dll"
  File "x64\System.Reflection.Emit.dll"
  File "x64\System.Reflection.Emit.ILGeneration.dll"
  File "x64\System.Reflection.Emit.Lightweight.dll"
  File "x64\System.Reflection.Extensions.dll"
  File "x64\System.Reflection.Metadata.dll"
  File "x64\System.Reflection.Primitives.dll"
  File "x64\System.Reflection.TypeExtensions.dll"
  File "x64\System.Resources.Extensions.dll"
  File "x64\System.Resources.Reader.dll"
  File "x64\System.Resources.ResourceManager.dll"
  File "x64\System.Resources.Writer.dll"
  File "x64\System.Runtime.CompilerServices.Unsafe.dll"
  File "x64\System.Runtime.CompilerServices.VisualC.dll"
  File "x64\System.Runtime.dll"
  File "x64\System.Runtime.Extensions.dll"
  File "x64\System.Runtime.Handles.dll"
  File "x64\System.Runtime.InteropServices.dll"
  File "x64\System.Runtime.InteropServices.RuntimeInformation.dll"
  File "x64\System.Runtime.Intrinsics.dll"
  File "x64\System.Runtime.Loader.dll"
  File "x64\System.Runtime.Numerics.dll"
  File "x64\System.Runtime.Serialization.dll"
  File "x64\System.Runtime.Serialization.Formatters.dll"
  File "x64\System.Runtime.Serialization.Json.dll"
  File "x64\System.Runtime.Serialization.Primitives.dll"
  File "x64\System.Runtime.Serialization.Xml.dll"
  File "x64\System.Security.AccessControl.dll"
  File "x64\System.Security.Claims.dll"
  File "x64\System.Security.Cryptography.Algorithms.dll"
  File "x64\System.Security.Cryptography.Cng.dll"
  File "x64\System.Security.Cryptography.Csp.dll"
  File "x64\System.Security.Cryptography.Encoding.dll"
  File "x64\System.Security.Cryptography.OpenSsl.dll"
  File "x64\System.Security.Cryptography.Pkcs.dll"
  File "x64\System.Security.Cryptography.Primitives.dll"
  File "x64\System.Security.Cryptography.ProtectedData.dll"
  File "x64\System.Security.Cryptography.X509Certificates.dll"
  File "x64\System.Security.Cryptography.Xml.dll"
  File "x64\System.Security.dll"
  File "x64\System.Security.Permissions.dll"
  File "x64\System.Security.Principal.dll"
  File "x64\System.Security.Principal.Windows.dll"
  File "x64\System.Security.SecureString.dll"
  File "x64\System.ServiceModel.Web.dll"
  File "x64\System.ServiceProcess.dll"
  File "x64\System.Text.Encoding.CodePages.dll"
  File "x64\System.Text.Encoding.dll"
  File "x64\System.Text.Encoding.Extensions.dll"
  File "x64\System.Text.Encodings.Web.dll"
  File "x64\System.Text.Json.dll"
  File "x64\System.Text.RegularExpressions.dll"
  File "x64\System.Threading.AccessControl.dll"
  File "x64\System.Threading.Channels.dll"
  File "x64\System.Threading.dll"
  File "x64\System.Threading.Overlapped.dll"
  File "x64\System.Threading.Tasks.Dataflow.dll"
  File "x64\System.Threading.Tasks.dll"
  File "x64\System.Threading.Tasks.Extensions.dll"
  File "x64\System.Threading.Tasks.Parallel.dll"
  File "x64\System.Threading.Thread.dll"
  File "x64\System.Threading.ThreadPool.dll"
  File "x64\System.Threading.Timer.dll"
  File "x64\System.Transactions.dll"
  File "x64\System.Transactions.Local.dll"
  File "x64\System.ValueTuple.dll"
  File "x64\System.Web.dll"
  File "x64\System.Web.HttpUtility.dll"
  File "x64\System.Windows.Controls.Ribbon.dll"
  File "x64\System.Windows.dll"
  File "x64\System.Windows.Extensions.dll"
  File "x64\System.Windows.Forms.Design.dll"
  File "x64\System.Windows.Forms.Design.Editors.dll"
  File "x64\System.Windows.Forms.dll"
  File "x64\System.Windows.Forms.Primitives.dll"
  File "x64\System.Windows.Input.Manipulations.dll"
  File "x64\System.Windows.Presentation.dll"
  File "x64\System.Xaml.dll"
  File "x64\System.Xml.dll"
  File "x64\System.Xml.Linq.dll"
  File "x64\System.Xml.ReaderWriter.dll"
  File "x64\System.Xml.Serialization.dll"
  File "x64\System.Xml.XDocument.dll"
  File "x64\System.Xml.XmlDocument.dll"
  File "x64\System.Xml.XmlSerializer.dll"
  File "x64\System.Xml.XPath.dll"
  File "x64\System.Xml.XPath.XDocument.dll"
  File "x64\ucrtbase.dll"
  File "x64\UIAutomationClient.dll"
  File "x64\UIAutomationClientSideProviders.dll"
  File "x64\UIAutomationProvider.dll"
  File "x64\UIAutomationTypes.dll"
  File "x64\vcruntime140_cor3.dll"
  File "x64\WindowsBase.dll"
  File "x64\WindowsFormsIntegration.dll"
  File "x64\WinRT.Runtime.dll"
  File "x64\wpfgfx_cor3.dll"
  File "x64\WSATools.deps.json"
  File "x64\WSATools.dll"
  File "x64\WSATools.exe"
  File "x64\WSATools.Libs.dll"
  File "x64\WSATools.runtimeconfig.json"
  SetOutPath "$INSTDIR\zh-Hans"
  File "x64\zh-Hans\Microsoft.VisualBasic.Forms.resources.dll"
  File "x64\zh-Hans\PresentationCore.resources.dll"
  File "x64\zh-Hans\PresentationFramework.resources.dll"
  File "x64\zh-Hans\PresentationUI.resources.dll"
  File "x64\zh-Hans\ReachFramework.resources.dll"
  File "x64\zh-Hans\System.Windows.Controls.Ribbon.resources.dll"
  File "x64\zh-Hans\System.Windows.Forms.Design.resources.dll"
  File "x64\zh-Hans\System.Windows.Forms.Primitives.resources.dll"
  File "x64\zh-Hans\System.Windows.Forms.resources.dll"
  File "x64\zh-Hans\System.Windows.Input.Manipulations.resources.dll"
  File "x64\zh-Hans\System.Xaml.resources.dll"
  File "x64\zh-Hans\UIAutomationClient.resources.dll"
  File "x64\zh-Hans\UIAutomationClientSideProviders.resources.dll"
  File "x64\zh-Hans\UIAutomationProvider.resources.dll"
  File "x64\zh-Hans\UIAutomationTypes.resources.dll"
  File "x64\zh-Hans\WindowsBase.resources.dll"
  File "x64\zh-Hans\WindowsFormsIntegration.resources.dll"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  CreateShortCut "$SMPROGRAMS\WSATools\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\createdump.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\createdump.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) 已成功地从你的计算机移除。"
FunctionEnd

Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "你确实要完全移除 $(^Name) ，其及所有的组件？" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\zh-Hans\WindowsFormsIntegration.resources.dll"
  Delete "$INSTDIR\zh-Hans\WindowsBase.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationTypes.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationProvider.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationClientSideProviders.resources.dll"
  Delete "$INSTDIR\zh-Hans\UIAutomationClient.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Xaml.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Input.Manipulations.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Forms.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Forms.Primitives.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Forms.Design.resources.dll"
  Delete "$INSTDIR\zh-Hans\System.Windows.Controls.Ribbon.resources.dll"
  Delete "$INSTDIR\zh-Hans\ReachFramework.resources.dll"
  Delete "$INSTDIR\zh-Hans\PresentationUI.resources.dll"
  Delete "$INSTDIR\zh-Hans\PresentationFramework.resources.dll"
  Delete "$INSTDIR\zh-Hans\PresentationCore.resources.dll"
  Delete "$INSTDIR\zh-Hans\Microsoft.VisualBasic.Forms.resources.dll"
  Delete "$INSTDIR\WSATools.runtimeconfig.json"
  Delete "$INSTDIR\WSATools.Libs.dll"
  Delete "$INSTDIR\WSATools.exe"
  Delete "$INSTDIR\WSATools.dll"
  Delete "$INSTDIR\WSATools.deps.json"
  Delete "$INSTDIR\wpfgfx_cor3.dll"
  Delete "$INSTDIR\WinRT.Runtime.dll"
  Delete "$INSTDIR\WindowsFormsIntegration.dll"
  Delete "$INSTDIR\WindowsBase.dll"
  Delete "$INSTDIR\vcruntime140_cor3.dll"
  Delete "$INSTDIR\UIAutomationTypes.dll"
  Delete "$INSTDIR\UIAutomationProvider.dll"
  Delete "$INSTDIR\UIAutomationClientSideProviders.dll"
  Delete "$INSTDIR\UIAutomationClient.dll"
  Delete "$INSTDIR\ucrtbase.dll"
  Delete "$INSTDIR\System.Xml.XPath.XDocument.dll"
  Delete "$INSTDIR\System.Xml.XPath.dll"
  Delete "$INSTDIR\System.Xml.XmlSerializer.dll"
  Delete "$INSTDIR\System.Xml.XmlDocument.dll"
  Delete "$INSTDIR\System.Xml.XDocument.dll"
  Delete "$INSTDIR\System.Xml.Serialization.dll"
  Delete "$INSTDIR\System.Xml.ReaderWriter.dll"
  Delete "$INSTDIR\System.Xml.Linq.dll"
  Delete "$INSTDIR\System.Xml.dll"
  Delete "$INSTDIR\System.Xaml.dll"
  Delete "$INSTDIR\System.Windows.Presentation.dll"
  Delete "$INSTDIR\System.Windows.Input.Manipulations.dll"
  Delete "$INSTDIR\System.Windows.Forms.Primitives.dll"
  Delete "$INSTDIR\System.Windows.Forms.dll"
  Delete "$INSTDIR\System.Windows.Forms.Design.Editors.dll"
  Delete "$INSTDIR\System.Windows.Forms.Design.dll"
  Delete "$INSTDIR\System.Windows.Extensions.dll"
  Delete "$INSTDIR\System.Windows.dll"
  Delete "$INSTDIR\System.Windows.Controls.Ribbon.dll"
  Delete "$INSTDIR\System.Web.HttpUtility.dll"
  Delete "$INSTDIR\System.Web.dll"
  Delete "$INSTDIR\System.ValueTuple.dll"
  Delete "$INSTDIR\System.Transactions.Local.dll"
  Delete "$INSTDIR\System.Transactions.dll"
  Delete "$INSTDIR\System.Threading.Timer.dll"
  Delete "$INSTDIR\System.Threading.ThreadPool.dll"
  Delete "$INSTDIR\System.Threading.Thread.dll"
  Delete "$INSTDIR\System.Threading.Tasks.Parallel.dll"
  Delete "$INSTDIR\System.Threading.Tasks.Extensions.dll"
  Delete "$INSTDIR\System.Threading.Tasks.dll"
  Delete "$INSTDIR\System.Threading.Tasks.Dataflow.dll"
  Delete "$INSTDIR\System.Threading.Overlapped.dll"
  Delete "$INSTDIR\System.Threading.dll"
  Delete "$INSTDIR\System.Threading.Channels.dll"
  Delete "$INSTDIR\System.Threading.AccessControl.dll"
  Delete "$INSTDIR\System.Text.RegularExpressions.dll"
  Delete "$INSTDIR\System.Text.Json.dll"
  Delete "$INSTDIR\System.Text.Encodings.Web.dll"
  Delete "$INSTDIR\System.Text.Encoding.Extensions.dll"
  Delete "$INSTDIR\System.Text.Encoding.dll"
  Delete "$INSTDIR\System.Text.Encoding.CodePages.dll"
  Delete "$INSTDIR\System.ServiceProcess.dll"
  Delete "$INSTDIR\System.ServiceModel.Web.dll"
  Delete "$INSTDIR\System.Security.SecureString.dll"
  Delete "$INSTDIR\System.Security.Principal.Windows.dll"
  Delete "$INSTDIR\System.Security.Principal.dll"
  Delete "$INSTDIR\System.Security.Permissions.dll"
  Delete "$INSTDIR\System.Security.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Xml.dll"
  Delete "$INSTDIR\System.Security.Cryptography.X509Certificates.dll"
  Delete "$INSTDIR\System.Security.Cryptography.ProtectedData.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Primitives.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Pkcs.dll"
  Delete "$INSTDIR\System.Security.Cryptography.OpenSsl.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Encoding.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Csp.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Cng.dll"
  Delete "$INSTDIR\System.Security.Cryptography.Algorithms.dll"
  Delete "$INSTDIR\System.Security.Claims.dll"
  Delete "$INSTDIR\System.Security.AccessControl.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Xml.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Primitives.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Json.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.Formatters.dll"
  Delete "$INSTDIR\System.Runtime.Serialization.dll"
  Delete "$INSTDIR\System.Runtime.Numerics.dll"
  Delete "$INSTDIR\System.Runtime.Loader.dll"
  Delete "$INSTDIR\System.Runtime.Intrinsics.dll"
  Delete "$INSTDIR\System.Runtime.InteropServices.RuntimeInformation.dll"
  Delete "$INSTDIR\System.Runtime.InteropServices.dll"
  Delete "$INSTDIR\System.Runtime.Handles.dll"
  Delete "$INSTDIR\System.Runtime.Extensions.dll"
  Delete "$INSTDIR\System.Runtime.dll"
  Delete "$INSTDIR\System.Runtime.CompilerServices.VisualC.dll"
  Delete "$INSTDIR\System.Runtime.CompilerServices.Unsafe.dll"
  Delete "$INSTDIR\System.Resources.Writer.dll"
  Delete "$INSTDIR\System.Resources.ResourceManager.dll"
  Delete "$INSTDIR\System.Resources.Reader.dll"
  Delete "$INSTDIR\System.Resources.Extensions.dll"
  Delete "$INSTDIR\System.Reflection.TypeExtensions.dll"
  Delete "$INSTDIR\System.Reflection.Primitives.dll"
  Delete "$INSTDIR\System.Reflection.Metadata.dll"
  Delete "$INSTDIR\System.Reflection.Extensions.dll"
  Delete "$INSTDIR\System.Reflection.Emit.Lightweight.dll"
  Delete "$INSTDIR\System.Reflection.Emit.ILGeneration.dll"
  Delete "$INSTDIR\System.Reflection.Emit.dll"
  Delete "$INSTDIR\System.Reflection.dll"
  Delete "$INSTDIR\System.Reflection.DispatchProxy.dll"
  Delete "$INSTDIR\System.Reactive.dll"
  Delete "$INSTDIR\System.Private.Xml.Linq.dll"
  Delete "$INSTDIR\System.Private.Xml.dll"
  Delete "$INSTDIR\System.Private.Uri.dll"
  Delete "$INSTDIR\System.Private.DataContractSerialization.dll"
  Delete "$INSTDIR\System.Private.CoreLib.dll"
  Delete "$INSTDIR\System.Printing.dll"
  Delete "$INSTDIR\System.ObjectModel.dll"
  Delete "$INSTDIR\System.Numerics.Vectors.dll"
  Delete "$INSTDIR\System.Numerics.dll"
  Delete "$INSTDIR\System.Net.WebSockets.dll"
  Delete "$INSTDIR\System.Net.WebSockets.Client.dll"
  Delete "$INSTDIR\System.Net.WebProxy.dll"
  Delete "$INSTDIR\System.Net.WebHeaderCollection.dll"
  Delete "$INSTDIR\System.Net.WebClient.dll"
  Delete "$INSTDIR\System.Net.Sockets.dll"
  Delete "$INSTDIR\System.Net.ServicePoint.dll"
  Delete "$INSTDIR\System.Net.Security.dll"
  Delete "$INSTDIR\System.Net.Requests.dll"
  Delete "$INSTDIR\System.Net.Quic.dll"
  Delete "$INSTDIR\System.Net.Primitives.dll"
  Delete "$INSTDIR\System.Net.Ping.dll"
  Delete "$INSTDIR\System.Net.NetworkInformation.dll"
  Delete "$INSTDIR\System.Net.NameResolution.dll"
  Delete "$INSTDIR\System.Net.Mail.dll"
  Delete "$INSTDIR\System.Net.HttpListener.dll"
  Delete "$INSTDIR\System.Net.Http.Json.dll"
  Delete "$INSTDIR\System.Net.Http.dll"
  Delete "$INSTDIR\System.Net.dll"
  Delete "$INSTDIR\System.Memory.dll"
  Delete "$INSTDIR\System.Linq.Queryable.dll"
  Delete "$INSTDIR\System.Linq.Parallel.dll"
  Delete "$INSTDIR\System.Linq.Expressions.dll"
  Delete "$INSTDIR\System.Linq.dll"
  Delete "$INSTDIR\System.IO.UnmanagedMemoryStream.dll"
  Delete "$INSTDIR\System.IO.Pipes.dll"
  Delete "$INSTDIR\System.IO.Pipes.AccessControl.dll"
  Delete "$INSTDIR\System.IO.Packaging.dll"
  Delete "$INSTDIR\System.IO.MemoryMappedFiles.dll"
  Delete "$INSTDIR\System.IO.IsolatedStorage.dll"
  Delete "$INSTDIR\System.IO.FileSystem.Watcher.dll"
  Delete "$INSTDIR\System.IO.FileSystem.Primitives.dll"
  Delete "$INSTDIR\System.IO.FileSystem.DriveInfo.dll"
  Delete "$INSTDIR\System.IO.FileSystem.dll"
  Delete "$INSTDIR\System.IO.FileSystem.AccessControl.dll"
  Delete "$INSTDIR\System.IO.dll"
  Delete "$INSTDIR\System.IO.Compression.ZipFile.dll"
  Delete "$INSTDIR\System.IO.Compression.Native.dll"
  Delete "$INSTDIR\System.IO.Compression.FileSystem.dll"
  Delete "$INSTDIR\System.IO.Compression.dll"
  Delete "$INSTDIR\System.IO.Compression.Brotli.dll"
  Delete "$INSTDIR\System.Globalization.Extensions.dll"
  Delete "$INSTDIR\System.Globalization.dll"
  Delete "$INSTDIR\System.Globalization.Calendars.dll"
  Delete "$INSTDIR\System.Formats.Asn1.dll"
  Delete "$INSTDIR\System.Dynamic.Runtime.dll"
  Delete "$INSTDIR\System.Drawing.Primitives.dll"
  Delete "$INSTDIR\System.Drawing.dll"
  Delete "$INSTDIR\System.Drawing.Design.dll"
  Delete "$INSTDIR\System.Drawing.Common.dll"
  Delete "$INSTDIR\System.dll"
  Delete "$INSTDIR\System.DirectoryServices.dll"
  Delete "$INSTDIR\System.Diagnostics.Tracing.dll"
  Delete "$INSTDIR\System.Diagnostics.TraceSource.dll"
  Delete "$INSTDIR\System.Diagnostics.Tools.dll"
  Delete "$INSTDIR\System.Diagnostics.TextWriterTraceListener.dll"
  Delete "$INSTDIR\System.Diagnostics.StackTrace.dll"
  Delete "$INSTDIR\System.Diagnostics.Process.dll"
  Delete "$INSTDIR\System.Diagnostics.PerformanceCounter.dll"
  Delete "$INSTDIR\System.Diagnostics.FileVersionInfo.dll"
  Delete "$INSTDIR\System.Diagnostics.EventLog.dll"
  Delete "$INSTDIR\System.Diagnostics.DiagnosticSource.dll"
  Delete "$INSTDIR\System.Diagnostics.Debug.dll"
  Delete "$INSTDIR\System.Diagnostics.Contracts.dll"
  Delete "$INSTDIR\System.Design.dll"
  Delete "$INSTDIR\System.Data.dll"
  Delete "$INSTDIR\System.Data.DataSetExtensions.dll"
  Delete "$INSTDIR\System.Data.Common.dll"
  Delete "$INSTDIR\System.Core.dll"
  Delete "$INSTDIR\System.Console.dll"
  Delete "$INSTDIR\System.Configuration.dll"
  Delete "$INSTDIR\System.Configuration.ConfigurationManager.dll"
  Delete "$INSTDIR\System.ComponentModel.TypeConverter.dll"
  Delete "$INSTDIR\System.ComponentModel.Primitives.dll"
  Delete "$INSTDIR\System.ComponentModel.EventBasedAsync.dll"
  Delete "$INSTDIR\System.ComponentModel.dll"
  Delete "$INSTDIR\System.ComponentModel.DataAnnotations.dll"
  Delete "$INSTDIR\System.ComponentModel.Annotations.dll"
  Delete "$INSTDIR\System.Collections.Specialized.dll"
  Delete "$INSTDIR\System.Collections.NonGeneric.dll"
  Delete "$INSTDIR\System.Collections.Immutable.dll"
  Delete "$INSTDIR\System.Collections.dll"
  Delete "$INSTDIR\System.Collections.Concurrent.dll"
  Delete "$INSTDIR\System.CodeDom.dll"
  Delete "$INSTDIR\System.Buffers.dll"
  Delete "$INSTDIR\System.AppContext.dll"
  Delete "$INSTDIR\Serilog.Sinks.File.dll"
  Delete "$INSTDIR\Serilog.Sinks.Async.dll"
  Delete "$INSTDIR\Serilog.dll"
  Delete "$INSTDIR\ReachFramework.dll"
  Delete "$INSTDIR\PresentationUI.dll"
  Delete "$INSTDIR\PresentationNative_cor3.dll"
  Delete "$INSTDIR\PresentationFramework.Royale.dll"
  Delete "$INSTDIR\PresentationFramework.Luna.dll"
  Delete "$INSTDIR\PresentationFramework.dll"
  Delete "$INSTDIR\PresentationFramework.Classic.dll"
  Delete "$INSTDIR\PresentationFramework.AeroLite.dll"
  Delete "$INSTDIR\PresentationFramework.Aero2.dll"
  Delete "$INSTDIR\PresentationFramework.Aero.dll"
  Delete "$INSTDIR\PresentationFramework-SystemXmlLinq.dll"
  Delete "$INSTDIR\PresentationFramework-SystemXml.dll"
  Delete "$INSTDIR\PresentationFramework-SystemDrawing.dll"
  Delete "$INSTDIR\PresentationFramework-SystemData.dll"
  Delete "$INSTDIR\PresentationFramework-SystemCore.dll"
  Delete "$INSTDIR\PresentationCore.dll"
  Delete "$INSTDIR\PenImc_cor3.dll"
  Delete "$INSTDIR\netstandard.dll"
  Delete "$INSTDIR\msquic.dll"
  Delete "$INSTDIR\mscorrc.dll"
  Delete "$INSTDIR\mscorlib.dll"
  Delete "$INSTDIR\mscordbi.dll"
  Delete "$INSTDIR\mscordaccore_amd64_amd64_6.0.21.52210.dll"
  Delete "$INSTDIR\mscordaccore.dll"
  Delete "$INSTDIR\Microsoft.Xaml.Behaviors.dll"
  Delete "$INSTDIR\Microsoft.Windows.SDK.NET.dll"
  Delete "$INSTDIR\Microsoft.Win32.SystemEvents.dll"
  Delete "$INSTDIR\Microsoft.Win32.Registry.dll"
  Delete "$INSTDIR\Microsoft.Win32.Registry.AccessControl.dll"
  Delete "$INSTDIR\Microsoft.Win32.Primitives.dll"
  Delete "$INSTDIR\Microsoft.VisualBasic.Forms.dll"
  Delete "$INSTDIR\Microsoft.VisualBasic.dll"
  Delete "$INSTDIR\Microsoft.VisualBasic.Core.dll"
  Delete "$INSTDIR\Microsoft.Toolkit.Mvvm.dll"
  Delete "$INSTDIR\Microsoft.DiaSymReader.Native.amd64.dll"
  Delete "$INSTDIR\Microsoft.CSharp.dll"
  Delete "$INSTDIR\ICSharpCode.SharpZipLib.dll"
  Delete "$INSTDIR\HtmlAgilityPack.dll"
  Delete "$INSTDIR\hostpolicy.dll"
  Delete "$INSTDIR\hostfxr.dll"
  Delete "$INSTDIR\HandyControl.dll"
  Delete "$INSTDIR\en\HandyControl.resources.dll"
  Delete "$INSTDIR\DynamicData.dll"
  Delete "$INSTDIR\DirectWriteForwarder.dll"
  Delete "$INSTDIR\dbgshim.dll"
  Delete "$INSTDIR\D3DCompiler_47_cor3.dll"
  Delete "$INSTDIR\createdump.exe"
  Delete "$INSTDIR\coreclr.dll"
  Delete "$INSTDIR\clrjit.dll"
  Delete "$INSTDIR\clretwrc.dll"
  Delete "$INSTDIR\api-ms-win-crt-utility-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-time-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-string-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-stdio-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-runtime-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-process-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-private-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-multibyte-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-math-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-locale-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-heap-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-filesystem-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-environment-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-convert-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-conio-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-util-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-timezone-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-sysinfo-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-synch-l1-2-0.dll"
  Delete "$INSTDIR\api-ms-win-core-synch-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-string-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-rtlsupport-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-profile-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-processthreads-l1-1-1.dll"
  Delete "$INSTDIR\api-ms-win-core-processthreads-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-processenvironment-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-namedpipe-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-memory-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-localization-l1-2-0.dll"
  Delete "$INSTDIR\api-ms-win-core-libraryloader-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-interlocked-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-heap-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-handle-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-file-l2-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-file-l1-2-0.dll"
  Delete "$INSTDIR\api-ms-win-core-file-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-errorhandling-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-debug-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-datetime-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-console-l1-2-0.dll"
  Delete "$INSTDIR\api-ms-win-core-console-l1-1-0.dll"
  Delete "$INSTDIR\Accessibility.dll"

  Delete "$SMPROGRAMS\WSATools\Uninstall.lnk"
  Delete "$DESKTOP\WSATools.lnk"
  Delete "$SMPROGRAMS\WSATools\WSATools.lnk"

  RMDir "$SMPROGRAMS\WSATools"
  RMDir "$INSTDIR\zh-Hans"
  RMDir "$INSTDIR\en"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd