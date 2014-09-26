program DoxBox;

uses
  Forms,
  FreeOTFEfrmMain in 'FreeOTFEfrmMain.pas' {frmFreeOTFEMain},
  FreeOTFEConsts in 'FreeOTFEConsts.pas',
  FreeOTFEfrmVolProperties in 'FreeOTFEfrmVolProperties.pas' {frmFreeOTFEVolProperties},
  FreeOTFEfrmSelectOverwriteMethod in 'FreeOTFEfrmSelectOverwriteMethod.pas' {frmFreeOTFESelectOverwriteMethod},
  CommonfrmCDBBackupRestore in '..\common\CommonfrmCDBBackupRestore.pas' {frmCDBBackupRestore},
  CommonSettings in '..\common\CommonSettings.pas',
  CommonfrmOptions in '..\common\CommonfrmOptions.pas' {frmOptions},
  Windows,
  CommonfrmGridReport in '..\common\CommonfrmGridReport.pas' {frmGridReport},
  CommonfrmGridReport_Hash in '..\common\CommonfrmGridReport_Hash.pas' {frmGridReport_Hash},
  CommonfrmGridReport_Cypher in '..\common\CommonfrmGridReport_Cypher.pas' {frmGridReport_Cypher},
  CommonfmeOptions_Base in '..\common\CommonfmeOptions_Base.pas' {fmeOptions_Base: TFrame},
  FreeOTFEfmeOptions_SystemTray in 'FreeOTFEfmeOptions_SystemTray.pas' {fmeOptions_SystemTray: TFrame},
  FreeOTFEfmeOptions_Hotkeys in 'FreeOTFEfmeOptions_Hotkeys.pas' {fmeOptions_Hotkeys: TFrame},
  CommonfmeOptions_PKCS11 in '..\common\CommonfmeOptions_PKCS11.pas' {fmeOptions_PKCS11: TFrame},
  FreeOTFEfmeOptions_General in 'FreeOTFEfmeOptions_General.pas' {fmeOptions_FreeOTFEGeneral: TFrame},
  CommonfrmInstallOnUSBDrive in '..\common\CommonfrmInstallOnUSBDrive.pas' {frmInstallOnUSBDrive},
  CommonfrmAbout in '..\common\CommonfrmAbout.pas' {frmAbout},
  FreeOTFESettings in 'FreeOTFESettings.pas',
  CommonfrmMain in '..\common\CommonfrmMain.pas' {frmMain},
  FreeOTFEfrmOptions in 'FreeOTFEfrmOptions.pas' {frmOptions_FreeOTFE},
  FreeOTFEfmeOptions_Base in 'FreeOTFEfmeOptions_Base.pas' {fmeFreeOTFEOptions_Base: TFrame},
  CommonfrmVersionCheck in '..\common\CommonfrmVersionCheck.pas' {frmVersionCheck},
  FreeOTFEfmeOptions_Advanced in 'FreeOTFEfmeOptions_Advanced.pas' {fmeOptions_FreeOTFEAdvanced: TFrame},
  CommonConsts in '..\common\CommonConsts.pas',
  CommonfrmCDBDump_LUKS in '..\common\CommonfrmCDBDump_LUKS.pas' {frmCDBDump_LUKS},
  CommonfrmCDBDump_Base in '..\common\CommonfrmCDBDump_Base.pas' {frmCDBDump_Base},
  CommonfrmCDBDump_FreeOTFE in '..\common\CommonfrmCDBDump_FreeOTFE.pas' {frmCDBDump_FreeOTFE},
  SDUForms in '..\common\SDUForms.pas' {SDUForm},
  SDUFrames in '..\common\SDUFrames.pas' {SDUFrame: TFrame},
  SDPartitionImage in '..\common\Filesystem\SDPartitionImage.pas',
  SDPartitionImage_File in '..\common\Filesystem\SDPartitionImage_File.pas',
  SDUProgressDlg in '..\common\SDeanUtils\SDUProgressDlg.pas' {SDUProgressDialog},
  SDUDiskPropertiesDlg in '..\common\SDeanUtils\SDUDiskPropertiesDlg.pas' {SDUDiskPropertiesDialog},
  SDUFilenameEdit_U in '..\common\SDeanUtils\SDUFilenameEdit_U.pas' {SDUFilenameEdit: TFrame},
  SDUPartitionPropertiesDlg in '..\common\SDeanUtils\SDUPartitionPropertiesDlg.pas' {SDUPartitionPropertiesDialog},
  SDUMRUList in '..\common\SDeanUtils\SDUMRUList.pas',
  SDURegistry in '..\common\SDeanUtils\SDURegistry.pas',
  SDUi18n in '..\common\SDeanUtils\SDUi18n.pas',
  gnugettext in '..\..\..\..\tools\gnugettext.pas',
  SDUGeneral in '..\common\SDeanUtils\SDUGeneral.pas',
  SDFilesystem in '..\common\Filesystem\SDFilesystem.pas',
  SDFilesystem_FAT in '..\common\Filesystem\SDFilesystem_FAT.pas',
  CommonfmeOptions_Autorun in '..\common\CommonfmeOptions_Autorun.pas' {fmeOptions_Autorun: TFrame},
  FreeOTFEDLLCypherAPI in '..\common\OTFE\OTFEFreeOTFE\FreeOTFEDLLCypherAPI.pas',
  FreeOTFEDLLHashAPI in '..\common\OTFE\OTFEFreeOTFE\FreeOTFEDLLHashAPI.pas',
  FreeOTFEDLLMainAPI in '..\common\OTFE\OTFEFreeOTFE\FreeOTFEDLLMainAPI.pas',
  OTFEFreeOTFE_fmeSelectPartition in '..\common\OTFE\OTFEFreeOTFE\OTFEFreeOTFE_fmeSelectPartition.pas' {fmeSelectPartition: TFrame},
  OTFEFreeOTFE_frmKeyEntryFreeOTFE in '..\common\OTFE\OTFEFreeOTFE\OTFEFreeOTFE_frmKeyEntryFreeOTFE.pas' {frmKeyEntryFreeOTFE},
  OTFEFreeOTFE_frmKeyEntryLinux in '..\common\OTFE\OTFEFreeOTFE\OTFEFreeOTFE_frmKeyEntryLinux.pas' {frmKeyEntryLinux},
  OTFEFreeOTFE_frmKeyEntryLUKS in '..\common\OTFE\OTFEFreeOTFE\OTFEFreeOTFE_frmKeyEntryLUKS.pas' {frmKeyEntryLUKS},
  OTFEFreeOTFE_frmWizard in '..\common\OTFE\OTFEFreeOTFE\OTFEFreeOTFE_frmWizard.pas' {frmWizard},
  OTFEFreeOTFE_frmWizardChangePasswordCreateKeyfile in '..\common\OTFE\OTFEFreeOTFE\OTFEFreeOTFE_frmWizardChangePasswordCreateKeyfile.pas' {frmWizardChangePasswordCreateKeyfile},
  OTFEFreeOTFE_frmWizardCreateVolume in '..\common\OTFE\OTFEFreeOTFE\OTFEFreeOTFE_frmWizardCreateVolume.pas' {frmWizardCreateVolume},
  OTFEFreeOTFE_frmWizardCreateVolumeAdvanced in '..\common\OTFE\OTFEFreeOTFE\OTFEFreeOTFE_frmWizardCreateVolumeAdvanced.pas' {frmWizardCreateVolumeAdvanced},
  OTFEFreeOTFE_WizardCommon in '..\common\OTFE\OTFEFreeOTFE\OTFEFreeOTFE_WizardCommon.pas';

