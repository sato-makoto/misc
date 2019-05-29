#!/usr/bin/env pwsh

$first, $last = 1, 50

$fb, $b, $f = 15, 5, 3

while ($first -le $last) {
  if ($first % $fb -eq 0) {
     Write-Output fizzbuzz
  }
  elseif ($first % $b -eq 0) {
     Write-Output buzz
  }
  elseif ($first % $f -eq 0) {
     Write-Output fizz
  }
  else {
     Write-Output $first
  }
  $first += 1
}
