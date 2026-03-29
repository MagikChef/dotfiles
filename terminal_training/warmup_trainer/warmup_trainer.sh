#!/usr/bin/env bash

function expect_cmd () {
  local expected="$1"
  local hint="$2"
  local usercmd=""
  while true; do
    echo -ne "?  "
    read -r usercmd
    if [[ "$usercmd" == "$expected" ]]; then
      eval $usercmd
      echo ""
      break
    else
      echo -e " X  Not quite. Hint: $hint"
    fi
  done
}

clear
echo "============================================"
echo "  WELCOME TO YOUR TERMINAL WARM-UP SESSION"
echo "============================================"
echo ""

echo "1) Print your current directory."
expect_cmd "pwd" "The command starts with 'p'."

echo "2) List the directory contents in long format."
expect_cmd "ls -l" "Try 'ls' with a dash option."

echo "3) Create a folder named 'warmup_test'."
expect_cmd "mkdir warmup_test" "Use 'mkdir'."

echo "4) Navigate to the folder named 'warmup-test'."
expect_cmd "cd warmup_test" "Remember the directory routes'."

echo "5) Create two dummy files 'sword.txt' 'shield.txt'."
expect_cmd "touch sword.txt shield.txt" "Remember 'touch' command makes blanks."

echo "6) Confirm they're there and check their permissions."
expect_cmd "ls -l" "Try 'ls' with a dash option."

echo "7) Add text 'Eriks daily practice!' into the sword file."
expect_cmd "echo 'Erik's daily practice' > sword.txt"

echo "8) View the contents of the sword file."
expect_cmd "cat sword.txt" "Think of a curious kitty."

echo "9) Create a symbolic link to the sword file."
expect_cmd "ln -s sword.txt magic.txt"

echo "10) Give execute permissions to the shield file."
expect_cmd "chmod +x shield.txt"

 if [[ -d ~/terminal_training ]]; then
   echo "Warm-up complete: $(date)" >> ~/terminal_training/practice_log.txt
   echo "Logged completion to ~/terminal_training/practice_log.txt"
 fi

