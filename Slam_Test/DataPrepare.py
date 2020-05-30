import glob
import os
from PIL import Image
current_dir ="/home/kankan/Desktop/Test2/data"
# Percentage of images to be used for the valid set
percentage_test = 5;
# Create train.txt and valid.txt
file_train = open('train.txt', 'w')
file_test = open('valid.txt', 'w')
# Populate train.txt and valid.txt
counter = 1
print('hello')
for file in glob.glob(os.path.join(current_dir,'*.*')):
    print(file)
index_test = round(100 / percentage_test)
for file in glob.iglob(os.path.join(current_dir, '*.png')):
    title, ext = os.path.splitext(os.path.basename(file))
    # im1 = Image.open(file)
    # im1=im1.convert('RGB')
    # im1.save(current_dir + "/" + title + '.png')
    if counter == index_test:
        counter = 1
        file_test.write(current_dir + "/" + title + '.png' + "\n")
    else:
        file_train.write(current_dir + "/" + title + '.png' + "\n")
        counter = counter + 1
# #
#
# import glob
# import os
# import shutil
# current_dir ="/mnt/hdd2/dataset_CARLA"
# Final_Path="/mnt/hdd2/Final_Data"
#
# if not os.path.exists(Final_Path):
#     os.mkdir(Final_Path)
# # Percentage of images to be used for the valid set
# percentage_test = 10;
# # Create train.txt and valid.txt
# file_train = open('train.txt', 'w')
# file_test = open('valid.txt', 'w')
# # Populate train.txt and valid.txt
# counter = 1
#
# index_test = round(100 / percentage_test)
# for file in glob.iglob(os.path.join(current_dir, '*.jpg')):
#     title, ext = os.path.splitext(os.path.basename(file))
#     if os.stat(current_dir + "/" + title+'.txt').st_size==0:
#         pass
#     else:
#         try:
#             shutil.copy(current_dir + "/" + title + '.jpg', Final_Path + "/" + title + '.jpg')
#             shutil.copy(current_dir + "/" + title + '.txt', Final_Path + "/" + title + '.txt')
#         except:
#             print("File Copy Error:: ",title)
#         finally:
#             if counter == index_test:
#                 counter = 1
#                 file_test.write(Final_Path + "/" + title + '.jpg' + "\n")
#
#             else:
#                 file_train.write(Final_Path + "/" + title + '.jpg' + "\n")
#                 counter = counter + 1
#         # print("NonEmpty:: ",current_dir + "/" + title+'.txt')
#
#
