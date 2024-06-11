import cv2
import tensorflow as tf
import os
from tensorflow.keras.models import load_model
import numpy as np
import matplotlib.pyplot as plt
import time

from keras.models import Sequential
from keras.layers import Dense, Dropout, LSTM, BatchNormalization
from keras.callbacks import TensorBoard
from keras.callbacks import ModelCheckpoint
from keras.optimizers import Adam


answer = -1
counter = 0
new_model = tf.keras.models.load_model("RPPOOP_03.h5")

print("Please Enter the Dierctory: ", end="")
dir = input()
file = ""


def case0():
    return "African Violet"


def case1():
    return "Aloe Vera"


def case2():
    return "Boston Fern"


def case3():
    return "Devil's Ivy"


def case4():
    return "Weeping Fig"


def case5():
    return "Peace Lily"


def case6():
    return "Rubber Plant"


def case7():
    return "Snake Plant"


def case8():
    return "Spider Plant"


def case9():
    return "ZZ Plant"


def default_case():
    return "Error, Invalid Image Recognition!"


# Dictionary mapping case values to functions
switch = {
    0: case0,
    1: case1,
    2: case3,
    3: case3,
    4: case4,
    5: case5,
    6: case6,
    7: case7,
    8: case8,
    9: case9,
}

while True:
    counter += 1

    for file in os.listdir():
        if "big_daddy" in file:
            continue

        if ".txt" in file:
            continue

        if ".h5" in file:
            continue

        if ".spec" in file:
            continue

        if ".DS_Store" in file:
            continue

        if ".cph" in file:
            continue

        if ".ipynb_checkpoints" in file:
            continue

        print("File Name: ")
        print(file)

        # if "image_picker" in file:
        img = cv2.imread(file)
        resize = tf.image.resize(img, (256, 256))

        yhat = new_model.predict(np.expand_dims(resize / 255, 0))
        answer = np.argmax(yhat[0])

        os.remove(file)

        # Function to simulate switch-case
        def switch_case(case):
            return switch.get(case, default_case)()

        file_output = switch_case(answer)

        # Open a file for writing (create if not exists, overwrite if exists)
        with open(os.path.join(dir, "plant.txt"), "w") as f:
            # Write content to the file
            f.write(file_output)

    print("Polling")
    time.sleep(2)
    # print(counter)
    # if counter == 3:
    #     if os.path.exists(os.path.join(dir, "plant.txt")):
    #         os.remove(os.path.join(dir, "plant.txt"))
    #     counter = 0


# /Users/admin/Documents/Programming/My Projects/final_plant_app_2/assets/others/
