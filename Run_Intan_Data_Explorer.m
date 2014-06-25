%Run Intan Data Explorer
%Helper script that import data and runs GUI

choice=questdlg('Import Intan Data?','Yes','No');

if strcmp(choice,'Yes')
    clear
    read_Intan_RHD2000_file; %runs Intan Matlab import script
    %save('IntanData');
    D.amplifier_channels=amplifier_channels;
    D.amplifier_data=amplifier_data;
    D.file=file;
    D.frequency_parameters=frequency_parameters;
    D.notes=notes;
    D.path=path;
    D.spike_triggers=spike_triggers;
    D.t_amplifier=t_amplifier;
elseif strcmp(choice,'No')
    if exist('D','var')==0
        errordlg('No variable D defined in workspace! Aborting');
        return;
    end
    
elseif strcmp(choice,'Cancel')
    return;
end

Intan_Data_Explorer('UserData',D);
