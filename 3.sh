# NOTE: The following script was generated using ChatGPT [https://chat.openai.com/]
#!/bin/bash

# Set variables
base_directory="$1"
file_size_mb=5
files_per_directory=100
target_files=10000

# Function to create a directory with specified number of files and size
fill_dir() {
  local num_files="$1"
  local file_size_mb="$2"

  # Loop to create files with specified size
  for ((i = 1; i <= num_files; i++)); do
    file_name="./file_$i.txt"
    dd if=/dev/zero of="$file_name" bs=1048576 count="$file_size_mb" status=none
  done
}

# Function to create subdirectories recursively
create_subdirectories() {
  local parent_dir="$1"
  local files_per_directory="$2"
  local file_size_mb="$3"
  local target_files="$4"

  local total_files=0
  cd "$parent_dir"

  # Loop to create subdirectories until target file count is reached
  while [ "$total_files" -lt "$target_files" ]; do
    # Make a new subdirectory
    mkdir "subdir"
    # Change to that subdirector
    cd "subdir"
    # Fill with 100 file
    fill_dir "$files_per_directory" "$file_size_mb"
    total_files=$((total_files + files_per_directory))
    echo "Created $total_files total files."
  done
}

mkdir -p "$base_directory"

# Create subdirectories recursively
create_subdirectories "$base_directory" "$files_per_directory" "$file_size_mb" "$target_files"

echo "Script completed successfully."
