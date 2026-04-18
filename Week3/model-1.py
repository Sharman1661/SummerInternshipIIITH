from ultralytics import YOLO

model = YOLO('yolo26n.pt').to('mps') 

results = model.predict(
    source='RoadVid1.webm', 
    save=True, 
    conf=0.25,
    project='output1',
    name='video_inference'
)