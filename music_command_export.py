import os
from pathlib import Path

def main():
    name = ''
    category = ''
    list_of_categories = []
    format = "alias="+name+"'vlc /home/joris/Nextcloud/Musik/"+category+'/'+name+"'"
    tmp_cat = Path('/home/joris/Nextcloud/Musik') 
    for entry in tmp_cat.iterdir():
        if entry.is_dir():
            list_of_categories.append(entry.name)
    print(list_of_categories) 
    for current_category_in_list in list_of_categories:
        tmp_band = Path('/home/joris/Nextcloud/Musik/'+current_category_in_list)
        current_category_in_list = current_category_in_list.replace(" ", "_")
        current_category_in_list = current_category_in_list.replace("-", "_")
        for entry in tmp_band.iterdir():
            if entry.is_dir():
                folder_name = entry.name
                replaced_name = folder_name
                replaced_name = replaced_name.replace(" ", "_")
                replaced_name = replaced_name.replace("-", "_")
                folder_name = folder_name.replace(" ", "\ ") 
                name = folder_name
                category = current_category_in_list

                format = "alias "+replaced_name+"='vlc /home/joris/Nextcloud/Musik/"+category+'/'+name+"/'"
                print(format)
if __name__ == '__main__':
    main()
