# Check if "bin" directory exists
if (!(Test-Path "bin")) {
    New-Item -ItemType Directory -Path "bin" | Out-Null
} else {
    Remove-Item "bin\*" -Force
}

# Compile source files into executables
g++ -g -O0 -I . -o "bin\interrupts_EP.exe" ".\interrupts_student1_student2_EP.cpp"
g++ -g -O0 -I . -o "bin\interrupts_RR.exe" ".\interrupts_student1_student2_RR.cpp"
g++ -g -O0 -I . -o "bin\interrupts_EP_RR.exe" ".\interrupts_student1_student2_EP_RR.cpp"