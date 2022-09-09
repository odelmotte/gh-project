$backlog = Import-Csv -Path "C:\temp\backlog.csv" -Delimiter ";"

$backlog | Select-Object Text, Category, 'Color Label'

# gh project list --org 'odelmotte'
# gh project list-columns -p PVT_kwDOBqa24c4AFzkd

$content = @"
Description :
Acceptance Criteria :
"@


$itemType = @{
    Epic = "15bd074a"
    Feature = "6faae29b"
    PBI = "4b1b4a08"
    Impediments = "cecf343d"
}

$sprint = @{
    "Sprint 1" = "63a91fe3"
    "Sprint 2" = "80e58e42"
    "Sprint 3" = "826216eb"
}

$backlog | Where-Object { $_.'Color label' -ne 'Notes' } | ForEach-Object {
    gh project create-card -o PVT_kwDOBqa24c4AFzkd -t "$($_.Text)" -l "$content" -r "zef" -c "zefn" -i ($sprint[$_.Category]) -ifd "PVTIF_lADOBqa24c4AFzkdzgDWLHE" -it ($itemType[$_.'Color Label']) -itd "PVTSSF_lADOBqa24c4AFzkdzgDWLHs"
}


# gh project create-card -o PVT_kwDOBqa24c4AFzkd -t "zeiflkzhne" -l "zeiohzoef / zeiohzoeifn  / ziehfoizef " -r "zef" -c "zefn" -i 63a91fe3 -ifd PVTIF_lADOBqa24c4AFzkdzgDWLHE -it 15bd074a -itd 15bd074a