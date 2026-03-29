#!/bin/bash

echo "==============================="
echo "📂 NAVIGATION BASICS - TRAINING"
echo "==============================="
echo
echo "Welcome, trainee! Let's sharpen your terminal navigation skills."
echo
echo "🎯 Objectives:"
echo "  1. Use 'cd' to move between directories"
echo "  2. Use 'ls' to list what's inside"
echo "  3. Use '-a' to see hidden files"
echo "  4. Use '-l' to get detailed info"
echo "  5. Use 'file' to identify file types"
echo "  6. Use 'less' to explore files"
echo

echo "🗺️  Setting up your training grounds..."
mkdir -p home_base/.hidden_area
touch home_base/readme.txt home_base/.secret_file
echo "This is your main hub area." > home_base/readme.txt
echo "You've found a hidden message!" > home_base/.secret_file

echo "🌟 All set! Start your training:"
echo
echo "Step 1: Run 'cd home_base' to enter the main hub."
echo "Step 2: Run 'ls' to see what's there."
echo "Step 3: Run 'ls -a' to see hidden files too."
echo "Step 4: Run 'ls -l' for more details."
echo "Step 5: Run 'file readme.txt' and 'file .secret_file'"
echo "Step 6: Run 'less readme.txt'"
echo
echo "🎉 Great job! When you're done, type 'cd ..' to return to the navigation base."