{$R *.RES}

var
  otherRunningAppWindow: THandle;
  CommandLineOnly: boolean;
  cmdExitCode: eCmdLine_Exit;
  settingsFilename: string;
{$IF CompilerVersion >= 18.5}
  // Delphi 7 doesn't need this, but Delphi 2007 (and 2006 as well? Not
  // checked...) need this to honor any "Run minimised" option set in any
  // launching MS Windows shortcut
  sui: TStartUpInfo;
{$IFEND}

begin
  GLOBAL_VAR_WM_FREEOTFE_RESTORE := RegisterWindowMessage('FREEOTFE_RESTORE');
  GLOBAL_VAR_WM_FREEOTFE_REFRESH := RegisterWindowMessage('FREEOTFE_REFRESH');

  Application.Initialize;

{$IF CompilerVersion >= 15.0}
  // Vista fix for Delphi 2007 and later
  Application.MainFormOnTaskbar := TRUE;
{$IFEND}
  Application.Title := 'DoxBox';

  FreeOTFESettings.Settings:= TFreeOTFESettings.Create();
  try
    CommonSettings.CommonSettingsObj := FreeOTFESettings.Settings;
    if SDUCommandLineParameter(CMDLINE_SETTINGSFILE, settingsFilename) then
      begin
      settingsFilename := SDURelativePathToAbsolute(settingsFilename);
      FreeOTFESettings.Settings.CustomLocation := settingsFilename;
      end;

    FreeOTFESettings.Settings.Load();

    Application.ShowMainForm := FALSE;
    // NOTE: The main form's Visible property is set to FALSE anyway - it *HAS*
    // to be, otherwise it'll be displayed; dispite the following two lines
    Application.CreateForm(TfrmFreeOTFEMain, frmFreeOTFEMain);
  frmFreeOTFEMain.Visible := FALSE;
    Application.ShowMainForm := FALSE;

    CommandLineOnly := frmFreeOTFEMain.HandleCommandLineOpts(cmdExitCode);


    //   if we were called with no command line arguments then
    //     if no running app was found then
    //       we continue to run the main app
    //     else
    //       we raise the previous application to the top
    //   else
    //     quit (ran with command line arguments)

    // if we were called with no command line arguments then
    if (not(CommandLineOnly)) then
      begin
      otherRunningAppWindow := SDUDetectExistingApp();
      // If no running app was found then
      if (
          (otherRunningAppWindow = 0) or
          Settings.OptAllowMultipleInstances
         ) then
        begin
        // We continue to run the main app
        frmFreeOTFEMain.Visible := TRUE;
        Application.ShowMainForm := TRUE;
        frmFreeOTFEMain.InitApp();

