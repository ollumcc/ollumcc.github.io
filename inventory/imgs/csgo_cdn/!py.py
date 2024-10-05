import os

def rename_files(folder_path):
    for filename in os.listdir(folder_path):
        if os.path.isfile(os.path.join(folder_path, filename)):
            # Find the position of the first dot
            first_dot = filename.find('.')
            if first_dot != -1:
                # Find the position of the last dot (for the file extension)
                last_dot = filename.rfind('.')
                if last_dot != -1 and last_dot != first_dot:
                    # Create the new filename
                    new_filename = filename[:first_dot] + filename[last_dot:]
                    
                    # Rename the file
                    old_path = os.path.join(folder_path, filename)
                    new_path = os.path.join(folder_path, new_filename)
                    os.rename(old_path, new_path)
                    print(f"Renamed: {filename} -> {new_filename}")

# Usage
folder_path = r'C:\Users\Classic\Desktop\CS_GO Skin CDN Images Viewer_files'
rename_files(folder_path)