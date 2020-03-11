set CUDA_VISIBLE_DEVICES=0
cd ..
python  train.py -data data/dial_bert ^
        -save_model tmp/dial_bert_12_layer ^
        -copy_attn ^
        -layers 12 ^
        -rnn_size 768 ^
        -word_vec_size 768 ^
        -transformer_ff 3072 ^
        -heads 12  ^
        -encoder_type bert ^
        -decoder_type transformer ^
        -position_encoding ^
        -train_steps 10000 ^
        -max_generator_batches 2 ^
        -dropout 0.1 ^
        -batch_size 64 ^
        -optim adam ^
        -adam_beta2 0.998 -decay_method noam ^
        -warmup_steps 1000 ^
        -learning_rate 0.5 ^
        -max_grad_norm 0 ^
        -param_init 0  ^
        -share_embeddings ^
        -param_init_glorot ^
        -label_smoothing 0.1 ^
        -valid_steps 300 ^
        -save_checkpoint_steps 300 ^
        -gpu_ranks 0 ^
        -copy_attn_force ^
        -seed 777 ^
        -copy_loss_by_seqlength ^
        -bridge