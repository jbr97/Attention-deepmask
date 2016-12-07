array=(1 2 2 2 3 3 3 4 4 4)
start=0

export CUDA_VISIBLE_DEVICES=0,1,2,3

for ((i=0;i<${#array[@]};++i)); do
  {
    let pl=i*500+start
    th evalPerImage.lua -gpu ${array[$i]} -datadir data/images -startAt $[$pl+1] -endAt $[$pl+500] exps/deepmask/exp
  }&
done
wait
exit 0
