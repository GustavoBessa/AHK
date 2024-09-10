$op = $args[0]
try {
$result=$($op)
if($op -eq "change"){
   $device1 = "Alto-falantes (Logitech G432 Gaming Headset)"
   $device2 = "ASUS VG279Q1A (NVIDIA High Definition Audio)"
   # $device3 = "Alto-falantes (Dell USB Audio)"
   $result="change"

   $Audio = Get-AudioDevice -playback
   Write-Output "Audio device was " $Audio.Name
   Write-Output "Audio device now set to " 
   if ($Audio.Name.StartsWith($device1)) {
      (Get-AudioDevice -list | Where-Object Name -like ("$device2*") | Set-AudioDevice).Name
   }  Else {
      (Get-AudioDevice -list | Where-Object Name -like ("$device1*") | Set-AudioDevice).Name
   }

}elseif($op -eq "volume"){
   $result="Volume"
   $vlmode=$args[1]
   $vatual = [int](Get-AudioDevice -PlaybackVolume).TrimEnd('%')
   $volume = $vatual

   if($vlmode -eq "up" -and $vatual -lt (100)){
      $volume = $vatual+5
   }elseif($vlmode -eq "down" -and $vatual -gt 0){
      $volume = $vatual-5
   }
   
   Set-AudioDevice -PlaybackVolume $volume
   Write-Output $volume 
}

} catch {
    $result = $_.Exception.Message
}

# $horaFormatada = (Get-Date).ToString("dd/MM/yyyy HH:mm:ss")
# $scriptName = $MyInvocation.MyCommand.Name

# Add-Content -Path "log.txt" -Value "[$horaFormatada][$scriptName] : $result"