        # {
        #     "name": "test",
        #     "type": "python",
        #     "request": "launch",
        #     "program": "train_per_second.py",
        #     "console": "integratedTerminal",
        #     "justMyCode": true,
        #     "args": [
        #         "-s", "tandt/truck", "--eval","-m","output/check_truck"
        #     ]
        # }

python train_per_second.py -s tandt/truck --eval -m output/truck_per_second_check_strict --port 6010 --save_iterations 30000
python render.py -m output/truck_per_second_check_strict --skip_train
python metrics.py -m output/truck_per_second_check_strict --skip_train

python train_per_second.py -s tandt/train --eval -m output/train_per_second_check_strict --port 6011 --save_iterations 30000
python render.py -m output/train_per_second_check_strict --skip_train
python metrics.py -m output/train_per_second_check_strict --skip_train

python train.py -s tandt/truck --eval -m output/truck_s --port 6010 --test_iterations 9054 --save_iterations 9054 --iterations 9054
python render.py -m output/truck_s --skip_train
python metrics.py -m output/truck_s --skip_train

python train.py -s tandt/train --eval -m output/train_s --port 6011 --test_iterations 12159 --save_iterations 12159 --iterations 12159
python render.py -m output/train_s --skip_train
python metrics.py -m output/train_s --skip_train


python train.py -s tandt/truck --eval -m output/truck_s_o --port 6012 --test_iterations 9054 --save_iterations 9054 --iterations 9054
python render.py -m output/truck_s_o --skip_train
python metrics.py -m output/truck_s_o --skip_train

python train.py -s tandt/train --eval -m output/train_s_o --port 6013 --test_iterations 12159 --save_iterations 12159 --iterations 12159
python render.py -m output/train_s_o --skip_train
python metrics.py -m output/train_s_o --skip_train