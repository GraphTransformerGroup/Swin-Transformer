python -m torch.distributed.launch --nproc_per_node 6 --master_port 12345 main.py \
  --cfg configs/swin_small_patch4_window7_224.yaml --batch-size 128 --output output/CIFAR100 \
  --accumulation-steps 2 --cache-mode part --use-checkpoint \
  --opts SAVE_FREQ 10 PRINT_FREQ 1 TRAIN.EPOCHS 30000 DATA.DATASET cifar100
