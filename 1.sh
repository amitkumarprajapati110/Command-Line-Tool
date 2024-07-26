# NOTE: The following script was generated using ChatGPT [https://chat.openai.com/]
#!/bin/bash

# Set variables
directory_name="$1"
num_files=100
file_size_mb=500

# Function to create a directory with specified number of files and size
create_directory() {
  local dir_name="$1"
  local num_files="$2"
  local file_size_mb="$3"

  # Create the directory if it doesn't exist
  mkdir -p "$dir_name"

  # Loop to create files with specified size
  for ((i = 1; i <= num_files; i++)); do
    file_name="$dir_name/file_$i.txt"
    dd if=/dev/zero of="$file_name" bs=1048576 count="$file_size_mb" status=none
    echo "File $i created in $dir_name"
  done
}

# Create the directory
create_directory "$directory_name" "$num_files" "$file_size_mb"

echo "Script completed successfully."
