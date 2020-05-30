import os
import glob
import shutil
Current_Dir="/media/kankan/Backup/Test2/data";
Destination_Dir="/media/kankan/Backup/Test2/data1";
if os.path.exists(Destination_Dir):
    pass
else:
    os.mkdir(Destination_Dir)
for file in glob.glob(os.path.join(Current_Dir,"*.png")):
    title, ext = os.path.splitext(os.path.basename(file))
    if os.stat(os.path.join(Current_Dir, title + '.txt')).st_size:
        shutil.copy(os.path.join(Current_Dir,title+".png"),os.path.join(Destination_Dir,"ABC"+title+".png"))
        shutil.copy(os.path.join(Current_Dir,title+".txt"),os.path.join(Destination_Dir,"ABC"+title+".txt"))

