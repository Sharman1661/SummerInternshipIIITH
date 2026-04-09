from ultralytics import YOLO
import os

model = YOLO('yolo26n.pt') 

results = model.predict(
    source='frames/', 
    save=True, 
    conf=0.25, 
    project='output', 
    name='detected_frames'
)

print("Inference complete. Check the 'output/detected_frames' folder.")