{$IF CompilerVersion >= 18.5}
        // Delphi 7 doesn't need this, but Delphi 2007 (and 2006 as well? Not
        // checked...) need this to honor any "Run minimised" option set in any
        // launching MS Windows shortcut
        GetStartUpInfo(sui);
        if ((sui.dwFlags and STARTF_USESHOWWINDOW) > 0) then
          begin
          if (
//              (sui.wShowWindow = SW_FORCEMINIMIZE) or
              (sui.wShowWindow = SW_HIDE) or
              (sui.wShowWindow = SW_MINIMIZE) or
              (sui.wShowWindow = SW_SHOWMINIMIZED) or
              (sui.wShowWindow = SW_SHOWMINNOACTIVE)
             ) then
            begin
            Application.Minimize();
            end;

          // *Should* have a corresponding check for SW_MAXIMIZE / SW_SHOWMAXIMIZED
          // here, but not a priority...
          end;
{$IFEND}
        if SDUCommandLineSwitch(CMDLINE_MINIMIZE) then
          begin
          Application.Minimize();
          end;

        Application.Run;
        end
      else
        begin
        // Poke already running application
{$IF CompilerVersion >= 18.5}
        SendMessage(HWND_BROADCAST, GLOBAL_VAR_WM_FREEOTFE_RESTORE, 0, 0);
{$ELSE}
        SDUPostMessageExistingApp(GLOBAL_VAR_WM_FREEOTFE_RESTORE, 0, 0);
{$IFEND}

// Alternativly:
//         SetForegroundWindow(otherRunningAppWindow);
        end;
      end
    else
      begin
      // Do nothing; ran with command line arguments, already processed
      end;

  finally
    // Note: We *don't* free of the Settings object if the main form was shown;
    //       the main form is still closing down at this stage, and this causes
    //       an exception.
    //       Instead, this is free'd off in the FormDestroy(...) method
    if not(Application.ShowMainForm) then
      begin
      FreeOTFESettings.Settings.Free();
      end;
  end;

  if (
      CommandLineOnly and
      (cmdExitCode <> ceSUCCESS)
     ) then
    begin
    Halt(Integer(cmdExitCode)); // Note: System.ExitCode may be tested in finalization sections
    end;

END.
