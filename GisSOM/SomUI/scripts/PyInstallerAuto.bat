SET pyInstallerOutDir=C:\path-to-output-dir\
::for example C:\path-to-python-installation-folder\Python39\dist\
SET solutionDir=C:\path-to-solution-root-folder\SomUI\
::NOTE: edit path on data_preparation_interactive.spec file as well.

Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\split_to_columns_interactive.py
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\draw_histogram_interactive.py
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\edit_column_interactive.py
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\combine_to_lrn_file_interactive.py  --hidden-import="sklearn.utils._typedefs" --hidden-import="sklearn.metrics._dist_metrics" --hidden-import="sklearn.neighbors._partition_nodes"
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\cluster_draw.py
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\cluster_save.py
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\cluster_wrap.py
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\nextsom_wrap.py
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\nextsom_plot.py
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\draw_scatterplots.py
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\nextsom_plot_dash.py
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\new_label_data.py
Echo y|python -m PyInstaller --onedir %solutionDir%%scripts\write_geotiff.py
Echo y|python -m PyInstaller --onedir data_preparation_interactive.spec

xcopy /s /y %pyInstallerOutDir%combine_to_lrn_file %solutionDir%scripts\w%Executables
xcopy /s /y %pyInstallerOutDir%combine_to_lrn_file %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%combine_to_lrn_file %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%draw_histogram %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%draw_histogram %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%draw_histogram %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%edit_column %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%edit_column %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%edit_column %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%split_to_columns %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%split_to_columns %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%split_to_columns %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%cluster_draw %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%cluster_draw %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%cluster_draw %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%cluster_save %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%cluster_save %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%cluster_save %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%cluster_wrap %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%cluster_wrap %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%cluster_wrap %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%nextsom_wrap %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%nextsom_wrap %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%nextsom_wrap %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%nextsom_plot %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%nextsom_plot %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%nextsom_plot %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%nextsom_plot_dash %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%nextsom_plot_dash %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%nextsom_plot_dash %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%draw_scatterplots %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%draw_scatterplots %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%draw_scatterplots %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%new_label_data %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%new_label_data %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%new_label_data %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%write_geotiff %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%write_geotiff %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%write_geotiff %solutiondir%bin\Release\scripts\Executables
xcopy /s /y %pyInstallerOutDir%data_preparation_interactive %solutionDir%scripts\Executables
xcopy /s /y %pyInstallerOutDir%data_preparation_interactive %solutiondir%bin\Debug\scripts\Executables
xcopy /s /y %pyInstallerOutDir%data_preparation_interactive %solutiondir%bin\Release\scripts\Executables

PAUSE 