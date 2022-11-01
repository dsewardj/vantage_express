select
'tdload ' ||
-- Database IP address
'-h 192.168.0.195 ' ||
-- User credentials
'-u dbc -p dbc ' ||
-- Working database
'--TargetWorkingDatabase AdventureWorksDW2019 ' ||
-- Column delimiter and character set
'-d TAB -c UTF8 ' ||
-- Filepath
'-f C:\flat_files\' || tbl.TableName || '.csv ' ||
-- Table name
'-t AdventureWorksDW2019.' || tbl.TableName || ';' as easyloader_script
from dbc.tablesv as tbl
where tbl.DatabaseName = 'AdventureWorksDW2019'
 and tbl.TableKind = 'T'
order by tbl.TableName
;
