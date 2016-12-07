
local Gpu={1,1,4,4,6,6,7,7,8,8}
for i = 1,#Gpu do
  os.execute(string.format('th evalPerImage.lua -gpu %d -datadir data/images -startAt %d -endAt %d exps/deepmask/exp',Gpu[i],i*500-499,i*500))
end

