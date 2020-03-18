!pip2 install -r req.txt

!pip list

# Run a specific task by uncommenting corresponding line 

# Run Facescrub
# python ./discogan/image_translation.py --task_name='facescrub' --batch_size=500

!python2.7 ./datasets/download.py celebA

#Run CelebA (blond to black hair, only female)
!python ./discogan/image_translation.py --task_name='celebA' --style_A='Blond_Hair' --style_B='Black_Hair' --constraint='Male' --constraint_type='-1' --batch_size=500

# Run CelebA (male to female)
!python ./discogan/image_translation.py --task_name='celebA' --style_A='Male' --batch_size=500

# Run Edges2Handbags
# python ./discogan/image_translation.py --task_name='edges2handbags' --batch_size=500

# Run Edges2Shoes
# python ./discogan/image_translation.py --task_name='edges2shoes' --batch_size=500

# Run Shoes2Handbags
# python ./discogan/image_translation.py --task_name='shoes2handbags' --starting_rate=0.5 --batch_size=500

!python2.7 ./datasets/download.py edges2handbags
#split into train and val

!python2.7 ./datasets/download.py edges2shoes

#Run Handbags2Shoes
!python2.7 ./discogan/image_translation.py --task_name='handbags2shoes' --batch_size=500

# Run Car2Car
# python ./discogan/angle_pairing.py --task_name='car2car' --batch_size=500

# Run Face2Face
# python ./discogan/angle_pairing.py --task_name='face2face' --batch_size=500

# Run Chair2Car
# python ./discogan/angle_pairing.py --task_name='chair2car' --batch_size=500

# Run Chair2Face
# python ./discogan/angle_pairing.py --task_name='chair2face' --batch_size=500

# Run Car2Face
# python ./discogan/angle_pairing.py --task_name='car2face' --batch_size=500

#Run cats2pandas
#handbag2shoes shape: (3, 64, 64)
!python2.7 ./discogan/image_translation.py --task_name='cats2pandas' --batch_size=100 > train.txt

# + active=""
# print('foo')
# -


